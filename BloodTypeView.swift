//
//  BloodTypeView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct BloodTypeView: View {
    
    @Binding var profile: MedicalProfile
    @Environment(\.dismiss) private var dismiss
    
    let bloodTypes = [
        "A+",
        "A-",
        "B+",
        "B-",
        "AB+",
        "AB-",
        "O+",
        "O-"
    ]
    
    
    var body: some View {
        
        Form {
            
            Section("Select Blood Type") {
                
                Picker("Blood Type", selection: $profile.bloodType) {
                    
                    Text("Select")
                        .tag("")
                    
                    ForEach(bloodTypes, id: \.self) { type in
                        Text(type)
                            .tag(type)
                    }
                }
            }
            
            
            Button("Save & Exit") {
                dismiss()
            }            
        }
        .navigationTitle("Blood Type")
    }
}
