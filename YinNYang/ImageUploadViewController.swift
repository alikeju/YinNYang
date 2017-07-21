//
//  ResultViewController.swift
//  YinNYang
//
//  Created by Alikeju Adejo on 7/19/17.
//  Copyright © 2017 Alikeju Adejo. All rights reserved.


import Foundation
import UIKit

class ImageUploadViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage!
    
    //This function is loading this view.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //^^Dispose of any resources that can be recreated
    }
    
    
    @IBAction func uploadPicture(_ sender: Any) {
        let image = UIImagePickerController()
        
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image, animated: true){
            //After it is complete
            
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBrowsePage" {
            //dvc: destination view controller
            let dvc = segue.destination as! ResultViewController
            dvc.newImage = imageView.image
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            self.image = image
            
        } else{
            //error message
        }
        
        
        imageView.image = image
       // self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true) { 
            self.performSegue(withIdentifier: "toBrowsePage", sender: self)

        }
    }
    
}

