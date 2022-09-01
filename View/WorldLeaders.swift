//
//  WorldLeaders.swift
//  dailyWordRemember
//
//  Created by VB on 31.08.2022.
//

import Foundation
import SwiftUI

struct WorldLeaders : View{
    @StateObject private var leadersModal : arbiterModal = arbiterModal()
    var body: some View{
        NavigationView{
            VStack{
                List(){
                    Section{
                        ForEach(leadersModal.MkaWords){mka in
                            Text(mka.AtaturkWords)
                        }
                    }header: {
                        Text("Mustafa Kemal Ataturk")
                            .font(.system(size:35))
                            .bold()
                            
                    }
                }
            }.navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct Previews : PreviewProvider{
    static var previews: some View{
        WorldLeaders()
    }
}
/*
 List{
 ForEach(0..<Texts.count){t in
 NavigationLink {
 Text("\(self.Texts[t])")
 } label: {
 Text("\(self.Texts[t].description)")
 }
 
 }
 }
 */
