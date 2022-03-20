//
//  IntroJeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct IntroJeu: View {
    
    var activity: Activity
    
    var body: some View {
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            ScrollView {
                VStack {
                    
                    Text(activity.nameA).font(.largeTitle).foregroundColor(.white)
                        .padding()
                    
                    Text("Objectif :")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .padding()
                    
                    
                    Text(activity.objectifA)
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .foregroundColor(Color.white)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: Jeu(activity: activity), label: {
                        Text("COMMENCER")
                            .font(.largeTitle)
                    }
                    )
                    .frame(maxWidth: .infinity, minHeight: BUTTON_HEIGHT)
                    .foregroundColor(.black)
                    .background(Color("StarColor"))
                    .cornerRadius(15)
                    .padding()
                    
                    Spacer()
                    
                }
            }
        }
        
    }
}

struct IntroJeu1_Previews: PreviewProvider {
    static var previews: some View {
        
        IntroJeu(activity: activities[0])
    }
}
