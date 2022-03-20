//
//  TabVue.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 13/12/2021.
//

import SwiftUI

struct TabVue: View {
    
    @State var selection = 0
    var body: some View {
        
        
        TabView(selection: $selection) {
            
            NavigationView {
                Activites()
            }
            .tabItem{
                Image(systemName: "puzzlepiece.fill")
                Text("Activités")
            }.tag(0)
            
            
            NavigationView{
                Resultat()
            }
            .tabItem{
                Image(systemName: "chart.bar.xaxis")
                Text("Résultats")
            }.tag(1)
            
            
            NavigationView{
                Evenement()
            }
            .tabItem{
                Image(systemName: "calendar")
                Text("Évènements")
            }.tag(2)
            
        }
    }
}


struct TabVue_Previews: PreviewProvider {
    static var previews: some View {
        TabVue()
    }
}
