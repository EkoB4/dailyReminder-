//
//  Notification].swift
//  dailyWordRemember
//
//  Created by VB on 7.09.2022.
//

import SwiftUI

struct Notification_: View {
    @State private var testViewModal : ViewModal = ViewModal()
    var body: some View {
        VStack{
           // ForEach(testViewModal.MustafaKemal){mka in
                Button {
                    let content = UNMutableNotificationContent()
                    content.title = "that is a test"
                    content.subtitle = "sa"
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request)
                } label: {
                    Text("R YOOKKKk")
                }

           // }
        }
    }
}

struct Notification__Previews: PreviewProvider {
    static var previews: some View {
        Notification_()
    }
}
