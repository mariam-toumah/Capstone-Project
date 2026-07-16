//
//  AllergiesView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct AllergiesView: View {
    
    @Binding var profile: MedicalProfile
    @State private var newAllergy = ""
    
    
    var body: some View {
        
        VStack {
            
            Text("Allergies")
                .font(.title)
                .bold()
            
            
            List {
                
                ForEach(profile.allergies, id: \.self) { allergy in
                    
                    Text(allergy)
                }
                .onDelete { index in
                    
                    profile.allergies.remove(atOffsets: index)
                }
                
                
                HStack {
                    
                    TextField("Add Allergy", text: $newAllergy)
                    
                    Button("+") {
                        
                        if !newAllergy.isEmpty {
                            profile.allergies.append(newAllergy)
                            newAllergy = ""
                        }
                    }
                }
            }
            
            
            Button("Save & Exit") {
                
            }
            .padding()
        }
        .navigationTitle("Allergies")
    }
}
