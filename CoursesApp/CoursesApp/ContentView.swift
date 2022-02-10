//
//  ContentView.swift
//  CoursesApp
//
//  Created by Semaj Andrews on 2/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {

            BackCardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
            
            BackCardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
            
            CardView(courseName: "UI Design")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    var courseName: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("\(courseName)")
                        .font(.title)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 330.0, height: 110.0, alignment: .top)
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
