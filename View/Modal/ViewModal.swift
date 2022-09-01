//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation


struct AllarbiterFeature : Identifiable{
    var id : UUID = UUID()
    var name : String
    var surname : String
    var bornDate : String
    var deadDate : String
}

extension AllarbiterFeature {
    static var MustafaKemalAtaturk = [AllarbiterFeature(name:"",surname: "",bornDate: "",deadDate: "")]
}

struct arbiterWords : Identifiable{
    var id : UUID = UUID()
    var AtaturkWords : String
}

extension arbiterWords{
    static var AtaWords = [
        arbiterWords(AtaturkWords: "Benim naçiz vücudum elbet bir gün toprak olacaktır, ancak Türkiye Cumhuriyeti ilelebet payidar kalacaktır."),
        arbiterWords(AtaturkWords: "Bu millete çok şey öğretebildim ama onlara uşak olmayı bir türlü öğretemedim."),
        arbiterWords(AtaturkWords: "Yurtta sulh, cihanda sulh.")
    ]
}

