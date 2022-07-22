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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "처음으로", style: .plain, target: self, action: #selector(resetButtonClicked1))

        searchViewLabel.text = "서치뷰가 위치할 뷰입니다."
        searchViewLabel.textAlignment = .center
        searchViewLabel.font = .boldSystemFont(ofSize: 25)
        
        //화면전환
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
    }
    
    //화면전환 관련 함수
    @objc func resetButtonClicked1() {
        //iOS13++ 신델리게이트 쓸 때 동작하는 코드
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let sceneDelegate = windowScene?.delegate as? SceneDelegate
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        sceneDelegate?.window?.rootViewController = vc
        sceneDelegate?.window?.makeKeyAndVisible()
    }
    
    @objc
    func closeButtonClicked() {
        self.dismiss(animated: true)
    }
    
    
    

}
