//
//  ConditionsView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct ConditionsView: View {
    
    @Binding var profile: MedicalProfile
    
    @State private var editedConditions: [String]
    @State private var newCondition = ""
    
    
    init(profile: Binding<MedicalProfile>) {
        self._profile = profile
        self._editedConditions = State(initialValue: profile.wrappedValue.conditions)
    }
    
    
    var body: some View {
        
        VStack {
            
            Text("Medical Conditions")
                .font(.title)
                .bold()
                .padding()
            
            
            List {
                
                ForEach(editedConditions, id: \.self) { condition in
                    
                    Text(condition)
                }
                .onDelete { index in
                    editedConditions.remove(atOffsets: index)
                }
                
                
                HStack {
                    
                    TextField("Add Condition", text: $newCondition)
                    
                    Button("+") {
                        
                        if !newCondition.isEmpty {
                            editedConditions.append(newCondition)
                            newCondition = ""
                        }
                    }
                }
            }
            
            
            Button("Save & Exit") {
                profile.conditions = editedConditions
            }
            .padding()
        }
        .navigationTitle("Conditions")
    }
}
