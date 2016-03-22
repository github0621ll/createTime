//
//  ViewController.swift
//  Chinese12
//
//  Created by 樊琳琳 on 16/1/19.
//  Copyright © 2016年 fll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfErth: UITextField!
    
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    
    @IBAction func okTapped(sender: AnyObject) {
        
        yearOfErth.resignFirstResponder()//取消键盘相应事件
        
        //if let 判断空值
        if let year = Int(yearOfErth.text!){
            let imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
        else{
            
        }
//        print(year)
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfErth.resignFirstResponder()//取消键盘相应事件        
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    
}







































