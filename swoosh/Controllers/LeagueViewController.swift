//
//  LeagueViewController.swift
//  swoosh
//
//  Created by Akhil Raj Arimbra on 7/24/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func onNextButtonTapped(_ sender: Any) {
    performSegue(withIdentifier: "skillVCSegue", sender: self)
  }
  
}

