//
//  AddMedicationView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct AddMedicationView: View {
    
    @Binding var profile: MedicalProfile
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var dosage = ""
    @State private var frequency = ""
    
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                Section("Medication Information") {
                    
                    TextField("Medication Name", text: $name)
                    
                    TextField("Dosage (ex. 200mg)", text: $dosage)
                    
                    TextField("Frequency (ex. Daily)", text: $frequency)
                }
                
                
                Button("Add Medication") {
                    
                    let medication = Medication(
                        name: name,
                        dosage: dosage,
                        frequency: frequency
                    )
                    
                    profile.medications.append(medication)
                    
                    dismiss()
                }
            }
            .navigationTitle("New Medication")
        }
    }
