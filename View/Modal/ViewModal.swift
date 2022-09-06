//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 4.09.2022.
//

import Foundation
import SwiftUI

class ViewModal : ObservableObject{
    init(){
        MustafaKemal = arbiterModal.MustafaKemalAtaturk
    }
    
    @Published var MustafaKemal : [arbiterModal]
    
    func updateMka(item:arbiterModal){
        if let  index = MustafaKemal.firstIndex(where: {$0.id == item.id }){
            MustafaKemal[index] = item.isItemUpdated()
        }
    }
}
