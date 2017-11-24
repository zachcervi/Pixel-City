//
//  PopVC.swift
//  PixelCity
//
//  Created by Zach Cervi on 11/24/17.
//  Copyright © 2017 Zach Cervi. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initDAta(forImage image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
        
    }

    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
   @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }

}


