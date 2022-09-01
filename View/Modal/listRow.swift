//
//  listRow.swift
//  dailyWordRemember
//
//  Created by VB on 1.09.2022.
//

import SwiftUI

struct listRow: View {
    let isFinished : Bool = true
    let viewModal : itemModal
    var body: some View {
        HStack{
            Image(systemName: isFinished ? "infinity.circle" : "infinity.circle.fill")
                .foregroundColor(isFinished ? .red : .black)
                .padding(.trailing,260)
        }
    }
}

struct listRow_Previews: PreviewProvider {
    static var firstItem = itemModal(title: "first item", isFinished: true)
    static var secondItem = itemModal(title: "second item", isFinished: true)
    static var previews: some View {
        Group{
        listRow(viewModal: firstItem)
        listRow(viewModal: secondItem)
        }.previewLayout(.sizeThatFits)
    }
}
