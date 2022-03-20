//
//  Jeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 08/12/2021.
//

import SwiftUI

struct Jeu1: View {
    
    
    var body: some View {
        
        ZStack {
            
            NavigationLink(destination: ReussiteJeu1(), label: {
                Image("ImageActivite1")
                    .resizable()
                    .ignoresSafeArea(.all, edges: .top)
            })
            
            
                }.navigationBarBackButtonHidden(true)
        
        
    }
}

struct Jeu1_Previews: PreviewProvider {
    static var previews: some View {
        Jeu1( )
    }
}
