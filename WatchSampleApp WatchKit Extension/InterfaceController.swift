//
//  InterfaceController.swift
//  WatchSampleApp WatchKit Extension
//
//  Created by Payal Gupta on 12/8/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    override func awake(withContext context: Any?)
    {
        super.awake(withContext: context)
        // Configure interface objects here.
    }
    
    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any?
    {
        switch segueIdentifier
        {
        case "BasilSegue":
            return HerbType.Basil
            
        case "SaffronSegue":
            return HerbType.Saffron
            
        case "MarjoramSegue":
            return HerbType.Marjoram
            
        case "AniseSegue":
            return HerbType.Anise
            
        case "RosemarySegue":
            return HerbType.Rosemary
            
        default:
            return nil
        }
    }
}
