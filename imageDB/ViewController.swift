//
//  ViewController.swift
//  connectDB
//
//  Created by Admin on 29/1/2562 BE.
//  Copyright © 2562 Saiwarun.Y. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func chooseImage(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        let actionSheet = UIAlertController(
            title: "Photo Source",
            message: "Choose a source",
            preferredStyle: .actionSheet)
//        actionSheet.addAction(UIAlertAction(
//            title: "Camera",
//            style: .default,
//            handler:{(action: UIAlertAction) in imagePickerController.sourceType = .camera
//                self.present(imagePickerController, animated: true, completion: nil)
//        }))
        actionSheet.addAction(UIAlertAction(
            title: "Photo Library",
            style: .default,
            handler:{(action: UIAlertAction) in imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true, completion: nil)
        }))
        actionSheet.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil))
        self.present(actionSheet, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        imageView.image = image
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


