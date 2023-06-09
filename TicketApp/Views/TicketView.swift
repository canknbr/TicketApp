//
//  TicketView.swift
//  TicketApp
//
//  Created by Can Kanbur on 9.06.2023.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 30) {
                Text("deneme")
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"),Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom))
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
