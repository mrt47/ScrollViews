//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Murat Kuran on 29/10/2017.
//  Copyright © 2017 Murat Kuran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

// definitions -------------------------------------------------
    @IBOutlet weak var scrollView: UIScrollView!
    var imageViewArr = [UIImageView]();
//--------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        var imagePosition:CGFloat = 0.0
        var contentWidth:CGFloat = 0.0
        let scrollHeight = scrollView.frame.size.height
        let scrollWidth = scrollView.frame.size.width
        
        print ("view width: \(view.frame.size.width)")
        print ("scroll width: \(scrollWidth)")
        print ("scroll height: \(scrollHeight)")
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
           
            scrollView.addSubview(imageView)
            imagePosition = scrollWidth / 2 + scrollWidth * CGFloat (x)
            imageView.frame = CGRect (x: imagePosition - 75, y: scrollHeight/2 - 75, width: 150, height: 150)
            
            print ("Image Position \(x): \(imagePosition)")
        }
        
        scrollView.clipsToBounds = false
        contentWidth = imagePosition + scrollWidth / 2
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollHeight)
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        
        print ("image position: \(imagePosition)")
        print ("content width: \(contentWidth)")
    }
}

