//
//  AboutController.swift
//  MobileApp
//
//  Created by Quang Tran Dang on 21.04.15.
//  Copyright (c) 2015 Quang Tran Dang. All rights reserved.
//

import UIKit

class AboutController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("thankyou", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        var webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = true;
        self.view.addSubview(webViewBG)
        
        var filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
        var quangLabel = UILabel(frame: CGRectMake(0, (self.view.bounds.size.height/2 + 60), self.view.bounds.size.width, 100))
        quangLabel.text = "Quang Tran"
        quangLabel.textColor = UIColor.grayColor()
        quangLabel.font = UIFont.systemFontOfSize(40)
        quangLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(quangLabel)
        
        var anmolLabel = UILabel(frame: CGRectMake(0, (self.view.bounds.size.height/2), self.view.bounds.size.width, 100))
        anmolLabel.text = "Anmol Raina"
        anmolLabel.textColor = UIColor.grayColor()
        anmolLabel.font = UIFont.systemFontOfSize(40)
        anmolLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(anmolLabel)
        
        var csLabel = UILabel(frame: CGRectMake(0, (self.view.bounds.size.height/2 + 120), self.view.bounds.size.width, 100))
        csLabel.text = "CS342: Mobile App"
        csLabel.textColor = UIColor.grayColor()
        csLabel.font = UIFont.systemFontOfSize(40)
        csLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(csLabel)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
