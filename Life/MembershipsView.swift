//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct MembershipsView: View {
    
    @Binding var showingMemberships: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Memberships").font(.largeTitle).padding()
            }
            VStack {
                Text("Housing").font(.largeTitle).padding()
                Text("🏨 Bookings.com Genius Level 3")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                //                Text("Hyatt \n**Member** ↠ Discoverist | Explorist | Globalist | Lifetime Globalist")
                //                    .fixedSize(horizontal: false, vertical: true)
                //                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                //                Text("Best Western \nPoints (never expire*): 0").padding()
            }.padding()
            VStack {
                Text("Transportation").font(.largeTitle).padding()
                Text("✈️ United: 12,005 miles")
                Text("✈️ Delta: 6,337 miles")
            }.padding()
            VStack {
                Text("Wellness clubs").font(.largeTitle).padding()
                //                Text("🏋️‍♂️ Anytime fitness")
            }.padding()
            VStack {
                Text("Locked").font(.largeTitle).padding()
                Text("Bugatti owners club").modifier(Title())
                Text("Harvard Alumni").modifier(Title())
            }
            VStack {
                Text("Marriot lifetime silver elite").modifier(Title())
                Text("Marriot lifetime gold elite").modifier(Title())
                Text("Marriot lifetime platinum elite").modifier(Title())
                Text("Hyatt lifetime globalist").modifier(Title())
                Text("Hilton Lifetime Diamond Member").modifier(Title())
                Text("United million miller").modifier(Title())
                Text("Delta million miller").modifier(Title())
                Text("Apec travel").modifier(Title())
            }
            VStack {
                Text("CEO of fortune 500 company").modifier(Title())
                Text("President of United States").modifier(Title())
                Text("Ambassador of country").modifier(Title())
                Text("ISDA bank").modifier(Title())
                Text("NBA").modifier(Title())
                Text("Youtube Silver: 100,000 subscribers.").modifier(Title())
                Text("Youtube Gold: 1,000,000 subscribers.").modifier(Title())
                Text("Youtube Diamond: 10,000,000 subscribers.").modifier(Title())
                Text("Youtube  Red Diamond: 50,000,000 subscribers.").modifier(Title())
            }.padding()
            Button("Back", action: {showingMemberships = false})
        }
    }
}

struct Title : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity,
                   minHeight: 50)
            .padding(3)
            .border(.red, width: 2)
            .cornerRadius(25)
        
    }
}

struct TitleGreen : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity,
                   minHeight: 50)
            .padding(3)
            .border(.green, width: 2)
            .cornerRadius(25)
        
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
