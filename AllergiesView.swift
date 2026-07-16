//
//  AllergiesView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct AllergiesView: View {
    
    @Binding var profile: MedicalProfile
    @Environment(\.dismiss) private var dismiss
    
    @State private var editedAllergies: [String]
    @State private var newAllergy = ""
    
    init(profile: Binding<MedicalProfile>) {
        self._profile = profile
        self._editedAllergies = State(initialValue: profile.wrappedValue.allergies)
    }
    
    var body: some View {
        
        VStack {
            
            Text("Allergies")
                .font(.title)
                .bold()
            
            
            List {
                
                ForEach(editedAllergies, id: \.self) { allergy in
                    
                    Text(allergy)
                }
                .onDelete { index in
                    editedAllergies.remove(atOffsets: index)
                }
                
                
                HStack {
                    
                    TextField("Add Allergy", text: $newAllergy)
                    
                    Button("+") {
                        
                        if !newAllergy.isEmpty {
                            editedAllergies.append(newAllergy)
                            newAllergy = ""
                        }
                    }
                }
            }
            
            Button("Save & Exit") {
                profile.allergies = editedAllergies
                dismiss()
            }
            .padding()
        }
        .navigationTitle("Allergies")
    }
}
