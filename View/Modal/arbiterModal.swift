//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation


struct AllarbiterFeature : Identifiable{
    var id : UUID = UUID()
    var wordVal : String
 
}

extension AllarbiterFeature {
    static var MustafaKemalAtaturk = [AllarbiterFeature(wordVal:"sa")]
}
