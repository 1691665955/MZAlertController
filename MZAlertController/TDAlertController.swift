//
//  TDAlertController.swift
//  MZAlertController
//
//  Created by 曾龙 on 2021/12/16.
//

import UIKit

class TDAlertController: MZAlertController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bg = UIView.init(frame: CGRect(x: 0, y: 0, width: 300, height: 160))
        bg.center = view.center
        bg.backgroundColor = .white
        bg.layer.cornerRadius = 10
        view.addSubview(bg)
        
        let titleLB = UILabel.init(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        titleLB.textAlignment = .center
        titleLB.textColor = .black
        titleLB.font = .systemFont(ofSize: 18)
        titleLB.text = "Alert Title"
        bg.addSubview(titleLB)
        
        let contentLB = UILabel.init(frame: CGRect(x: 10, y: 50, width: 280, height: 100))
        contentLB.textAlignment = .center
        contentLB.textColor = .gray
        contentLB.font = .systemFont(ofSize: 14)
        contentLB.text = "content content content content content content content content content content content content"
        contentLB.numberOfLines = 0
        bg.addSubview(contentLB)
    }
    
    
    override func dismissController() {
        self.dismiss(animated: true, completion: nil)
    }

}
