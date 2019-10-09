//
//  ViewController.swift
//  MyNetworking
//
//  Created by MacBook on 03/10/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit



class ImageViewController: UIViewController {
    
    private let url = "https://akket.com/wp-content/uploads/2017/12/iPhone-X-Wallpapers-AKKet.com-327.jpg"

    @IBOutlet weak var newImageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.isHidden = true
        activityIndicator.hidesWhenStopped = true
        fetchImage()
    }
    func fetchImage() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        NetworkManager.downloadImage(url: url) { (image) in
            self.activityIndicator.stopAnimating()
            self.newImageView.image = image
        }
    }

}

