//
//  ResultViewController.swift
//  YinNYang
//
//  Created by Alikeju Adejo on 7/20/17.
//  Copyright © 2017 Alikeju Adejo. All rights reserved.
//

import Foundation
import UIKit

var yang = Yang()
class ResultViewController: UIViewController{
    
    var yang = Yang()

    var newImage: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
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
    }
    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        
    }
    
    
    
    
}
