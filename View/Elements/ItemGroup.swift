//
//  ItemGroup.swift
//  dailyWordRemember
//
//  Created by VB on 3.10.2022.
//

import Foundation
import SwiftUI

struct RectangleView : View {
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 500, alignment: .center)
        }
    }
}

struct CircleView : View {
    var body: some View{
        VStack{
            Circle()
                .frame(width: 200, height: 250, alignment: .center)
                .padding()
        }
    }
}

struct ElementsPreviews : PreviewProvider{
    static var previews: some View{
        CircleView()
        RectangleView()
    }
}
