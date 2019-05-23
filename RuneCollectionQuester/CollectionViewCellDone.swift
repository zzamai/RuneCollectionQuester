//
//  CollectionViewCellDone.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 18/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCellDone: UICollectionViewCell {
        
        @IBOutlet var statusLabel: UILabel!
        
        override func awakeFromNib() {
                super.awakeFromNib()
        }
        
        func displayContent(status: String){
                
                statusLabel.text = status
                
        }
        
}
