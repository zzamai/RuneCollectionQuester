//
//  CollectionViewCell.swift
//  RuneCollectionQuester
//
//  Created by Vinicius Zamai on 11/03/2019.
//  Copyright © 2019 Vinicius Zamai. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
        
        @IBOutlet var bookLabel: UILabel!
        @IBOutlet var difficultyLabel: UILabel!
        @IBOutlet var elegibleLabel: UILabel!
        @IBOutlet var questPoints: UILabel!
        @IBOutlet weak var membersLabel: UILabel!
        @IBOutlet weak var statusLabel: UILabel!
        
        override func awakeFromNib() {
                super.awakeFromNib()
        }
        
        let questDifficulties = ["Novice","Intermediate","Experient","Master","GrandMaster","Special"]
        
        func displayContent(title:  String, difficulty: Int, eligible: Bool, questPointsShow: Int, members: Bool, status: String){
                
                bookLabel.text = title
                
                statusLabel.text = status
                if status == "COMPLETED" {
                        statusLabel.backgroundColor = UIColor.green
                } else if status == "NOT_STARTED" {
                        statusLabel.backgroundColor = UIColor.red
                } else {
                        statusLabel.backgroundColor = UIColor.yellow
                        statusLabel.textColor = UIColor.black
                }
                
                questPoints.text = questPointsShow.description
                
                if !eligible {
                        elegibleLabel.text = "not"
                }else{
                        elegibleLabel.text = " "
                }
                
                if !members {
                     membersLabel.isHidden = true
                }
                
                if difficulty == 0{
                        difficultyLabel.text = questDifficulties[0]
                        difficultyLabel.backgroundColor = UIColor.green
                        difficultyLabel.textColor = UIColor.black
                } else if difficulty == 1 {
                        difficultyLabel.text = questDifficulties[1]
                        difficultyLabel.backgroundColor = UIColor.yellow
                        difficultyLabel.textColor = UIColor.black
                } else if difficulty == 2 {
                        difficultyLabel.text = questDifficulties[2]
                        difficultyLabel.backgroundColor = UIColor.orange
                } else if difficulty == 3 {
                        difficultyLabel.text = questDifficulties[3]
                        difficultyLabel.backgroundColor = UIColor.red
                }  else if difficulty == 4 {
                        difficultyLabel.text = questDifficulties[4]
                        difficultyLabel.backgroundColor = UIColor.purple
                } else {
                        difficultyLabel.text = questDifficulties[5]
                        difficultyLabel.backgroundColor = UIColor.black
                        difficultyLabel.textColor = UIColor.white
                }
                
        }
}

