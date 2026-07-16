//
//  AllergiesView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct AllergiesView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Allergies") {
                
                TextField(
                    "Example: Penicillin, Peanuts",
                    text: $profile.allergies
                )
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Allergies")
    }
}
