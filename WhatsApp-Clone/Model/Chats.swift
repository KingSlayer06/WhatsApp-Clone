//
//  Chats.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 09/07/23.
//

import Foundation

struct Chats: Identifiable {
    let id = UUID()
    let profileImage: String
    let chatTitle: String
    let chatDescription: String
    let time: String
}

struct Calls: Identifiable {
    let id = UUID()
    let profileImage: String
    let callTitle: String
    let time: String
}

struct Status: Identifiable {
    let id = UUID()
    let profileImage: String
    let statusTitle: String
    let time: String
}

struct DummyData {
    static let chats = [
        Chats(profileImage: "Astra",
              chatTitle: "Astra",
              chatDescription: "I call you 'chale' because it means you're my friend. But maybe I should call you 'kwasia' because you-you fool-o!",
              time: "7:49 AM"),
        
        Chats(profileImage: "Breach",
              chatTitle: "Breach",
              chatDescription: "If you're not being shot at you're doing something wrong!",
              time: "7:53 AM"),
        
        Chats(profileImage: "Brimstone",
              chatTitle: "Brimstone",
              chatDescription: "Remember to talk to each other out there. If we communicate, we win.",
              time: "8:02 AM"),
        
        Chats(profileImage: "Chamber",
              chatTitle: "Chamber",
              chatDescription: "These guns we use are okay but I will also bring my own. No offense.",
              time: "8:10 AM"),
        
        Chats(profileImage: "Fade",
              chatTitle: "Fade",
              chatDescription: "There's truth in every dream, if you dig deep enough. Let's find out what they buried.",
              time: "9:21 AM"),
        
        Chats(profileImage: "Gekko",
              chatTitle: "Gekko",
              chatDescription: "We got my four friends, then five of us, that's nine! Man, we're stacked!",
              time: "9:42 AM"),
        
        Chats(profileImage: "Harbor",
              chatTitle: "Harbor",
              chatDescription: "Look at us! I've never seen a more beautiful group of heavily armed soldiers",
              time: "10:12 AM"),
        
        Chats(profileImage: "Jett",
              chatTitle: "Jett",
              chatDescription: "Think you can keep up? Who am I kidding? You know you can't keep up.",
              time: "10:45 AM"),
        
        Chats(profileImage: "Killjoy",
              chatTitle: "Killjoy",
              chatDescription: "If I'm not stressed, then you should not be stressed. I mean, look at me. Cool as a cucumber. Ja, that's a thing Americans say, right?",
              time: "11:05 AM"),
        
        Chats(profileImage: "Phoenix",
              chatTitle: "Phoenix",
              chatDescription: "Remember, stay out of the fire. Super high level tactic, remember that, yeah?",
              time: "11:33 AM"),
        
        Chats(profileImage: "Raze",
              chatTitle: "Raze",
              chatDescription: "Brimstone-zinho, you sure I can't listen to music? You're really bringing me down here, man!",
              time: "11:56 AM"),
        
        Chats(profileImage: "Reyna",
              chatTitle: "Reyna",
              chatDescription: "As much as this world hurt me, it's mine, and I will kill to defend it.",
              time: "12:07 PM"),
        
        Chats(profileImage: "Sage",
              chatTitle: "Sage",
              chatDescription: "My power does not ebb. Ask for aid, and you shall receive.",
              time: "12:23 PM"),
        
        Chats(profileImage: "Skye",
              chatTitle: "Skye",
              chatDescription: "If you see one of my creatures, it's a good thing, alright? You'll figure out what they do eventually",
              time: "12:43 PM"),
        
        Chats(profileImage: "Sova",
              chatTitle: "Sova",
              chatDescription: "If you're not a good shot today, don't worry. There are other ways to be useful.",
              time: "1:06 PM"),
        
        Chats(profileImage: "Viper",
              chatTitle: "Viper",
              chatDescription: "Only five of them? Pity I brought enough poison for fifty. You can't say I'm not prepared.",
              time: "1:27 PM"),
    ]
    
    static let calls = [
        Calls(profileImage: "Breach",
              callTitle: "Breach",
              time: "7:53 AM"),
        
        Calls(profileImage: "Sova",
              callTitle: "Sova",
              time: "9:06 AM"),
        
        Calls(profileImage: "Reyna",
              callTitle: "Reyna",
              time: "12:07 PM"),
        
        Calls(profileImage: "Killjoy",
              callTitle: "Killjoy",
              time: "1:05 PM"),
        
        Calls(profileImage: "Fade",
              callTitle: "Fade",
              time: "3:21 PM"),
        
        Calls(profileImage: "Jett",
              callTitle: "Jett",
              time: "5:12 PM"),
    ]
    
    static let recentStatus = [
        Status(profileImage: "Raze",
               statusTitle: "Raze",
               time: "11m ago"),
        
        Status(profileImage: "Sage",
               statusTitle: "Sage",
               time: "1h ago"),
        
        Status(profileImage: "Viper",
               statusTitle: "Viper",
               time: "2h ago"),
    ]
    
    static let viewedStatus = [
        Status(profileImage: "Astra",
               statusTitle: "Astra",
               time: "16m ago"),
        
        Status(profileImage: "Phoenix",
               statusTitle: "Phoenix",
               time: "33m ago"),
        
        Status(profileImage: "Harbor",
               statusTitle: "Harbor",
               time: "1h ago"),
        
        Status(profileImage: "Gekko",
               statusTitle: "Gekko",
               time: "2h ago"),
    ]
}
