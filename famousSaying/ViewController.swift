//
//  ViewController.swift
//  famousSaying
//
//  Created by hwict on 2022/11/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    let quotes = [
        Quote(contents:"죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "벤다이크"),
        Quote(contents:"나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quote(contents:"편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents:"분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quote(contents:"몇 번이라도 좋다! 이 끔직한 생이여.. 다시!", name: "니체")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteCreateBtn(_ sender: UIButton) {
        let random = Int(arc4random_uniform(3)) // 0~2 사이의 난수
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

