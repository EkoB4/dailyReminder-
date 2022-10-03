//
//  Notification].swift
//  dailyWordRemember
//
//  Created by VB on 7.09.2022.
//

import SwiftUI

struct NotfyView: View {
    @State private var testViewModal : ViewModal = ViewModal()
    @State private var content = UNMutableNotificationContent()
    var body: some View {
            VStack{
            List(){
                ForEach(testViewModal.MustafaKemal){ mka in
                    Button {
                        content.title = "sa"
                        content.subtitle = "'\(mka.wordVal)'"
                        var notfyComp = DateComponents()
                        notfyComp.day = 1
                        let trigger = UNCalendarNotificationTrigger(dateMatching: notfyComp, repeats: true)
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                        UNUserNotificationCenter.current().add(request)
                    } label: {
                        rowList(value:mka)
                    }
                }
            }
            }
        }
    }

struct Permission: View {
    var body: some View {
        VStack{
            Button {
                let content = UNMutableNotificationContent()
                content.title = "as"
                content.subtitle = "as"
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 4, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            } label: {
                Text("Permission need")
            }
            
        }
    }
}


struct Notification__Previews: PreviewProvider {
    static var previews: some View {
        NotfyView()
    }
}
