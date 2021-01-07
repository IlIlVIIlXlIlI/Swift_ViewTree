//
//  ViewController.swift
//  ViewTree
//
//  Created by Shogo Nobuhara on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {

    
    func createLabelA()
    {
        let labelA = UILabel()
        labelA.text = "ラベルA"
        
        labelA.frame = CGRect(x: 80, y: 150, width: 110, height: 21)
        labelA.backgroundColor = UIColor.orange
        labelA.textColor = UIColor.white
        
        self.view.addSubview(labelA)
    }
    
    func createSubViewAddLabelB()
    {
        let labelB = UILabel()
        
        labelB.text = "ラベルB"
        labelB.frame = CGRect(x: 50,y: 60,width: 110,height: 21)
        labelB.backgroundColor = UIColor.orange
        labelB.textColor = UIColor.white
        
        
        
        let theView = UIView()
        
        theView.frame = CGRect(x: 60, y: 600, width: 210, height: 200)
        theView.backgroundColor = UIColor(red: 0.9,green: 0.9,blue: 0.6, alpha:1.0)
        
        theView.addSubview(labelB)
        self.view.addSubview(theView)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createLabelA()
        
        createSubViewAddLabelB()
        
        
        let rect =  CGRect(x: 0,y: 0,width: 300,height: 200)
        let imageView = UIImageView(frame:rect)
        imageView.contentMode = .scaleAspectFill
        //imageView.contentMode = .center
        //imageView.clipsToBounds = true
        imageView.image = UIImage(named: "apple_nezumi.png")
        imageView.center = self.view.center
        self.view.addSubview(imageView)
        
        
        
        
        
    }


}

