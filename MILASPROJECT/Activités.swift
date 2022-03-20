//
//  Activités.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct Activites: View {
    
    var body: some View {
        
        ZStack {
            
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            
            ScrollView {
                VStack{
                    
                    ForEach(activities){ activity in
                        
                        NavigationLink(destination: IntroJeu(activity: activity), label: {ActivityRow(activity: activity)})
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
        .navigationBarBackButtonHidden(true)
    }
}

struct Activites_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            Activites()
        }
    }
}

struct ActivityRow: View {
    @StateObject var activity: Activity
    
    var body: some View {
        
        Text(activity.nameA)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, minHeight: BUTTON_HEIGHT)
            .background(activity.isCompleted ? .white : Color("StarColor"))
            .cornerRadius(15)
            .shadow(radius: 50)
            .padding(.bottom, 5)
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
}

