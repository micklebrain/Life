//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct FinanceView: View {
    
    @Binding var showingFinance: Bool
    
    var body: some View {
        var level = 27
        var maxLevel = 100
        let cash = 70000
        let lifeRemaining = maxLevel-level
        let moneyToSpendYearly = cash/lifeRemaining
        
        VStack {
            VStack {
                Text("Finance").font(.largeTitle).padding()
                Text("💰Solo funded: $70,000")
                Text("💰Investments: $70,000")
//                Text("Net worth: $100,000 ↠ $150,000")
//                Text("Assets: $70,000 ↠ $100,000")
//                Text("money to spend yearly: $" + String(moneyToSpendYearly))
//                Text("money to spend daily: $" + String(moneyToSpendYearly/365))
//                ProgressView("net worth percentile in USA 2020: 46.5% ", value: 46.5, total: 100)
//                Text("money to spend daily: $" + String(moneyToSpendYearly/365))
//                Text("Stock assets owned: ")
            }
            Button("Back", action: {showingFinance = false})
        }
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
