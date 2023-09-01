//
//  runBotReply.swift
//  RunMate
//
//  Created by Nabiha Sharif on 9/1/23.
//

import Foundation

func getBotResponse(message:String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hi") {
        return "Hello!"
    } else if tempMessage.contains("bye") {
        return "Talk Soon!"
    } else if tempMessage.contains("how are you"){
        return "I'm Great! How can I help you today!"
    }else{
        return "I'm sorry I don't understand. Could you please repeat your message?"
    }
    
}
