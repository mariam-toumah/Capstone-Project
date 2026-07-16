//
//  EditProfileView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI


struct EditProfileView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Edit Medical Profile")
                .font(.largeTitle)
                .bold()
            
            
            NavigationLink {
                PersonalInfoView(profile: $profile)
            } label: {
                SectionButton(title: "Personal Information")
            }
            
            
            NavigationLink {
                MedicalInfoView(profile: $profile)
            } label: {
                SectionButton(title: "Medical Information")
            }
            
            NavigationLink {
                EmergencyContactsView(profile: $profile)
            } label: {
                SectionButton(title: "Emergency Contacts")
            }
            
            NavigationLink {
                ReviewInfoView(profile: $profile)
            } label: {
                SectionButton(title: "Review Information")
            }
            
            Spacer()
            
            }
        .padding()
        .navigationTitle("Edit/View")
        }
    }


struct SectionButton: View {
    
    
    let title: String
    
    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}
