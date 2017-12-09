//
//  Movie.swift
//  Flix
//
//  Created by Zhaoya Sun on 12/9/17.
//  Copyright © 2017 CodePath University. All rights reserved.
//

import Foundation
class Movie {
    var title: String
    var overview: String
    var posterUrl: String
    var backdropBathUrl: String
    var releaseDate: String
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        posterUrl = dictionary["poster_path"] as? String ?? "No poster"
        backdropBathUrl = dictionary["backdrop_path"] as? String ?? "No background Image"
        releaseDate = dictionary["release_date"] as? String ?? "Release Date unknown"
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }

}
