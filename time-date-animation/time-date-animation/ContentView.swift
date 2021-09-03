//
//  ContentView.swift
//  time-date-animation
//
//  Created by rutik maraskolhe on 03/09/21.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Date and Time in SwiftUI")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            // 4 hour Range
            Text("4 hour range: ").font(.system(.headline)).foregroundColor(Color(.systemBlue)) + Text(Date()...Date().addingTimeInterval(3600*4))
            
            // Today's date
            Text("Today's date: ").font(.system(.headline)).foregroundColor(Color(.systemBlue)) + Text(Date().addingTimeInterval(600), style: .date)
            
            // Current time
            Text("Current time: ").font(.system(.headline)).foregroundColor(Color(.systemBlue)) + Text(Date().addingTimeInterval(600), style: .time)
            
            // Counter: relative countdown timer
            Text("Relative: ").font(.system(.headline)).foregroundColor(Color(.systemBlue)) + Text(Date().addingTimeInterval(600), style: .relative)
            
            // Counter: Regular 30 minutes countdown timer
            Text("Regular: ").font(.system(.headline)).foregroundColor(Color(.systemBlue)) + Text(Date().addingTimeInterval(1800), style: .timer)
        }.padding(.vertical, 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

