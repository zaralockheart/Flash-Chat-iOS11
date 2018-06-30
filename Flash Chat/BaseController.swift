//
//  BaseController.swift
//  Flash Chat
//
//  Created by Muhammad Yusuf Rosman on 30/06/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    var keyboardHeight: CGFloat?
    var keyboardSpeed: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {

        NotificationCenter.default.addObserver(self,selector:#selector(KeyboardWillChangeFrame),
                                           name:NSNotification.Name.UIKeyboardWillChangeFrame,object: nil)
    }
    
    @objc func KeyboardWillChangeFrame(_ notification: Notification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            keyboardHeight = keyboardSize.height
            keyboardSpeed = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? Double
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

}
