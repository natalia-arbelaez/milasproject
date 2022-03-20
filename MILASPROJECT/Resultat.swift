//
//  Resultat.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 10/12/2021.
//

import SwiftUI

struct Resultat: View {

    var body: some View {
        
        
       
        
        if activities[0].isCompleted == true {
        
    
            ZStack {
                
                Image("FondC")
                    .resizable()
                    .ignoresSafeArea(.all, edges: .top)
                
                ScrollView{
                
                VStack(alignment: .leading){
                    
                    ForEach(jobGroups){ job in
                        
                        
                        NavigationLink(destination: Branches(), label: {ResultRown(jobgroup: job)
                            
                        })
                    }
                }
                }
                
                
                
            }
            
            
            
            .toolbar {
                ToolbarItem(placement: .principal){
                    Text("Résultats")
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        
                        
                }
            }
        }else {
        
            
            
            ZStack {
                
                Image("FondC")
                    .resizable()
                    .ignoresSafeArea(.all, edges: .top)
                
                VStack {
                        
                    
                        Text("Veuillez d'abord accomplir toutes les activités")
                            .font(.title)
                            .foregroundColor(.white)
                    
                    
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 75, height: 125)
                            .position(x: 65, y: 425)
                            .foregroundColor(.white)
                            
                    
                }
            }
            
        }
        
        
        
        
    }
}
struct Resultat_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView
        {
            Resultat()
            
        }
        
    }
}

struct ResultRown: View{
    
    var jobgroup : jobGroup
    
    var body: some View{
        
        
        HStack{
            ZStack{
                Image("rond")
                    .resizable()
                    .frame(width: 90.0, height: 90.0)
                Text("\(jobgroup.percent)%")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text(jobgroup.nameJobG)
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
        
    }
    
    
    
    
}
