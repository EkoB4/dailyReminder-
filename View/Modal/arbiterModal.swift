//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation


struct arbiterModal : Identifiable{
    var id : UUID = UUID()
    var wordVal : String
    var isFinished : Bool
}

extension arbiterModal {
    static var MustafaKemalAtaturk = [arbiterModal(wordVal:"sa", isFinished: true)]
}

