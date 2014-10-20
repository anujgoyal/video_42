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
    @IBOutlet weak var containView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("Tab VC: viewDidLoad")

        var storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        firstVC =
            storyboard.instantiateViewControllerWithIdentifier("FirstViewController") as UIViewController
        
        secondVC =
            storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
        
        thirdVC =
            storyboard.instantiateViewControllerWithIdentifier("ThirdViewController") as UIViewController
        
        // setup scrollview
        NSLog("setup scrollview")
        firstVC.view.frame = containView.frame
        containView.addSubview(firstVC.view)

        secondVC.view.frame = containView.frame
        secondVC.view.frame.origin.x += 320
        containView.addSubview(secondVC.view)

        thirdVC.view.frame = containView.frame
        thirdVC.view.frame.origin.x += 640
        containView.addSubview(thirdVC.view)
    
        // set paging enabled
        containView.pagingEnabled = true
        containView.bounces = false
        
        // need to scroll
        containView.contentSize = CGSize(width: 320*3, height: 568)
        NSLog("Tab VC: viewDidLoad end")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBlueButton(sender: AnyObject) {
        firstVC.view.frame = containView.frame
        containView.addSubview(firstVC.view)
    }

    @IBAction func onGreenButton(sender: AnyObject) {
        secondVC.view.frame = containView.frame
        containView.addSubview(secondVC.view)
    }

    @IBAction func onOrangeButton(sender: AnyObject) {
        thirdVC.view.frame = containView.frame
        containView.addSubview(thirdVC.view)
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
