//
//  ViewController.swift
//  Amoureux
//
//  Created by Rean on 2/5/15.
//  Copyright (c) 2015 NYU. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
	
	var sidebar: FrostedSidebar!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		delegate = self
		tabBar.hidden = true
		
		sidebar = FrostedSidebar(itemImages: [
			UIImage(named: "gear")!,
			UIImage(named: "globe")!,
			UIImage(named: "profile")!,
			UIImage(named: "star")!],
			colors: [
				UIColor(red: 240/255, green: 159/255, blue: 254/255, alpha: 1),
				UIColor(red: 255/255, green: 137/255, blue: 167/255, alpha: 1),
				UIColor(red: 126/255, green: 242/255, blue: 195/255, alpha: 1),
				UIColor(red: 119/255, green: 152/255, blue: 255/255, alpha: 1)],
			selectedItemIndices: NSIndexSet(index: 0))
		
		sidebar.isSingleSelect = true
		sidebar.actionForIndex = [
			0: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 0}) },
			1: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 1}) },
			2: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 2}) },
			3: {self.sidebar.dismissAnimated(true, completion: { finished in self.selectedIndex = 3}) }]
	}

}
