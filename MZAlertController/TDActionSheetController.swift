//
//  TDActionSheetController.swift
//  MZAlertController
//
//  Created by 曾龙 on 2021/12/16.
//

import UIKit

class TDActionSheetController: MZActionSheetController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.Height = 200 + (SCREEN_HEIGHT >= 812 ? 34: 0)
        
        let bg = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 200))
        bg.backgroundColor = .white
        view.addSubview(bg)
        
        let titleLB = UILabel.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 40))
        titleLB.textAlignment = .center
        titleLB.textColor = .black
        titleLB.font = .systemFont(ofSize: 18)
        titleLB.text = "ActionSheet Title"
        bg.addSubview(titleLB)
        
        let contentLB = UILabel.init(frame: CGRect(x: 0, y: 40, width: SCREEN_WIDTH, height: 40))
        contentLB.textAlignment = .center
        contentLB.textColor = .gray
        contentLB.font = .systemFont(ofSize: 14)
        contentLB.text = "action one"
        contentLB.isUserInteractionEnabled = true
        bg.addSubview(contentLB)
        
        let contentLB1 = UILabel.init(frame: CGRect(x: 0, y: 80, width: SCREEN_WIDTH, height: 40))
        contentLB1.textAlignment = .center
        contentLB1.textColor = .gray
        contentLB1.font = .systemFont(ofSize: 14)
        contentLB1.text = "action two"
        contentLB1.isUserInteractionEnabled = true
        bg.addSubview(contentLB1)
        
        let contentLB2 = UILabel.init(frame: CGRect(x: 0, y: 120, width: SCREEN_WIDTH, height: 40))
        contentLB2.textAlignment = .center
        contentLB2.textColor = .gray
        contentLB2.font = .systemFont(ofSize: 14)
        contentLB2.text = "action three"
        contentLB2.isUserInteractionEnabled = true
        bg.addSubview(contentLB2)
        
        let contentLB3 = UILabel.init(frame: CGRect(x: 0, y: 160, width: SCREEN_WIDTH, height: 40))
        contentLB3.textAlignment = .center
        contentLB3.textColor = .gray
        contentLB3.font = .systemFont(ofSize: 14)
        contentLB3.text = "cancel"
        contentLB3.isUserInteractionEnabled = true
        bg.addSubview(contentLB3)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapActionOne))
        contentLB.addGestureRecognizer(tap)
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapActionTwo))
        contentLB1.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(tapActionThree))
        contentLB2.addGestureRecognizer(tap2)
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(tapCancel))
        contentLB3.addGestureRecognizer(tap3)
        
    }
    
    @objc func tapActionOne() {
        NSLog("tapActionOne")
    }
    
    @objc func tapActionTwo() {
        NSLog("tapActionTwo")
    }
    
    @objc func tapActionThree() {
        NSLog("tapActionThree")
    }
    
    @objc func tapCancel() {
        self.dismiss(animated: true, completion: nil)
    }

}
