//
//  Metier.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 14/12/2021.
//

import SwiftUI
import AVKit

struct Metier: View {
    var body: some View {
        ZStack{
            
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            
            VStack{
                
                
                ScrollView{
                    
                    
                    Text("Descriptif du métier")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Text("")
                        .frame(width: 125, height: 5)
                        .background(Color("StarColor"))
                    
                    
                    Text("À partir des idées, des modèles sur papier de l'application, le développeur d'applications mobiles se charge de la réaliser. Grâce à de solides connaissances en mathématiques et en informatique, il choisit les logiciels et codes spécifiques pour la construire. Il s'agit d'utiliser un langage de codage; une suite de chiffres et de lettres permettant à l'odinateur de retranscrire celà sur un écran de smartphone (Texte, image, passer à la page suivante, etc...)")
                        .padding()
                        .foregroundColor(Color.white)
                    
                    
                    Text("En général, il travaille en relation avec le chef de projet (qui gère les différentes personne qui vont s'occuper du projet) et un graphiste (qui va créer des dessins à incorporer à l'application). Il peut exercer au sein d'un cabinet spécialisé, en entreprise ou à son compte.")
                        .padding()
                        .foregroundColor(Color.white)
                    
                    Text("Vidéos")
                        .font(.title)
                    
                    Text("")
                        .frame(width: 125, height: 5)
                        .background(Color("StarColor"))
                    
                    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "Dev", withExtension: "mp4")!))
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    
                    Text("Lien vers contact")
                        .font(.title)
                    
                    
                    Text("")
                        .frame(width: 125, height: 5)
                        .background(Color("StarColor"))
                    
                    Text("Veuillez contacter ayoub, attention, ses honoraires sont élevés! (Bitcoin, Gateaux, Viénoiseries)")
                        .padding()
                        .foregroundColor(Color.white)

                    
                }
            }
        }.toolbar {
            ToolbarItem(placement: .principal){
                VStack{
                    Text("Developpeur Web Mobile")
                        .foregroundColor(.black)
                        .bold()
                }
            }
        }
        
    }
}


struct Metier_Previews: PreviewProvider {
    static var previews: some View {
        Metier()
    }
}
