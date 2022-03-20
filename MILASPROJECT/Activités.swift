//
//  Activités.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct Activites: View {
    
    @EnvironmentObject var isActive: PopStack
    
    var body: some View {
        
        
        ZStack {
            
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
                
            
            
            VStack{
                
                
                NavigationLink(
                    destination: IntroJeu1(),
                    isActive: $isActive.isActive){
                        ActivityRow(activity: activities[0])
                    }
                
                ForEach(activities){ activity in
                    
                    if activity.idA == 1 {
                        Text("")
                    } else {
                        NavigationLink(destination: getTrans(getDest: activity.idA ), label: {ActivityRow(activity: activity)})
                        Text("")
                    }
                    
                }
                
            }
            
        }.toolbar {
            ToolbarItem(placement: .principal){
                Text("Liste d'activités")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    
                    
            }
        }
    }
}


struct ExtCircle : View {
    var color : Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 40, height: 40)
    }
}


struct Activites_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            Activites().environmentObject(PopStack())
            
        }
        
    }
}

struct ActivityRow: View {
    @StateObject var activity: Activity
    
    var body: some View {
        HStack{
           
            Text(activity.nameA)
                .foregroundColor(.black)
         
        }
        .frame(width: 300, height: 60)
        .background(activity.isCompleted ? Color("StarColor") : .white)
        .cornerRadius(15)
        .shadow(radius: 50)
    }
}

