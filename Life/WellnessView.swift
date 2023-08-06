//
//  StatView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

struct WellnessView: View {
    
    @Binding var showingWellness: Bool
    
    var body: some View {
        VStack {
            Text("Health").font(.largeTitle).padding()
            VStack {
                Text("䷧ 🩸 ALT: ")
                Text("BMI: ")
                Text("Fasting plasma glucose: ")
                Text("Body Fat: ")
                Text("🩸 Cholesterol (total): ")
                Text("🧬 DHEA: ")
            }
            VStack {
                Text("Free Testosterone: ")
                Text("GGT: ")
                Text("Glutathione: ")
                Text("Grip Strength Dominant: ")
                Text("Grip Strength Non-dominant: ")
                Text("🩸 HbA1C: ")
                Text("HDL: ")
                Text("hsCRP: ")
                Text("IGF-1: ")
                Text("heart🫀 LDL: ")
            }
            VStack {
                Text("NAD: ")
                Text("PSA: ")
                Text("RDW: ")
                Text("SHBG: ")
                Text("SHBG: ")
                Text("TSH: ")
                Text("Triglycerides: ")
                Text("Testosterone: ")
                Text("VO2 max treadmill: ")
                Text("WBC: ")
            }
            Text("20th percentile telomeres PBMC: ")
            Button("Back", action: {showingWellness = false})
        }
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
