//
//  rowList.swift
//  dailyWordRemember
//
//  Created by VB on 4.09.2022.
//

import Foundation
import SwiftUI

struct rowList : View{
    let value : arbiterModal
    var body: some View{
        HStack{
            Image(systemName: value.isFinished ? "bolt.circle" : "bolt.circle.fill")
                .foregroundColor(value.isFinished ? .purple : .red)
            Text(value.wordVal)
            Spacer()
        }
    }
}

struct listPreviews : PreviewProvider {
    
    static var firstItem = arbiterModal(wordVal: "first Item", isFinished: true)
    static var secondItem = arbiterModal(wordVal: "second Item", isFinished: false)
    static var previews: some View{
        Group{
            rowList(value: firstItem)
            rowList(value: secondItem)
        }.previewLayout(.sizeThatFits)
    }
}
