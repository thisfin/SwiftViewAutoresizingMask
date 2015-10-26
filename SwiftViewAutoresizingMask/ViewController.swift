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
        self.parentView?.backgroundColor = UIColor.grayColor()
        self.view.addSubview(self.parentView!)
        
        self.subView = UIView()
        self.subView?.backgroundColor = UIColor.purpleColor()
        self.parentView?.addSubview(self.subView!)
        
        self.resetFrame()
        
        var button: UIButton?
        
        button = self.createButton()
        button?.setTitle("reset", forState: .Normal)
        button?.frame = CGRectMake(10, self.view.frame.size.height - 40 * 3, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button0Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("none", forState: .Normal)
        button?.frame = CGRectMake(10 * 2 + (self.view.frame.size.width - 40) / 3, self.view.frame.size.height - 40 * 3, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button1Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | b | h", forState: .Normal)
        button?.frame = CGRectMake(10 * 3 + (self.view.frame.size.width - 40) / 3 * 2, self.view.frame.size.height - 40 * 3, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button2Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("top", forState: .Normal)
        button?.frame = CGRectMake(10, self.view.frame.size.height - 40 * 2, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button3Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("bottom", forState: .Normal)
        button?.frame = CGRectMake(10 * 2 + (self.view.frame.size.width - 40) / 3, self.view.frame.size.height - 40 * 2, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button4Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("height", forState: .Normal)
        button?.frame = CGRectMake(10 * 3 + (self.view.frame.size.width - 40) / 3 * 2, self.view.frame.size.height - 40 * 2, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button5Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | b", forState: .Normal)
        button?.frame = CGRectMake(10, self.view.frame.size.height - 40 * 1, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button6Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("t | h", forState: .Normal)
        button?.frame = CGRectMake(10 * 2 + (self.view.frame.size.width - 40) / 3, self.view.frame.size.height - 40 * 1, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button7Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
        
        button = self.createButton()
        button?.setTitle("b | h", forState: .Normal)
        button?.frame = CGRectMake(10 * 3 + (self.view.frame.size.width - 40) / 3 * 2, self.view.frame.size.height - 40 * 1, (self.view.frame.size.width - 40) / 3, 30)
        button?.addTarget(self, action: Selector("button8Click:"), forControlEvents: .TouchUpInside)
        self.view.addSubview(button!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createButton() -> UIButton {
        let button = UIButton.init(type: UIButtonType.Custom)
        button.backgroundColor = UIColor.orangeColor()
        button.autoresizingMask = .FlexibleTopMargin
        button.layer.cornerRadius = 2;
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1;
        button.layer.borderColor = UIColor.darkGrayColor().CGColor;
        return button;
    }
    
    func resetFrame() {
        self.parentView?.frame = CGRectMake(0, 100, self.view.frame.size.width, 200);
        self.subView?.frame = CGRectMake(0, 50, self.view.frame.size.width, 100);
    }
    
    func changeFrame() {
        self.parentView?.frame = CGRectMake(0, 100, self.view.frame.size.width, 400);
    }
    
    func button0Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .None
    }
    
    func button1Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .None
        self.changeFrame()
    }
    
    func button2Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.FlexibleTopMargin, .FlexibleBottomMargin, .FlexibleHeight]
        self.changeFrame()
    }
    
    func button3Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .FlexibleTopMargin
        self.changeFrame()
    }
    
    func button4Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .FlexibleBottomMargin
        self.changeFrame()
    }
    
    func button5Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = .FlexibleHeight
        self.changeFrame()
    }
    
    func button6Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.FlexibleTopMargin, .FlexibleBottomMargin]
        self.changeFrame()
    }
    
    func button7Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.FlexibleTopMargin, .FlexibleHeight]
        self.changeFrame()
    }
    
    func button8Click(sender:UIButton) {
        self.resetFrame()
        self.subView?.autoresizingMask = [.FlexibleBottomMargin, .FlexibleHeight]
        self.changeFrame()
    }
}
