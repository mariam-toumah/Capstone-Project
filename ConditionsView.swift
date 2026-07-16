//
//  ConditionsView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct ConditionsView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Medical Conditions") {
                
                TextField(
                    "Example: Asthma, Diabetes",
                    text: $profile.conditions
                )
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Conditions")
    }
}
