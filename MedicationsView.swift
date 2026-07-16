//
//  MedicationsView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct MedicationsView: View {
    
    @Binding var profile: MedicalProfile
    
    @State private var showingAddMedication = false
    
    
    var body: some View {
        
        VStack {
            
            Text("Medications")
                .font(.title)
                .bold()
                .padding()
            
            
            // Header Row
            HStack {
                Text("Medication")
                    .bold()
                    .frame(maxWidth: .infinity)
                
                Text("Dosage")
                    .bold()
                    .frame(maxWidth: .infinity)
                
                Text("Frequency")
                    .bold()
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
            
            
            Divider()
            
            
            List {
                
                ForEach(profile.medications.indices, id: \.self) { index in
                    
                    HStack {
                        
                        Text(profile.medications[index].name)
                            .frame(maxWidth: .infinity)
                        
                        Text(profile.medications[index].dosage)
                            .frame(maxWidth: .infinity)
                        
                        Text(profile.medications[index].frequency)
                            .frame(maxWidth: .infinity)
                    }
                }
                .onDelete { index in
                    profile.medications.remove(atOffsets: index)
                }
            }
            
            
            Button {
                showingAddMedication = true
            } label: {
                Text("+ Add Medication")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            .padding(.horizontal)
            
            
            Button("Save & Exit") {
                
            }
            .padding()
        }
        .sheet(isPresented: $showingAddMedication) {
            AddMedicationView(profile: $profile)
        }
        .navigationTitle("Medications")
    }
}
