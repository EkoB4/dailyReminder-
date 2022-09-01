//
//  ItemModal.swift
//  dailyWordRemember
//
//  Created by VB on 1.09.2022.
//

import Foundation
struct itemModal : Identifiable, Codable{
    var id : UUID = UUID()
    var title : String
    var isFinished : Bool
}
