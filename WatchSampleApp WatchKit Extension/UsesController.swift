//
//  UsesController.swift
//  WatchSampleApp
//
//  Created by Payal Gupta on 12/11/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import WatchKit
import Foundation

class UsesController: WKInterfaceController
{
    @IBOutlet var tableView: WKInterfaceTable!
    @IBOutlet var headingLabel: WKInterfaceLabel!
    @IBOutlet var backgroundGroup: WKInterfaceGroup!
    
    override func awake(withContext context: Any?)
    {
        super.awake(withContext: context)
        if let context = context as? HerbType
        {
            headingLabel.setText(String(describing: context))
            self.backgroundGroup.setBackgroundImageNamed(String(describing: context))
            self.setupTable(herbUsesArray: context.usesArray)
        }
    }
    
    func setupTable(herbUsesArray : [String])
    {
        self.tableView.setNumberOfRows(herbUsesArray.count, withRowType: "CustomTableRow")
        for (index, herbUse) in herbUsesArray.enumerated()
        {
            if let row = self.tableView.rowController(at: index) as? CustomTableRow
            {
                row.herbUseLabel.setText(herbUse)
            }
        }
    }
}
