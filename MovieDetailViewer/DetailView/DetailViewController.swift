//
//  DetailViewController.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nextViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonDesign(btn: nextViewButton)
    }
    
    func buttonDesign(btn: UIButton) {
        btn.setTitle("다음뷰로 넘어가기", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.backgroundColor = .blue
    }
    @IBAction func webViewBtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
