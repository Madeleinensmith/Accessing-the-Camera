//
//  ViewController.swift
//  Accessing the Camera
//
//  Created by Madeleine Smith on 6/23/20.
//  Copyright © 2020 Madeleine Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    

    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
           present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            displayImage.image = selectedImage
            
        }
            imagePicker.dismiss(animated: true, completion: nil)
    }

}

