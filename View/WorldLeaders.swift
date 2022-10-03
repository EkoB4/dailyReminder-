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
                    Button {
                        let ataContent = UNMutableNotificationContent()
                        ataContent.title = "Ata diyor ki :"
                        ataContent.subtitle = "\(mka)"
                        var day = DateComponents()
                        day.day = 1
                        let trigger = UNCalendarNotificationTrigger(dateMatching: day, repeats: true)
                        print("the time is set:\(day)")
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: ataContent, trigger: trigger)
                        UNUserNotificationCenter.current().add(request)
                    } label: {
                        rowList(value: mka)
                            .foregroundColor(.black)
                            .onTapGesture {
                                withAnimation {
                                    viewModal.updateMka(item: mka)
                                }
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

