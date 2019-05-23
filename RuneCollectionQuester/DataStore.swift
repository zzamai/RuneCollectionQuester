//
//  DataStore.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 12/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import Foundation
import UIKit

final class DataStore {
        
        static let sharedInstance = DataStore()
        
        fileprivate init() {}
        
        var quests: Quests?
        var images: [UIImage] = []
        let apiClient = APIClient()
        
        func getBookImages (completion: @escaping () -> Void) {
                apiClient.getAudiobooksAPI {
//                        for book in self.audioBooks {
//
//                                let url = URL(string: book.coverImage)ß
//                                let data = try? Data(contentsOf: url!)
//
//                                if let imageData = data {
//                                        let image = UIImage(data: imageData)
//                                        self.images.append(image!)
//                                }
//                        }
                        DispatchQueue.main.async {
                                completion()
                        }
                }
        }
}
