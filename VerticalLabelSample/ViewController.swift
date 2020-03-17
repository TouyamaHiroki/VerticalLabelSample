//
//  ViewController.swift
//  VerticalLabelSample
//
//  Created by 藤山裕輝 on 2020/03/17.
//  Copyright © 2020 藤山裕輝. All rights reserved.
//

import UIKit
import TTTAttributedLabel

class ViewController: UIViewController {
    
    var myLabel: TTTAttributedLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Viewサイズを位置配置
        myLabel = TTTAttributedLabel(frame: CGRect(x: 0, y: 0, width: 500, height: 30))
        myLabel.center.x = self.view.frame.width - 15 - 30
        myLabel.center.y = 250 + 100
        view.addSubview(myLabel)
        
        myLabel.verticalAlignment = .top
        
        // view中心をZ軸に右に90度回転する
        let angle = CGFloat.pi / 2
        myLabel.transform = CGAffineTransform(rotationAngle: angle)
        
        let text = "サンプルテキスト"
        
        // 表示テキストの設定
        myLabel.setText(text) { (NSMutableAttributedString) -> NSMutableAttributedString? in
            NSMutableAttributedString!.addAttribute(NSAttributedString.Key.init(kCTVerticalFormsAttributeName as String), value: true, range: NSMakeRange(0, NSMutableAttributedString!.length))
            return NSMutableAttributedString
        }
    }


}

