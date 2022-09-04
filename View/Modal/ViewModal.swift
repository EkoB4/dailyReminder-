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
}
