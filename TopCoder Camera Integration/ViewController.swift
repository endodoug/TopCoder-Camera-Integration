//
//  ViewController.swift
//  TopCoder Camera Integration
//
//  Created by doug harper on 9/9/15.
//  Copyright © 2015 Doug Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraButtonTapped(sender: UIButton) {
        print("button tapped")
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion: nil)
        imageView.hidden = false
    }

    @IBAction func photosButtonTapped(sender: UIButton) {
        print("button tapped")
        imageView.hidden = false
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imageView.image = (info[UIImagePickerControllerOriginalImage] as! UIImage)
        dismissViewControllerAnimated(true, completion: nil)
    }
}

