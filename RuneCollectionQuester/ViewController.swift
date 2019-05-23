//
//  ViewController.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 11/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        @IBOutlet weak var collectionView: UICollectionView!
        
        let store = DataStore.sharedInstance

        override func viewDidLoad() {
                super.viewDidLoad()
                
                collectionView.dataSource = self
                
                store.getBookImages {
                        self.collectionView.reloadData()
                }
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return store.quests?.content.count ?? 0
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RuneCell", for: indexPath) as! CollectionViewCell
                
                let book = store.quests?.content[indexPath.row]
                
                cell.displayContent(title: book?.title ?? "", difficulty: book?.difficulty ??  0, eligible: book?.userEligible ?? false, questPointsShow: book?.questPoints ?? 0, members: book?.members ?? false, status: book?.status ?? "")
                
                return cell
                
        }
        
}

