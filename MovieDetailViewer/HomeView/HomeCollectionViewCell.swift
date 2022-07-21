//
//  HomeCollectionViewCell.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    
    func configureCell(data: Movie) {
        titleImage.image = UIImage(named: data.image)
        titleImage.contentMode = .scaleToFill
        
        movieTitle.text = data.title
        movieTitle.font = .boldSystemFont(ofSize: 15)
        movieTitle.textAlignment = .center
        movieTitle.textColor = .black
    }
}



