//
//  ResultViewController.swift
//  YinNYang
//
//  Created by Alikeju Adejo on 7/20/17.
//  Copyright © 2017 Alikeju Adejo. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController{
    
    var user: User?
    var movie  = String()
    var age : Int = 0
    var color = String()
    
    
    var newImage: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = newImage {
            imageView.image = newImage
        }
        else {
            
        }
        
        if let image = newImage{
            rightImageView.image = RandomImage.randomImageView()
            //imgV.image = faceBook.randomFactImage()
        }

       textView.text = "My favorite movie is \(user?.movie) \nMy favorite color is \(user?.color)"
        
    }
    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        
    }
    
    
    
    
}
