//
//  TextViews.swift
//  Bullseye
//
//  Created by Andrii Nepodymka on 7/16/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}


struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}


struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}


struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}


struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
        
        
        
    }
}


struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.white)
            .background(Color.accentColor)
            .cornerRadius(12.0)
            
        
        
        
    }
}


struct ScoreText: View {
    var score: Int
    var body: some View {
        Text(String(score))
            .kerning(-0.2)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .bold()
            
        
    }
}


struct DateText: View {
    var date: Date
    var body: some View {
        Text(date, style: .time)
            .kerning(-0.2)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .bold()
        
    }
}


struct BigBoldText: View {
    
    let text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
        
    }
}




struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "1")
            LabelText(text: "9")
            BodyText(text: "You scored 200 points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
