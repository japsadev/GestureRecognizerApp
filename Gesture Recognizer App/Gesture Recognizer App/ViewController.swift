//
//  ViewController.swift
//  Gesture Recognizer App
//
//  Created by Salih Yusuf Göktaş on 5.12.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var isBrian = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
                
                let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
                
                imageView.addGestureRecognizer(gestureRecognizer)
                
            }
            
            @objc func changePic() {
                

                if isBrian == true {
                    imageView.image = UIImage(named: "freddie")
                    myLabel.text = "Freddie Mercury"
                    isBrian = false
                } else {
                    imageView.image = UIImage(named: "brian")
                    myLabel.text = "Brian May"
                    isBrian = true
                }
                
                
                
            }


        }
