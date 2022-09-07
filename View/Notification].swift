//
//  Notification].swift
//  dailyWordRemember
//
//  Created by VB on 7.09.2022.
//

import SwiftUI

struct NotfyView: View {
    @State private var testViewModal : ViewModal = ViewModal()
    var body: some View {
        VStack{
            ForEach(testViewModal.MustafaKemal){ mka in
                Button {
                    let content = UNMutableNotificationContent()
                    content.title = "sa"
                    content.subtitle = "'\(mka.wordVal)'"
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 4, repeats: false)
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request)
                } label: {
                    Text("hellow")
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
        Permission()
    }
}
