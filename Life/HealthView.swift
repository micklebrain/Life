//
//  HealthView.swift
//  Life
//
//  Created by Nathan Nguyen on 12/23/22.
//

import SwiftUI

import SwiftUI


struct HealthView: View {
    
    let task = Task {
        for await _ in NotificationCenter.default.notifications(named: .NSCalendarDayChanged) {
            print("day did change")
        }
    }
    
    @State private var isOn = false
    @State var configuration1 = false
    @State var configuration2 = false
    @State var configuration3 = false
    @State var configuration4 = false
    @State var configuration5 = false
    @State var configuration6 = false
    @State var configuration7 = false
    @State var configuration8 = false
    @State var configuration9 = false
    @State var configuration10 = false
    @State var configuration11 = false
    @State var configuration12 = false
    @State var configuration13 = false
    @State var configuration14 = false
    @State var configuration15 = false
    @State var configuration16 = false
    @State var configuration17 = false
    @State var configuration18 = false
    @State var configuration19 = false
    @State var configuration20 = false
    @State var configuration21 = false
    @State var configuration22 = false
    @State var configuration23 = false
    @State var configuration24 = false
    @State var configuration25 = false
    @State var configuration26 = false
    @State var configuration27 = false
    
    var stat1 = HealthStat(name: "8 oz of water")
    
    var body: some View {
        CheckListView()
//        ScrollView {
//            VStack {
//                Text("Daily").padding()
//                Text("Diet").font(.title).padding()
//                Text("Upon waking: The Green Giant").font(.headline).padding()
//                Text("8 oz of water")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 250, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration1 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }
//                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration1.toggle()
//                        }
//                    }
//                Text("Ceylon Cinnamon 1 tsp")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration2 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }
//                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration2.toggle()
//                        }
//                    }
//            }
//            VStack {
//                VStack {
//                    Text("Super Veggie").font(.headline).padding()
//                    Text("Black lentils, 300 grams (weighed cooked)")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration3 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration3.toggle()
//                            }
//                        }
//                }
//                Text("* Broccoli (head+stalk), 250 grams (@ family mart / Ministop)")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration4 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration4.toggle()
//                        }
//                    }
//                Text("Lime, 1 (natural Lawson)")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration5 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration5.toggle()
//                        }
//                    }
//                Text("Cauliflower. 150 grams")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration6 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration6.toggle()
//                        }
//                    }
//                Text("Shiitake or Maitake Mushrooms, 50 grams (@ don quijote)")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration7 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration7.toggle()
//                        }
//                    }
//                VStack {
//                    Text("Cumin, 1 Tbsp")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration8 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration8.toggle()
//                            }
//                        }
//                    Text("Hemp Seeds, 1 Tbsp")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration9 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration9.toggle()
//                            }
//                        }
//                    Text("Apple Cider Vinegar, 1 Tbsp")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration10 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration10.toggle()
//                            }
//                        }
//                    Text("After prep, drizzle 1 Tbsp of Extra Virgin Olive Oil")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration11 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration11.toggle()
//                            }
//                        }
//                }
//            }
//            VStack {
//                Text("Nutty Pudding").font(.headline).padding()
//                Text("1 cup blueberries/raspberries/strawberries (your choice)")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration12 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration12.toggle()
//                        }
//                    }
//                Text("3 Tbsp ground macadamia nuts")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration13 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration13.toggle()
//                        }
//                    }
//                Text("2 tsp of ground walnuts")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration14 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration14.toggle()
//                        }
//                    }
//                Text("50-100 mL Malk Almond Milk")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration15 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration15.toggle()
//                        }
//                    }
//                VStack {
//                    Text("2 oz freshly squeezed pomegranate juice")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration16 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration16.toggle()
//                            }
//                        }
//                }
//            }
//            VStack {
//                Text("Third Meal").font(.headline).padding()
//                Text("Sweet Potato 300 grams cooked (@ don quijote)")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration17 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration17.toggle()
//                        }
//                    }
//                Text("Grape Tomatoes 12")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration18 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration18.toggle()
//                        }
//                    }
//            }
//            VStack {
//                VStack {
//                    Text("Supplements").font(.headline).padding()
//                    Text("Upon waking").padding()
//                    Text("C 500mg")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration19 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration19.toggle()
//                            }
//                        }
//                    Text("D-3 2,000 IU")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration20 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration20.toggle()
//                            }
//                        }
//                    Text("* EPA 500mg with vitamin E 5mg")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration21 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration21.toggle()
//                            }
//                        }
//                    Text("Zinc")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration22 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration22.toggle()
//                            }
//                        }
//                }
//                VStack {
//                    Text("w/Dinner").padding()
//                    Text("C 500mg")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration23 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration23.toggle()
//                            }
//                        }
//
//                    Text("EPA 500mg")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration24 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration24.toggle()
//                            }
//                        }
//
//                    Text("Turmeric 1g")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration25 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration25.toggle()
//                            }
//                        }
//
//                }
//                VStack {
//                    Text("Other").font(.headline).padding()
//                    Text("Extra Virgin Olive Oil, 30mL daily")
//                    RoundedRectangle(cornerRadius: 5.0)
//                        .stroke(lineWidth: 2)
//                        .frame(width: 50, height: 50)
//                        .cornerRadius(5.0)
//                        .overlay {
//                            if configuration26 {
//                                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                            } else {
//                                Image(systemName: "circle")
//                            }                        }
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                configuration26.toggle()
//                            }
//                        }
//                }
//                Text("Fitness").font(.title).padding()
//                Text("Push ups")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration27 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration27.toggle()
//                        }
//                    }
//                Text("Planks")
//                RoundedRectangle(cornerRadius: 5.0)
//                    .stroke(lineWidth: 2)
//                    .frame(width: 50, height: 50)
//                    .cornerRadius(5.0)
//                    .overlay {
//                        if configuration27 {
//                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
//                        } else {
//                            Image(systemName: "circle")
//                        }                    }
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            configuration27.toggle()
//                        }
//                    }
//            }
//        }
    }
}

//struct InventoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryView()
//    }
//}
