//
//  OnboardingViewController.swift
//  HackathonCaixaSeguradora
//
//  Created by Miguel Pimentel on 17/06/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit
import paper_onboarding

class OnboardingViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

   
    @IBOutlet weak var onboardingView: OnboardingView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    func onboardingItemsCount() -> Int {
        let onboardingPages = 3
        
        return onboardingPages
    }
  
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        
        
        var onboardingPages = [OnboardingItemInfo]()
        
        let customBlue = UIColor(red: 0.149, green: 0.4510, blue: 0.7882, alpha: 1)
        let customOrange = UIColor(red: 0.9922, green: 0.5686, blue: 0.2902, alpha: 1)
       
        
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let textFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        
        
        let firstPage = OnboardingItemInfo("backpack", "", "Se preparar para novas experiências nunca foi tão fácil", "", customBlue, UIColor.white, UIColor.white, titleFont, textFont)
        let secondPage = OnboardingItemInfo("camp", "", "Juntos podemos ir mais longe", "", customOrange, UIColor.white, UIColor.white, titleFont, textFont)
        let thirdPage = OnboardingItemInfo("", "", "Defina metas e conquiste seus objetivos!", "", customOrange, UIColor.white, UIColor.white, titleFont, textFont)
        
        onboardingPages.append(firstPage)
        onboardingPages.append(secondPage)
        onboardingPages.append(thirdPage)
        
        
        return onboardingPages[index]
        
    }
    
    
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        
        if index == 2 {
           performSegue(withIdentifier: "Login", sender: Any?.self)
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        
    }

}
