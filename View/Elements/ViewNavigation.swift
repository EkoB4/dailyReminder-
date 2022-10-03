//
//  ViewNavigation.swift
//  dailyWordRemember
//
//  Created by VB on 3.10.2022.
//

import Foundation
import SwiftUI

struct AtaturkView : View{
    @State private var Modal : ViewModal = ViewModal()
    @State private var NotificationContent = UNMutableNotificationContent()
    var body: some View{
            VStack{
                    List(){
                        ForEach(Modal.MustafaKemal){ ata in
                        Button {
                            NotificationContent.title = "sa"
                            NotificationContent.subtitle = "'\(ata.wordVal)'"
                            var dateComp = DateComponents()
                            dateComp.hour = 1
                            var trigger  = UNCalendarNotificationTrigger(dateMatching: dateComp, repeats: true)
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: NotificationContent, trigger: trigger)
                            UNUserNotificationCenter.current().add(request)
                            
                        } label: {
                            rowList(value:ata)
                        }

                    }
                }
            }.padding(40)
            
    }
}

struct ViewPreviews : PreviewProvider{
    static var previews: some View{
        AtaturkView()
    }
}
