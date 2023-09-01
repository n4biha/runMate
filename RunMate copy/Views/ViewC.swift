//
//  ViewC.swift
//  RunMate
//
//  Created by Nabiha Sharif on 9/1/23.
//

import SwiftUI

struct ViewC: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to RunBot!"]
    var body: some View {
        VStack{
            HStack{
                Text("RunBot")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.brown)
                Image(systemName:"bubble.left.fill")
                    .foregroundColor(Color.brown)
            }
            
            ScrollView{
                ForEach(messages, id: \.self) { message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of:
                            "[USER]", with:"")
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(.brown.opacity(0.75))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 13)
                        }
                    } else {
                        HStack{
                            Text(message)
                                .padding()
                                .background(.brown.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 13)
                            Spacer()
                        }
                    }
                        
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
            
            HStack{
                TextField("Type Here", text: $messageText)
                    .padding()
                    .background(Color.brown.opacity(0.1))
                    .cornerRadius(5)
                    .onSubmit{
                        sendMessage(message:messageText)
                    }
                Button{
                    sendMessage(message:messageText)
                } label: {
                    
                    Image(systemName: "paperplane.fill")
                
                }
                
                .font(.system(size: 30))
                .foregroundColor(Color.brown)
                .padding(.horizontal,10)
            }
            .padding(20)
        }
    }
    
    func sendMessage(message:String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation{
                messages.append(getBotResponse(message: message))
            }
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
