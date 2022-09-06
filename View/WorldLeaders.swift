//
//  WorldLeaders.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation
import SwiftUI

struct WorldLeaders : View{
    @StateObject var viewModal : ViewModal = ViewModal()
    var body: some View{
        VStack{
            List(){
                ForEach(viewModal.MustafaKemal){mka in
                    rowList(value: mka)
                        .onTapGesture {
                            withAnimation(.linear) {
                                viewModal.updateMka(item: mka)
                            }
                        }
                }
            }
        }
    }
}

struct Previews : PreviewProvider{
    static var previews: some View{
        WorldLeaders()
    }
}

