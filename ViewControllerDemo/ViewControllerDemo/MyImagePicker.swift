//
//  MyImagePicker.swift
//  ViewControllerDemo
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct MyImagePicker: UIViewControllerRepresentable {
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext<MyImagePicker>
    ) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: UIViewControllerRepresentableContext<MyImagePicker>
    ) {
        // ...
    }
    
    // 이벤트가 발생하면 여기에 알려줘
    func makeCoordinator() -> Coordinator {
        let coordinator = Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
        return coordinator
    }
    
    class Coordinator:
        NSObject,
        UIImagePickerControllerDelegate,
        UINavigationControllerDelegate {
        // 값을 바꿔주는 건 실제로 Coordinator에서 하기 때문에 여기에 Binding 변수를 써준다.
        // imagePickerVisible 상태와 선택한 이미지에 대한 정보를 받기 위한 Binding
        // 왜냐하면 ContentView에서 MyImagePicker를 사용할 예정이기 때문에
        @Binding var imagePickerVisible: Bool
        @Binding var selectedImage: Image?
        
        init(
            imagePickerVisible: Binding<Bool>,
            selectedImage: Binding<Image?>
        ) {
            _imagePickerVisible = imagePickerVisible
            _selectedImage = selectedImage
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePickerVisible = false
        }
        
        func imagePickerController(
            _ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                let image: UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
                selectedImage = Image(uiImage: image)
                imagePickerVisible = false
        }
    }
}
