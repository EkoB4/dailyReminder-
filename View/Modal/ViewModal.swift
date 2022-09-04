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
        MustafaKemal = AllarbiterFeature.MustafaKemalAtaturk
    }
    
    @Published var MustafaKemal : [AllarbiterFeature]
}
