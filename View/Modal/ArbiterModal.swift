//
//  ArbiterModal.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation
import SwiftUI
class arbiterModal : ObservableObject {
    
    init(){
        MustafaKemal = AllarbiterFeature.MustafaKemalAtaturk
        MkaWords = arbiterWords.AtaWords
    }
    @Published var MustafaKemal : [AllarbiterFeature]
    @Published var MkaWords : [arbiterWords]
}
