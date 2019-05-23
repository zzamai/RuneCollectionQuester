//
//  Quest.swift
//  RuneQuester
//
//  Created by Vinícius Zamai on 27/02/19.
//  Copyright © 2019 Vinícius Zamai. All rights reserved.
//

import Foundation

public struct Quests: Codable { // Struct que irá receber da API um JSON, e é do tipo Codable pra podermos codificar e decodificar depois
        
        let content: [Quest] // content é do tipo Array de Quest
        
        enum CodingKeys: String, CodingKey { // enum CondingKeys recebe Strings que podem ser codificadas e decodificadas
                case content = "quests" //caso seja quests..
        }
}

public struct Quest: Codable { // Struct Quest que pode ser codificada e decodificada
        let title: String
        let difficulty: Int
        let userEligible: Bool
        let questPoints: Int
        let members: Bool
        let status: String
}
