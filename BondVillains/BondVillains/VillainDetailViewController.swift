//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Steven Xu on 2016-01-31.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class VillainDetailViewController: UIViewController {
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var label: UILabel!

	var vil: Villain?

	override func viewWillAppear(animated: Bool) {
		self.imageView.image = UIImage(named: self.vil!.imageName)!
		self.label.text = vil?.name
	}
}