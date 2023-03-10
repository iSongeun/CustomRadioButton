//
//  ViewController.swift
//  CustomRadioButton
//
//  Created by 이송은 on 2023/03/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var btnCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.layer.cornerRadius = btn.frame.width / 2
        backgroundView.layer.cornerRadius = btn.frame.width / 2
    }


    // round layout , add animation
    @IBAction func clickBtn(_ sender: Any) {
        if btnCenterX.constant == 0{
            btnCenterX.constant = -125
        }else if btnCenterX.constant == -125{
            btnCenterX.constant = 125
//            backgroundView.backgroundColor = .systemPink
        }else if btnCenterX.constant == 125 {
            btnCenterX.constant = -125
//            backgroundView.backgroundColor = .systemCyan
        }
        
        UIView.animate(withDuration: 0.5) {
            // 움직일 때 fade or alpha
            self.view.layoutIfNeeded() //ㅁㅊㄷ;;
            
        }
    }

}

