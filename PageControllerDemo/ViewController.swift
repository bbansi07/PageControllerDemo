//
//  ViewController.swift
//  PageControllerDemo
//
//  Created by Zeitech Solutions on 04/04/17.
//  Copyright © 2017 Bansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet var pageControl : UIPageControl? = UIPageControl.init(frame: CGRect(x:5, y: 5, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    
    @IBOutlet var scrollView : UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        scrollView?.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        self.scrollView?.delegate = self
        
        configurePageControl()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configurePageControl() {
        
        pageControl?.backgroundColor = UIColor.lightGray
        self.pageControl?.numberOfPages = 5
        self.pageControl?.currentPage = 0
        self.pageControl?.tintColor = UIColor.red
        self.pageControl?.pageIndicatorTintColor = UIColor.black
        self.pageControl?.currentPageIndicatorTintColor = UIColor.white
        self.view.addSubview(pageControl!)
        
    }
  
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl?.currentPage = Int(pageNumber)
        
        if(Int(pageNumber) == 1){
            self.view.backgroundColor = UIColor.blue
        }else{
            self.view.backgroundColor = UIColor.red
        }

    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl?.currentPage = Int(pageNumber)
   
        if(Int(pageNumber) == 1){
            self.view.backgroundColor = UIColor.blue
        }else{
            self.view.backgroundColor = UIColor.red
        }
        
    }
    
}

