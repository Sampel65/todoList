//
//  notificationCenter.swift
//  todoList
//
//  Created by Sampel on 20/06/2022.
//

import SwiftUI
import UserNotifications


class NotificationManager{
    static let instance = NotificationManager()
    
    
    func requestAuthorization() {
        
        let option : UNAuthorizationOptions = [.alert, .sound,.badge ]
        UNUserNotificationCenter.current().requestAuthorization(options: option) { success, error in
            if let error = error {
                print("erroer \(error)")
            }
            
            else{
                print("success")
            }
        }
    }
    
    func scheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "You have succesfully added task to do today"
        content.subtitle = "make sure you complete your task for the day"
        content.sound = .default
        content.badge = 1
        
        
        // time
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false )
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}

struct notificationCenter: View {
    var body: some View {
        
        VStack {
            Button("request permisson"){
                NotificationManager.instance.requestAuthorization()
            }
            
            Button("schedule notification"){
                NotificationManager.instance.scheduleNotification()
            }
        }
    }
}

struct notificationCenter_Previews: PreviewProvider {
    static var previews: some View {
        notificationCenter()
    }
}
