//
//  DetailPageController.swift
//  WatchSampleApp
//
//  Created by Payal Gupta on 12/10/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import WatchKit
import Foundation

class DetailPageController: WKInterfaceController
{
    @IBOutlet var headingLabel: WKInterfaceLabel!
    @IBOutlet var detailLabel: WKInterfaceLabel!
    @IBOutlet var backgroundGroup: WKInterfaceGroup!
    @IBOutlet var headingGroup: WKInterfaceGroup!
    @IBOutlet var detailGroup: WKInterfaceGroup!
    
    var herbType = HerbType.Basil
    
    override func awake(withContext context: Any?)
    {
        super.awake(withContext: context)
        if let context = context as? HerbType
        {
            self.herbType = context
            headingLabel.setText(String(describing: context))
            detailLabel.setText(context.detail)
            self.backgroundGroup.setBackgroundImageNamed(String(describing: context))
        }
    }
    
    @IBAction func showImageOnlySwitch(_ value: Bool)
    {
        if value
        {
            animate(withDuration: 1.5, animations: {
                self.headingGroup.setAlpha(0.0)
                self.detailGroup.setAlpha(0.0)
            })
        }
        else
        {
            animate(withDuration: 1.5, animations: {
                self.headingGroup.setAlpha(1.0)
                self.detailGroup.setAlpha(1.0)
            })
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any?
    {
        if segueIdentifier == "KnowMoreSegue"
        {
            return self.herbType
        }
        return nil
    }
}
