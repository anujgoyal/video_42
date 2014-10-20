//
//  TabBarViewController.swift
//  video_42
//
//  Created by Anuj Goyal on 10/19/14.
//  Copyright (c) 2014 TXT2LRN. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var firstVC: UIViewController!
    var secondVC: UIViewController!
    var thirdVC: UIViewController!
    @IBOutlet weak var containView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        firstVC =
            storyboard.instantiateViewControllerWithIdentifier("FirstViewController") as UIViewController
        
        secondVC =
            storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
        
        thirdVC =
            storyboard.instantiateViewControllerWithIdentifier("ThirdViewController") as UIViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBlueButton(sender: AnyObject) {
        firstVC.view.frame = containView.frame
        containView.addSubview(firstVC.view)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
