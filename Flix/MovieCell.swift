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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
