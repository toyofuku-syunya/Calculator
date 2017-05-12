//
//  customClass.swift
//  calculator
//
//  Created by Syunya Toyofuku on 2017/02/26.
//  Copyright © 2017年 Syunya Toyofuku. All rights reserved.
//

import UIKit

    @IBDesignable
    class Button_Custom: UIButton {
    
        
        @IBInspectable var textColor: UIColor?
        
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                layer.cornerRadius = cornerRadius
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor = UIColor.blue {
            didSet {
                layer.borderColor = borderColor.cgColor
            }
        }
}

    @IBDesignable
    class Label_Custom: UILabel {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.blue {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

    
}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


