import Subsonic
import SwiftUI

struct ContentView: View {
    @State var count1 = 0
    @State var count2 = 0
    var body: some View {
        HStack(spacing: 200) {
        VStack {
            Image("Title")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 260)
            Text(String(count1))
                .font(.system(size:64))
            Button("Press to Add 🤩") {
                play(sound: "Me.m4a")
                self.count1+=1
            }
            .padding()
            .foregroundColor(.blue)
            .background(.white)
            .font(.title)
            .border(Color.blue, width:2)
            .padding()
            .padding()
            Button("Reset (Player 1)") {
                self.count1 = 0
            }
            .padding()
            .foregroundColor(.red)
            .background(.white)
            .font(.title)
            .border(Color.red, width:2)
        }
            VStack {
                Image("Title")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 260)
                Text(String(count2))
                    .font(.system(size:64))
                Button("Press to Add 🤩") {
                    play(sound: "Soh.m4a")
                    self.count2+=1
                }
                .padding()
                .foregroundColor(.blue)
                .background(.white)
                .font(.title)
                .border(Color.blue, width:2)
                .padding()
                .padding()
                Button("Reset (Player 2)") {
                    self.count2 = 0
                }
                .padding()
                .foregroundColor(.red)
                .background(.white)
                .font(.title)
                .border(Color.red, width:2)
            }
            
        }
    }
}
