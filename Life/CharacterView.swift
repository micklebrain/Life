import SwiftUI
import SceneKit

struct CharacterView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    var level = 28
    var maxLevel = 100
    
    @State private var degrees = 0.0
    @Binding var showingWellness: Bool
    @Binding var showingFinance: Bool
    @Binding var showingMemberships: Bool
    @Binding var showingBackpack: Bool
    
    var toDate = Calendar.current.date(byAdding: DateComponents(year: (72),
                                                                month: (12-Calendar.current.component(.month, from: Date())),
                                                                day: (31-Calendar.current.component(.day, from: Date())),
                                                                hour: (23-Calendar.current.component(.hour, from: Date())),
                                                                minute: (60-Calendar.current.component(.minute, from: Date()))
                                                               ),
                                       to: Date())!
    
    let f = DateFormatter()

    var body: some View {
        let cash = 70000
        let lifeRemaining = maxLevel-level
        let moneyToSpendYearly = cash/lifeRemaining
            VStack {
                //            VStack {
                //                ProgressView("Level: \(String(level))", value: 27.0, total: 100)
                //            }.padding()
                //            TimerView(setDate: toDate)
                SceneView(
                    scene: {
                        let scene = SCNScene(named: "person.obj")!
                        scene.background.contents = UIImage(named: "seoul.jpg")
//                        UIColor.green
                        return scene
                    }(),                        
                    options: [.autoenablesDefaultLighting]
//                    options: [.autoenablesDefaultLighting, .allowsCameraControl]
                ).overlay(itemsOverlay)
                //            VStack {
                //                Text("Pedigree").font(.largeTitle).padding()
                //                Text("Citizenships: 🇺🇸")
                //                //                Text("Bachelor Degree | Masters Degree | PHD")
                //            }.padding()
                //            VStack {
                //                Text("💰Chase ultimate rewards points: 41,551")
                //                Text("American Express points: ")
                //                Text("Elite checking accounts").font(.subheadline).padding()
                //                Text("Chase private client | Bank of America Private Bank | Citigold Private Client | Union Bank Private Advantage Checking Account | HSBC Premier Checking")
                //                    .fixedSize(horizontal: false, vertical: true)
                //                    .frame(maxWidth: .infinity, alignment: .leading)
                //            }
            }
    }
    
    private var itemsOverlay: some View {
        VStack {
            Text("Experience: \(String(level)) years").modifier(characterLabel()).offset(x: 0, y: -220)
            Text("Level: \(f.weekdaySymbols[Calendar.current.component(.weekday, from: Date()) - 1])").modifier(characterLabel()).offset(x: 0, y: -210)
            Button("🫀 HP", action: {showWellness()}).offset(x: -125, y: -200)
            Button("💰 $100,000", action: {showFinance()}).offset(x: -125, y: -190)
            Button("🎫 Guilds", action: {showMemberships()}).offset(x: -125, y: -180)
            Button("🎒 Backpack", action: {showBackpack()}).offset(x: -125, y: -170)
            Text("No alcohol streak 🔥 111 days").modifier(characterLabel()).offset(x: -80, y: -150)
            Text("No fap streak 🔥 111 days").modifier(characterLabel()).offset(x: -80, y: -140)
            Text("No sugar streak 🔥 111 days").modifier(characterLabel()).offset(x: -80, y: -130)
        }
    }
    
    struct characterLabel : ViewModifier {
        func body(content: Content) -> some View {
            content
                .padding(3)
                .background(.white)
        }
    }
    
    func showWellness() {
        showingWellness = true
    }
    
    func showFinance() {
        showingFinance = true
    }
    
    func showMemberships() {
        showingMemberships = true
    }
    
    func showBackpack() {
        showingBackpack = true
    }
}
