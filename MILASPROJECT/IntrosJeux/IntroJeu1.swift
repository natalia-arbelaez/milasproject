//
//  IntroJeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct IntroJeu1: View {
    
    
    var activiteLudique: String = "Activité 1"
    var objectifActivite1: String = "Objectif : Amener le petit robot à la case indiquée en lui donnant les bonnes instructions !"
    
    var body: some View {
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            VStack {
                
                Text(activiteLudique).font(.largeTitle).foregroundColor(.white)
                    .padding()
                
                
                Text(objectifActivite1).font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.white)
                Spacer()
                
                NavigationLink(destination: Jeu1(), label: {ZStack {
                    Rectangle()
                        .fill(Color("StarColor"))
                        .frame(width: 250, height: 100, alignment: .leading)
                        .cornerRadius(15)
                        .shadow(radius: 20)
                    Text("COMMENCER").font(.largeTitle)
                        .padding()
                        .foregroundColor(.black)
                        
                }})
                
                Spacer()
               
            }
        }
        
    }
}

struct IntroJeu1_Previews: PreviewProvider {
    static var previews: some View {
        IntroJeu1().environmentObject(PopStack())
    }
}
