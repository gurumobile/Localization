//
//  ViewController.swift
//  Languages
//
//  Created by AA on 9/26/16.
//  Copyright © 2016 AA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = NSLocalizedString("lableProg", comment: "label programticlly change to test string file")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLanguage(_ sender: UIButton) {
        
        if Language.currentLanguage() == "ar"{
            Language.setAppleLanguage("en-US")
            //22222
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            Language.setAppleLanguage("ar")
            //33333
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }
        
        let window = (UIApplication.shared.delegate as? AppDelegate)?.window
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        window?.rootViewController = sb.instantiateViewController(withIdentifier: "rootVC")
        
        //47.-11111
      
        UIView.transition(with: window!, duration: 0.5, options: . transitionFlipFromLeft, animations: nil, completion: nil)
        
        //UIView.transitionFromView(window, duration: 0.5, options: TransitionFlipFromLeft, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        
    }
    
    
}






