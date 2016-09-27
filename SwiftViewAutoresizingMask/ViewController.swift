//
//  ViewController.swift
//  SwiftViewAutoresizingMask
//
//  Created by wenyou on 15/10/26.
//  Copyright © 2015年 wenyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var parentView: UIView?
    var subView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.parentView = UIView()
        self.parentView?.backgroundColor = UIColor.gray
        self.view.addSubview(self.parentView!)
        
        self.subView = UIView()
        self.subView?.backgroundColor = UIColor.purple
        self.parentView?.addSubview(self.subView!)
        
        self.resetFrame()
        
        var button: UIButton?
        
        button = self.createButton()
        button?.setTitle("reset", for: UIControlState())
        button?.frame = CGRect(x: 10, y: self.view.frame.size.height - 40 * 3, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button0Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("none", for: UIControlState())
        button?.frame = CGRect(x: 10 * 2 + (self.view.frame.size.width - 40) / 3, y: self.view.frame.size.height - 40 * 3, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button1Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | b | h", for: UIControlState())
        var x = 10 * 3 + (self.view.frame.size.width - 40) / 3 * 2
        button?.frame = CGRect(x: x, y: self.view.frame.size.height - 40 * 3, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button2Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("top", for: UIControlState())
        button?.frame = CGRect(x: 10, y: self.view.frame.size.height - 40 * 2, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button3Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("bottom", for: UIControlState())
        button?.frame = CGRect(x: 10 * 2 + (self.view.frame.size.width - 40) / 3, y: self.view.frame.size.height - 40 * 2, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button4Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("height", for: UIControlState())
        x = 10 * 3 + (self.view.frame.size.width - 40) / 3 * 2
        button?.frame = CGRect(x: x, y: self.view.frame.size.height - 40 * 2, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button5Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | b", for: UIControlState())
        button?.frame = CGRect(x: 10, y: self.view.frame.size.height - 40 * 1, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button6Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | h", for: UIControlState())
        button?.frame = CGRect(x: 10 * 2 + (self.view.frame.size.width - 40) / 3, y: self.view.frame.size.height - 40 * 1, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button7Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("b | h", for: UIControlState())
        x = 10 * 3 + (self.view.frame.size.width - 40) / 3 * 2
        button?.frame = CGRect(x: x, y: self.view.frame.size.height - 40 * 1, width: (self.view.frame.size.width - 40) / 3, height: 30)
        button?.addTarget(self, action: #selector(ViewController.button8Click(_:)), for: .touchUpInside)
        self.view.addSubview(button!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createButton() -> UIButton {
        let button = UIButton.init(type: UIButtonType.custom)
        button.backgroundColor = UIColor.orange
        button.autoresizingMask = .flexibleTopMargin
        button.layer.cornerRadius = 2;
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1;
        button.layer.borderColor = UIColor.darkGray.cgColor;
        return button;
    }
    
    func resetFrame() {
        self.parentView?.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 200);
        self.subView?.frame = CGRect(x: 0, y: 50, width: self.view.frame.size.width, height: 100);
    }
    
    func changeFrame() {
        self.parentView?.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 400);
    }
    
    func button0Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = UIViewAutoresizing()
    }
    
    func button1Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = UIViewAutoresizing()
        self.changeFrame()
    }
    
    func button2Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleHeight]
        self.changeFrame()
    }
    
    func button3Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .flexibleTopMargin
        self.changeFrame()
    }
    
    func button4Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .flexibleBottomMargin
        self.changeFrame()
    }
    
    func button5Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .flexibleHeight
        self.changeFrame()
    }
    
    func button6Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin]
        self.changeFrame()
    }
    
    func button7Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.flexibleTopMargin, .flexibleHeight]
        self.changeFrame()
    }
    
    func button8Click(_ sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.flexibleBottomMargin, .flexibleHeight]
        self.changeFrame()
    }
}
