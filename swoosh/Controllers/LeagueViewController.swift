//
//  LeagueViewController.swift
//  swoosh
//
//  Created by Akhil Raj Arimbra on 7/24/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
  @IBOutlet weak var nextButton: BorderButton!
  
  var player: Player!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    player = Player()
  }
  
  @IBAction func onNextButtonTapped(_ sender: Any) {
    performSegue(withIdentifier: "skillVCSegue", sender: self)
  }
  
  @IBAction func onMensButtonTapped(_ sender: Any) {
    selectLeague(leagueType: "mens")
  }
  
  @IBAction func onWomensButtonTapped(_ sender: Any) {
    selectLeague(leagueType: "womens")
  }
  
  @IBAction func onCoEdButtonTapped(_ sender: Any) {
    selectLeague(leagueType: "coed")
    
  }
  
  func selectLeague(leagueType: String) {
    player.desiredLeague = leagueType
    nextButton.isEnabled = true
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let skillVC = segue.destination as? SkillViewController {
      skillVC.player = player
    }
  }
  
}

