//
//  ConditionsView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct ConditionsView: View {
    
    @Binding var profile: MedicalProfile
    @State private var newCondition = ""
    
    
    var body: some View {
        
        VStack {
            
            Text("Medical Conditions")
                .font(.title)
                .bold()
            
            
            List {
                
                ForEach(profile.conditions, id: \.self) { condition in
                    
                    Text(condition)
                }
                .onDelete { index in
                    
                    profile.conditions.remove(atOffsets: index)
                }
                
                
                HStack {
                    
                    TextField("Add Condition", text: $newCondition)
                    
                    Button("+") {
                        
                        if !newCondition.isEmpty {
                            profile.conditions.append(newCondition)
                            newCondition = ""
                        }
                    }
                }
            }
            
            
            Button("Save & Exit") {
                
            }
            .padding()
        }
        .navigationTitle("Conditions")
    }
}
