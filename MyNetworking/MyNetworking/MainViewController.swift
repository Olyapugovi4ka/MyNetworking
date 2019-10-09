//
//  MainViewController.swift
//  MyNetworking
//
//  Created by MacBook on 09/10/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit
enum Actions:String, CaseIterable{
    case downloadImage = "Download Image"
    case get = "GET"
    case post = "POST"
    case ourCourses = "Our Courses"
    case uploadImage = "Upload Image"
}
private let reuseIdentifier = "Cell"
private let url = "https://jsonplaceholder.typicode.com/posts"

class MainViewController: UICollectionViewController {
    
  //let actions = ["Download Image", "GET", "POST", "Our Courses", "Upload Image"]
    let actions = Actions.allCases

    //MARK: Collection View Data Sourse

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return actions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        cell.label.text = actions[indexPath.row].rawValue
    
        return cell
    }

    //MARK: Collection View Delegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let action =  actions[indexPath.row]
        switch action  {
        case .downloadImage:
            performSegue(withIdentifier: "ShowImage", sender: self)
        case .get:
            NetworkManager.getRequest(url: url)
        case .post:
            NetworkManager.postRequest(url: url)
        case .ourCourses:
            performSegue(withIdentifier: "OurCourses", sender: self)
        case .uploadImage:
            print("Upload Image")
       
        }
    }

}
