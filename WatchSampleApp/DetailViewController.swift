//
//  DetailViewController.swift
//  WatchSampleApp
//
//  Created by Payal Gupta on 12/11/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var herbType = HerbType.Basil
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.headingLabel.text = String(describing: herbType)
        self.detailLabel.text = herbType.detail
        self.imageView.image = UIImage(named: String(describing: herbType))
    }
    
    @IBAction func onTapKnowMoreButton(_ sender: UIButton)
    {
        let usesController = self.storyboard?.instantiateViewController(withIdentifier: "UsesViewController") as! UsesViewController
        usesController.herbType = self.herbType
        self.navigationController?.pushViewController(usesController, animated: true)
    }
}
