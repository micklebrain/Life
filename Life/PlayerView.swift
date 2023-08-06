//
//  ContentView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct PlayerView: View {
    
    var level = 28
    var maxLevel = 100
    
    @State private var degrees = 0.0
    
    var toDate = Calendar.current.date(byAdding: DateComponents(year: (72),
                                                                month: (12-Calendar.current.component(.month, from: Date())),
                                                                day: (31-Calendar.current.component(.day, from: Date())),
                                                                hour: (23-Calendar.current.component(.hour, from: Date())),
                                                                minute: (60-Calendar.current.component(.minute, from: Date()))
                                                               ),
                                       to: Date())!
    
    var body: some View {
        let cash = 70000
        let lifeRemaining = maxLevel-level
        let moneyToSpendYearly = cash/lifeRemaining
                        
        ScrollView {
            Text("Life")
            VStack {
                ProgressView("Level: \(String(level))", value: 28.0, total: 100)
            }.padding()
            TimerView(setDate: toDate)            
            VStack {
                Image("character")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
                Slider(value: $degrees, in: 0...1080).padding()
            }
            VStack {
                Text("Pedigree").font(.largeTitle).padding()
                Text("Citizenships: 🇺🇸")
                //                Text("Bachelor Degree | Masters Degree | PHD")
            }.padding()
            VStack {
                Text("Finance").font(.largeTitle).padding()
                Text("Net worth: $100,000 ↠ $150,000")
                Text("💰Solo funded: $90,000")
                Text("💰Mainvest funded: $7,800")
                Text("Assets: $70,000 ↠ $100,000")
                Text("money to spend yearly: $" + String(moneyToSpendYearly))
                Text("money to spend daily: $" + String(moneyToSpendYearly/365))
                ProgressView("net worth percentile in USA 2020: 46.5% ", value: 46.5, total: 100)
                Text("money to spend daily: $" + String(moneyToSpendYearly/365))
                Text("Stock assets owned: ")
            }
            VStack {
                Text("💰Chase ultimate rewards points: 41,551")
                Text("American Express points: ")
                Text("Elite checking accounts").font(.subheadline).padding()
                Text("Chase private client | Bank of America Private Bank | Citigold Private Client | Union Bank Private Advantage Checking Account | HSBC Premier Checking")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            VStack {
                Text("Housing").font(.largeTitle).padding()
                Text("**Rent** ↠ Own | Rent & Own | Free housing")
                Text("Hotels rewards").font(.subheadline).padding()
                Text("🏨 Bookings.com Genius Level 2")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                Text("Hyatt \n**Member** ↠ Discoverist | Explorist | Globalist | Lifetime Globalist")
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                Text("Best Western points (never expire*): ").padding()
            }.padding()
            VStack {
                Text("Transportation").font(.largeTitle).padding()
                Text("Airlines rewards (never expire*)").font(.subheadline).padding()
                Text("✈️ United: 12,005 miles")
                Text("✈️ Delta: 6,337 miles")
            }.padding()
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

struct TimerView: View {
    @State var nowDate: Date = Date()
    let setDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in
            self.nowDate = Date()
        })
    }
    
    var body: some View {
        Text(countdown(from: setDate))
            .onAppear(perform: {self.timer})
    }
    
    func countdown(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar.dateComponents([.year, .day, .hour, .minute, .second], from: nowDate, to: setDate)
        return String(format: "%2d years %2d days %02d:%02d:%02d",
                      timeValue.year!,
                      timeValue.day!,
                      timeValue.hour!,
                      timeValue.minute!,
                      timeValue.second!
        )
        
    }
}
