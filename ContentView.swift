import SwiftUI
import AVFoundation
struct ContentView: View {
    @State var userInput = ""
    var body: some View {
        VStack {
            Text("Hello")
                .font(.system(size: 80))
                .fontWeight(.heavy)
            
            Image("Cath")
                .resizable()
                .scaledToFit()
            
            TextField("Enter your text",text: $userInput)
                .padding()
                .font(.system(.title,design: .rounded))
                .border(.purple,width: 1.0)
                .padding()
        Button { 
            let utterance = AVSpeechUtterance(string: userInput)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        } label: { 
            Text("Speak")
                .fontWeight(.bold)
                .font(.system(.title,design: .rounded))
        }
        .padding()
        .foregroundColor(.white)
        .background(.purple)
        .cornerRadius(20)
        }
    }
}
