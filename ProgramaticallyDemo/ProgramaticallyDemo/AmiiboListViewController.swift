//
//  ViewController.swift
//  ProgramaticallyDemo
//
//  Created by projas on 3/22/18.
//  Copyright © 2018 Nearsoft. All rights reserved.
//

import UIKit

class AmiiboListViewController: UIViewController {
  
  var amiiboList: [Amiibo] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureModel()
  }
  
  func configureModel() {
    amiiboList = ["Ryu","Waluigi", "Yoshi", "Samus", "Link"].map{ Amiibo(name: $0, image: UIImage(named: $0)!) }
  }
}

