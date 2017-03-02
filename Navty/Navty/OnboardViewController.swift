//
//  OnboardViewController.swift
//  Navty
//
//  Created by Thinley Dorjee on 3/2/17.
//  Copyright © 2017 Edward Anchundia. All rights reserved.
//

import UIKit
import SnapKit

class pageVC: UIPageViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
//        let viewControllers = [ViewController()]
//        
//        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
    }
}

class OnboardViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        viewHierarchy()
        constrainConfiguration()

    }
    
    func viewHierarchy(){
        view.addSubview(image)
        
    }
    
    func constrainConfiguration(){
        image.snp.makeConstraints { (image) in
            image.top.equalTo(view.snp.top).offset(50)
            image.leading.equalTo(view.snp.leading)
            image.trailing.equalTo(view.snp.trailing)
            image.bottom.equalTo(view.snp.bottom).inset(50)
        }
    
    }
    
    
    //image 

    internal lazy var image: UIImageView = {
        let photo = UIImageView()
        photo.image = #imageLiteral(resourceName: "iphone_default_image")
        photo.layer.cornerRadius = 30
        photo.layer.masksToBounds = true
        photo.contentMode = .scaleAspectFit
        return photo
    }()

}
