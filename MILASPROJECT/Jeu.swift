//
//  Jeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 08/12/2021.
//

import SwiftUI

struct Jeu: View {
    
    var activity : Activity
    var body: some View {
        
        ZStack {
            
            NavigationLink(destination: ReussiteJeu(activity: activity), label: {
                Image("ImageActivite1")
                    .resizable()
                    .ignoresSafeArea(.all, edges: .top)
            })
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Jeu1_Previews: PreviewProvider {
    static var previews: some View {
        Jeu( activity: activities[0] )
    }
}
