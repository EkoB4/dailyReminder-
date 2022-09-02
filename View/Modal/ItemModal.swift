//
//  ItemModal.swift
//  dailyWordRemember
//
//  Created by VB on 1.09.2022.
//

import Foundation
import SwiftUI
struct itemModal : Identifiable, Codable{
    var id : UUID = UUID()
    var title : String
    var isFinished : Bool
}

struct toggleFuncStructure{
    @State private var isFinished : Bool 
    func toggleFunc(){
        Toggle(isOn: $isFinished ) {
            if isFinished == true{
                Text("sa")
            }
        }
    }
}
