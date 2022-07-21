//
//  WebViewController.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = "웹 컨트롤뷰가 자리할 뷰 입니다."
        testLabel.textAlignment = .center
        testLabel.font = .boldSystemFont(ofSize: 25)
        
    }
    

    

}
