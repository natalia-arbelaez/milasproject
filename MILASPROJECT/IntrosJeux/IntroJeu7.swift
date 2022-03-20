//
//  IntroJeu7.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 08/12/2021.
//

import SwiftUI

struct IntroJeu7: View {
    var activiteLudique: String = "Activité 7"
    var objectifActivite1: String = "Objectif : "
    
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
                    Text("COMMENCER").font(.largeTitle)
                        .padding()
                        .foregroundColor(Color.black)
                        
                }})
                Spacer()
               
            }
        }
        
    }
}

struct IntroJeu7_Previews: PreviewProvider {
    static var previews: some View {
        IntroJeu7().environmentObject(PopStack())
    }
}
