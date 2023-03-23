//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Meet's MAC on 22/03/23.
//

import SwiftUI

struct ContentView: View {

    @State var left_dice_number = 1
    @State var right_dice_number = 1

    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)


            VStack{
                Image("diceeLogo")

                Spacer()

                HStack{
                    DiceeView(num: left_dice_number)
                    DiceeView(num: right_dice_number)
                }
                .padding(.horizontal)

                Spacer()

                Button(action: {
                    left_dice_number = Int.random(in: 1...6)
                    right_dice_number = Int.random(in: 1...6)
                }) {
                    Text("Roll Dicee")
                        .padding()
                        .font(.system(size: 20).weight(.heavy))
                        .foregroundColor(.red)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


