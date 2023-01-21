//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by mobiliz on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        //resmin üzerine tıklanabilsin mi?
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        // oluşturduğumuz jest algılayıcısını resme atadık.
        
    }
    var isCat = true
    // fonksiyonun doğru çalışması için burada tanımladık.

    @objc func changePic() {
        // resme tıklandığında buradaki işlemler yapılacak.
        
        if isCat == true {
            imageView.image = UIImage(named: "dog")
            myLabel.text = "Dog"
            isCat = false
        } else {
            imageView.image = UIImage(named: "cat")
            myLabel.text = "Cat"
            isCat = true
        }
        
        
        
        
    }
    
}

