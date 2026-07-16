//
//  MedicationsView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct MedicationsView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Current Medications") {
                
                TextField(
                    "Example: Inhaler, Ibuprofen",
                    text: $profile.medications
                )
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Medications")
    }
}
