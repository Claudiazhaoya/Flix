//
//  MovieCell.swift
//  Flix
//
//  Created by Zhaoya Sun on 11/12/17.
//  Copyright © 2017 CodePath University. All rights reserved.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var MovieTitle: UILabel!
    @IBOutlet weak var MovieOverview: UILabel!
    var movie: Movie! {
        didSet {
            let title = movie.title
            let overview = movie.overview
            let imagePath = movie.posterUrl
            
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let imageUrl = URL(string: baseURLString + imagePath)!
            MovieTitle.text = title
            MovieOverview.text = overview
            photoImageView.af_setImage(withURL: imageUrl)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
