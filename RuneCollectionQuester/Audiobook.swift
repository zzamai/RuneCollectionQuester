//
//  Audiobook.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 12/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import Foundation

struct Audiobook: Codable {
        
        let name: String
        let author: String
        let coverImage: String
        
        init(name: String, author: String, coverImage: String){
                
                self.name = name
                self.author = author
                self.coverImage = coverImage
                
        }
        
}
