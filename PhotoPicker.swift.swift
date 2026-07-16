//
//  PhotoPicker.swift.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI
import PhotosUI


struct PhotoPicker: UIViewControllerRepresentable {
    
    @Binding var profile: MedicalProfile
    
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        
        var config = PHPickerConfiguration()
        config.filter = .images
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        
        return picker
    }
    
    
    func updateUIViewController(
        _ uiViewController: PHPickerViewController,
        context: Context
    ) {}
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        
        let parent: PhotoPicker
        
        init(_ parent: PhotoPicker) {
            self.parent = parent
        }
        
        
        func picker(
            _ picker: PHPickerViewController,
            didFinishPicking results: [PHPickerResult]
        ) {
            
            picker.dismiss(animated: true)
            
            
            guard let provider = results.first?.itemProvider else {
                return
            }
            
            
            provider.loadDataRepresentation(
                forTypeIdentifier: "public.image"
            ) { data, error in
                
                if let data = data {
                    DispatchQueue.main.async {
                        self.parent.profile.profileImage = data
                    }
                }
            }
        }
    }
}
