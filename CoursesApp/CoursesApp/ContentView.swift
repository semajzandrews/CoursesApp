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

            HStack {
                
                Spacer()
            }
            
            BackCardView()
                .frame(width: 340, height: 220)
                .background(Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(.degrees(10), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            BackCardView()
                .frame(width: 340, height: 220)
                .background(Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(.degrees(5), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            CardView(courseName: "UI Design")
                .frame(width: 340, height: 220)
                .background(Color.black)
                .cornerRadius(20)
                .shadow(radius: 20)
                 
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}

struct CardView: View {
    
    var courseName: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text("\(courseName)")
                        .font(.title)
                        .fontWeight(.semibold)
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
                .frame(width: 300.0, height: 110.0, alignment: .top)
        }
        

        
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }

    }
}
