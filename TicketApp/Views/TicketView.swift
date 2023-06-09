//
//  TicketView.swift
//  TicketApp
//
//  Created by Can Kanbur on 9.06.2023.
//

import SwiftUI

struct TicketView: View {
    @State var isAnimated = false
    var body: some View {
        
        ZStack{
            CircleBackground(color: Color("greenCircle"))
                .blur(radius:isAnimated ? 30 :  100)
                .offset(x:isAnimated ? -50 : -130,y:isAnimated ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()){
                        isAnimated.toggle()
                    }
                }
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius:isAnimated ? 30 :  100)
                .offset(x: isAnimated ? 100 : 130,y: isAnimated ? 150 : 100)
              
            VStack(spacing: 30) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .bold()
                Text("Once you buy a movie ticket simply scan the barcode to access to your movie ")
                    .frame(maxWidth: 248)
                    .foregroundColor(.white)
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal,20)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            Tickets()
                .padding(.top,30)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"),Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom))
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
