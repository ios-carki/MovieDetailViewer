//
//  SearchViewController.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchViewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchViewLabel.text = "서치뷰가 위치할 뷰입니다."
        searchViewLabel.textAlignment = .center
        searchViewLabel.font = .boldSystemFont(ofSize: 25)
    }
    

}
