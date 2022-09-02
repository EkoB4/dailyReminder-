//
//  listRow.swift
//  dailyWordRemember
//
//  Created by VB on 1.09.2022.
//

import SwiftUI

struct listRow: View {
    let viewModal : itemModal
    var body: some View {
        HStack{
            Image(systemName: viewModal.isFinished ? "infinity.circle" : "infinity.circle.fill")
                .foregroundColor(viewModal.isFinished ? .red : .purple)
                .padding(.trailing,260)
        }
    }
}

struct listRow_Previews: PreviewProvider {
    static var firstItem = itemModal(title: "first item", isFinished: true)
    static var secondItem = itemModal(title: "second item", isFinished: false)
    static var previews: some View {
        Group{
        listRow(viewModal: firstItem)
        listRow(viewModal: secondItem)
        }.previewLayout(.sizeThatFits)
    }
}
