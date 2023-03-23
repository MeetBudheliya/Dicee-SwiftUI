//
//  DiceeView.swift
//  Dicee-SwiftUI
//
//  Created by Meet's MAC on 22/03/23.
//

import SwiftUI

struct DiceeView: View {
    let num : Int
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceeView_Previews: PreviewProvider {
    static var previews: some View {
        DiceeView(num: 1)
    }
}
