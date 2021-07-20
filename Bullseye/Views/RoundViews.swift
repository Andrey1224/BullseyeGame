//
//  RoundViews.swift
//  Bullseye
//
//  Created by Andrii Nepodymka on 7/17/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth))
    }
}


struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .background(Circle().fill(Color("ButtonFilledBackgroundColor")))
    }
}

struct RoundRectTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius).stroke(lineWidth: Constants.General.strokeWidth).foregroundColor(Color("ButtonStrokeColor")))
    }
}


struct RoundedTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(Circle().strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth))
    }
}


struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(text: "100")
            RoundedTextView(text: "1")
        }
    }
}


struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
