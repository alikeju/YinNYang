
//
//  SurveyViewController.swift
//  YinNYang
//
//  Created by Alikeju Adejo on 7/19/17.
//  Copyright © 2017 Alikeju Adejo. All rights reserved.
//

import Foundation
import UIKit

class SurveyViewController: UIViewController{
    
    //   var currentUser = User()
    
    @IBOutlet weak var `continue`: UIButton!
    @IBOutlet weak var ageLabel: UITextField!
    //    let age = ageLabel.text
    
    @IBOutlet weak var favoriteMovie: UITextField!
    @IBOutlet weak var favoriteColor: UITextField!
    
    @IBAction func continueAction(_ sender: Any) {
        //let userInput = favoriteMovie.text
        performSegue(withIdentifier: "ResultViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ResultViewController"{
            if let destination = segue.destination as? ResultViewController {
                let user = User(age: 0, movie: favoriteMovie.text!, color: favoriteColor.text!, meal: "")
                destination.movie = user.movie
                destination.color = user.color
                destination.age = user.age
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
