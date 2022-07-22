//
//  HomeCollectionViewController.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit


class HomeCollectionViewController: UICollectionViewController {
    var movieList = movieDetail()
    
    //데이터 전달
//    var movieData: Movie? // 따로따로 프로퍼티를 생성하지 않고 하나의 구조체 전체를 전달 받는 이유
    //1.귀찮아서 2.


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //컬렉션뷰의 셀 크기, 셀 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8 //간격
        let width = UIScreen.main.bounds.width - (spacing * 4) //셀 간격개수(셀이 3개면 간격은 4개)
        
        layout.itemSize = CGSize(width: (width / 3), height: (width / 3) * 1.2) // 디바이스 넓이 기준으로 3개씩 배치
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //1. 값 전달 - 데이터를 받을 공간(프로퍼티) 생성
//        var textFieldPlaceholder = ""
        
//        //3값전달
//        userTextField.text = ""
//        testTextField.placeholder = textFieldPlaceholder
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        let r : CGFloat = CGFloat.random(in: 0.7...1)
        let g : CGFloat = CGFloat.random(in: 0.7...1)
        let b : CGFloat = CGFloat.random(in: 0.7...1)

        cell.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        cell.layer.cornerRadius = 20
        
        let data = movieList.movie[indexPath.row]
        cell.configureCell(data: data)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
//        vc.textfieldHolder = "도서입력 ㄱ ㄱ"
//        //3값전달
//        userTextField.text = ""
//        testTextField.placeholder = textFieldPlaceholder
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func searchViewButton(_ sender: UIBarButtonItem) {
        //1. 값 전달 - 데이터를 받을 공간(프로퍼티) 생성
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        
        //3.화면전환
        self.present(nav, animated: true)
    }
    
    


}
