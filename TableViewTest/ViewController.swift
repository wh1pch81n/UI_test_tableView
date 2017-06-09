//
//  ViewController.swift
//  TableViewTest
//
//  Created by Derrick Ho on 4/20/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	var tableView = UITableView(frame: CGRect.zero, style: UITableViewStyle.plain)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		view.addSubview(tableView)
		tableView.frame = view.frame
		tableView.dataSource = self
		tableView.delegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 500000
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
		
		cell.textLabel!.text = indexPath.description
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let vc = UIViewController()
		let label = UILabel()
		label.text = indexPath.description + "success"
        label.textColor = .white
        
        vc.view = label
        vc.view.backgroundColor = .black
		
		self.show(vc, sender: self)
	}
	
}

