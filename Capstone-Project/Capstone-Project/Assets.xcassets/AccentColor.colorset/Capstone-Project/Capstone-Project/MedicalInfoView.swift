//
//  MedicalInfoView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct MedicalInfoView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Medical Information")
                .font(.largeTitle)
                .bold()
            
            
            NavigationLink {
                BloodTypeView(profile: $profile)
            } label: {
                SectionButton(title: "Blood Type")
            }
            
            
            NavigationLink {
                AllergiesView(profile: $profile)
            } label: {
                SectionButton(title: "Allergies")
            }
            
            
            NavigationLink {
                MedicationsView(profile: $profile)
            } label: {
                SectionButton(title: "Medications")
            }
            
            
            NavigationLink {
                ConditionsView(profile: $profile)
            } label: {
                SectionButton(title: "Medical Conditions")
            }
            
            
            NavigationLink {
                InsuranceView(profile: $profile)
            } label: {
                SectionButton(title: "Insurance")
            }
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("Medical Info")
    }
}
