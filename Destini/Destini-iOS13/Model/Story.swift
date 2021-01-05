//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Antony Balaev on 08/08/2019.
//  Copyright © 2021 Antony Balaev. All rights reserved.
//

import Foundation

// Создаем новую структуру истории
struct Story {
    
//    Создаем все пропетри
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
//    Создаем структкру инита
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice1Destination = choice1Destination
        self.choice2Destination = choice2Destination
    }
}
