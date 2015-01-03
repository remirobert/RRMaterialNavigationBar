//
//  CustomBar.swift
//  navBar
//
//  Created by Remi Robert on 31/12/14.
//  Copyright (c) 2014 Remi Robert. All rights reserved.
//

import UIKit

enum ThemeColor {
    case Red, Pink, Purple, DeepPurple, Indigo, Blue, LightBlue, Cyan, Teal, Green, LightGreen, Lime, Yellow, Amber, Orange, DeepOrange, Brown, Grey, BlueGrey

    func toColor() -> (statusBar: UIColor, navigationBar: UIColor) {
        switch self {
        case .Red:
            return (UIColor(red: 211 / 255.0, green: 47 / 255.0, blue: 47 / 255.0, alpha: 1),
                UIColor(red: 244 / 255.0, green: 67 / 255.0, blue: 54 / 255.0, alpha: 1))
        case .Pink:
            return (UIColor(red: 194 / 255.0, green: 24 / 255.0, blue: 91 / 255.0, alpha: 1),
                UIColor(red: 233 / 255.0, green: 30 / 255.0, blue: 99 / 255.0, alpha: 1))
        case .Purple:
            return (UIColor(red: 123 / 255.0, green: 31 / 255.0, blue: 162 / 255.0, alpha: 1),
                UIColor(red: 156 / 255.0, green: 39 / 255.0, blue: 176 / 255.0, alpha: 1))
        case .DeepPurple:
            return (UIColor(red: 81 / 255.0, green: 45 / 255.0, blue: 168 / 255.0, alpha: 1),
                UIColor(red: 103 / 255.0, green: 58 / 255.0, blue: 183 / 255.0, alpha: 1))
        case .Indigo:
            return (UIColor(red: 48 / 255.0, green: 63 / 255.0, blue: 159 / 255.0, alpha: 1),
                UIColor(red: 63 / 255.0, green: 81 / 255.0, blue: 181 / 255.0, alpha: 1))
        case .Blue:
            return (UIColor(red: 26 / 255.0, green: 118 / 255.0, blue: 210 / 255.0, alpha: 1),
                UIColor(red: 32 / 255.0, green: 150 / 255.0, blue: 243 / 255.0, alpha: 1))
        case .LightBlue:
            return (UIColor(red: 1 / 255.0, green: 136 / 255.0, blue: 209 / 255.0, alpha: 1),
                UIColor(red: 4 / 255.0, green: 169 / 255.0, blue: 244 / 255.0, alpha: 1))
        case .Cyan:
            return (UIColor(red: 0, green: 151 / 255.0, blue: 167 / 255.0, alpha: 1),
                UIColor(red: 1 / 255.0, green: 188 / 255.0, blue: 212 / 255.0, alpha: 1))
        case .Teal:
            return (UIColor(red: 0, green: 121 / 255.0, blue: 107 / 255.0, alpha: 1),
                UIColor(red: 0, green: 150 / 255.0, blue: 136 / 255.0, alpha: 1))
        case .Green:
            return (UIColor(red: 56 / 255.0, green: 142 / 255.0, blue: 60 / 255.0, alpha: 1),
                UIColor(red: 76 / 255.0, green: 175 / 255.0, blue: 80 / 255.0, alpha: 1))
        case .LightGreen:
            return (UIColor(red: 104 / 255.0, green: 159 / 255.0, blue: 56 / 255.0, alpha: 1),
                UIColor(red: 139 / 255.0, green: 195 / 255.0, blue: 74 / 255.0, alpha: 1))
        case .Lime:
            return (UIColor(red: 175 / 255.0, green: 180 / 255.0, blue: 43 / 255.0, alpha: 1),
                UIColor(red: 205 / 255.0, green: 220 / 255.0, blue: 57 / 255.0, alpha: 1))
        case .Yellow:
            return (UIColor(red: 251 / 255.0, green: 192 / 255.0, blue: 46 / 255.0, alpha: 1),
                UIColor(red: 255 / 255.0, green: 235 / 255.0, blue: 59 / 255.0, alpha: 1))
        case .Amber:
            return (UIColor(red: 255 / 255.0, green: 160 / 255.0, blue: 1 / 255.0, alpha: 1),
                UIColor(red: 255 / 255.0, green: 193 / 255.0, blue: 8 / 255.0, alpha: 1))
        case .Orange:
            return (UIColor(red: 245 / 255.0, green: 124 / 255.0, blue: 1 / 255.0, alpha: 1),
                UIColor(red: 255 / 255.0, green: 152 / 255.0, blue: 1 / 255.0, alpha: 1))
        case .DeepOrange:
            return (UIColor(red: 230 / 255.0, green: 74 / 255.0, blue: 25 / 255.0, alpha: 1),
                UIColor(red: 255 / 255.0, green: 87 / 255.0, blue: 35 / 255.0, alpha: 1))
        case .Brown:
            return (UIColor(red: 93 / 255.0, green: 64 / 255.0, blue: 55 / 255.0, alpha: 1),
                UIColor(red: 121 / 255.0, green: 85 / 255.0, blue: 72 / 255.0, alpha: 1))
        case .Grey:
            return (UIColor(red: 97 / 255.0, green: 97 / 255.0, blue: 97 / 255.0, alpha: 1),
                UIColor(red: 158 / 255.0, green: 158 / 255.0, blue: 158 / 255.0, alpha: 1))
        case .BlueGrey:
            return (UIColor(red: 69 / 255.0, green: 90 / 255.0, blue: 100 / 255.0, alpha: 1),
                UIColor(red: 96 / 255.0, green: 125 / 255.0, blue: 139 / 255.0, alpha: 1))
        }
    }
}

