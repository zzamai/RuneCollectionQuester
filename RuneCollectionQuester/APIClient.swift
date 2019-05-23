//
//  APIClient.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 12/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import Foundation

class APIClient  {
        
        func getAudiobooksAPI(completion: @escaping () -> Void ){
                
                let url = URL(string: "https://apps.runescape.com/runemetrics/quests?user=Yonsai")
                
                let session = URLSession.shared
                
                guard let unwrappedURL = url else {
                        print("Error unwrapping URL")
                        return
                }
                
                let dataTask = session.dataTask(with: unwrappedURL) { (data, response, error) in
                        
                        guard let data = data else{
                                return
                        }
                        
                        let decoder = JSONDecoder()
                        
                        do{
                                let feed = try decoder.decode(Quests.self, from: data)
                                
//                                for dict in feed{
//                                        let newAudiobook = Audiobook(name: dict.name, author: dict.author, coverImage: dict.coverImage)
//                                        
//                                }
                                
                                DataStore.sharedInstance.quests = feed
 //                               print(DataStore.sharedInstance.quests)
                                completion()
                                
                        }catch{
                                print(error)
                        }
                        
//                        do{
//                                let responseJSON = try JSONSerialization.jsonObject(with: data, options: []) as? Audiobook
//                                completion(responseJSON)
//                        }catch{
//                                print(error)
//                        }
                
                }
                
                dataTask.resume()
        }
}