class RRNavigationBar: UINavigationBar {

    var viewBarStatus: UIView!
    var titleLabel: UILabel!
    
    class RRNavigationBarParameter {
        
        var currentTheme: ThemeColor! = nil
        var currentNavigationBar: RRNavigationBar! = nil
        
        class var sharedInstance: RRNavigationBarParameter {
            
            struct Static {
                static var instance: RRNavigationBarParameter?
                static var token: dispatch_once_t = 0
            }
            
            dispatch_once(&Static.token) {
                Static.instance = RRNavigationBarParameter()
                Static.instance?.currentTheme = ThemeColor.Grey
            }
            
            return Static.instance!
        }
    }
    
    class func changeColorNavigationBar(color: ThemeColor) {
        RRNavigationBarParameter.sharedInstance.currentTheme = color
    }
    
    func animateTitle() {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0.5,
            options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            self.titleLabel.frame = CGRectMake(self.titleLabel.frame.size.width / 2, 0,
                self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)
            }, completion: nil)
    }
    
    func animationPop() {
        for currentSubView in self.subviews {
            if (NSStringFromClass(object_getClass(currentSubView)) == "_UINavigationBarBackIndicatorView") {
                
                (currentSubView as UIView).transform = CGAffineTransformMakeRotation(CGFloat(M_PI))

                
                UIView.animateWithDuration(1, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5,
                    options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
                    (currentSubView as UIView).frame.origin.x = -currentSubView.frame.size.width
                    (currentSubView as UIView).transform = CGAffineTransformMakeRotation(CGFloat(0))

                    }, completion: nil)}
        }
    }
    
    func animateBackButton() {
        for currentSubView in self.subviews {
            if (NSStringFromClass(object_getClass(currentSubView)) == "_UINavigationBarBackIndicatorView") {

                (currentSubView as UIView).transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                (currentSubView as UIView).frame.origin.x = -currentSubView.frame.size.width
                
                UIView.animateWithDuration(1, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5,
                    options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
                    (currentSubView as UIView).transform = CGAffineTransformMakeRotation(CGFloat(0))
                    (currentSubView as UIView).frame.origin.x = 10
                    
                    }, completion: { (animaed: Bool) -> Void in
                })
            }
        }
    }
    
    func initBar() {
        
        self.tintColor = UIColor.whiteColor()
        self.barTintColor = RRNavigationBarParameter.sharedInstance.currentTheme.toColor().navigationBar
        self.viewBarStatus = UIView(frame: CGRectMake(0, -20,
            UIScreen.mainScreen().bounds.size.width, 20))
        
        
        self.viewBarStatus.backgroundColor = RRNavigationBarParameter.sharedInstance.currentTheme.toColor().statusBar
        
        self.addSubview(self.viewBarStatus)
        
        self.titleLabel = UILabel(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width,
            self.frame.size.height + 40))
        self.titleLabel.textAlignment = NSTextAlignment.Center
        self.titleLabel.textColor = UIColor.whiteColor()
        self.titleLabel.text = ""
        self.titleLabel.backgroundColor = self.barTintColor
        
        self.addSubview(titleLabel)
        
        self.backItem?.backBarButtonItem = nil
        
        self.animateBackButton()
        RRNavigationBarParameter.sharedInstance.currentNavigationBar = self
    }
    
    
    class func setTitle(title: String) {
        var navigationBar = RRNavigationBarParameter.sharedInstance.currentNavigationBar
        navigationBar.titleLabel.text = title
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1,
            options: nil, animations: { () -> Void in
            navigationBar.titleLabel.text = title
            navigationBar.titleLabel.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width,
                navigationBar.titleLabel.frame.size.height)
            }) { (animated: Bool) -> Void in
        }
    }
    
    override init() {
        super.init()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initBar()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension UIViewController {
    
    public func viewDidLoad() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "",
            style: UIBarButtonItemStyle.Bordered, target: nil, action: nil)
    }
    
}

extension UINavigationController: UINavigationBarDelegate {
    
    public func navigationBar(navigationBar: UINavigationBar, didPushItem item: UINavigationItem) {
        (self.navigationBar as RRNavigationBar).animateBackButton()
        (self.navigationBar as RRNavigationBar).animateTitle()
    }
    
    public func navigationBar(navigationBar: UINavigationBar, didPopItem item: UINavigationItem) {
        (self.navigationBar as RRNavigationBar).animationPop()
        (self.navigationBar as RRNavigationBar).animateTitle()
    }
}
