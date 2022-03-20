//
//  Evenement.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 13/12/2021.
//

import SwiftUI

struct Evenement: View {
    var body: some View {
        
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
                    
                        
            ScrollView {
                VStack (alignment:.leading){
                    ForEach(evenements){
                        evenementO in
                        NavigationLink(destination:EvenementDetail(evenement:evenementO), label:{
                            EvenementRowView(evenementI:evenementO)
                        })
                    }
                    .padding()
                    .cornerRadius(12)
                }
            }
        }.toolbar {
            ToolbarItem(placement: .principal){
                Text("Évènements")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
            }
        }
    }
}

struct Evenement_Previews: PreviewProvider {
    static var previews: some View {
        Evenement()
    }
}


    //Structure de element
    struct EvenementRowView : View {
        var evenementI: EvenementInfo
        var body: some View {
            HStack {
                
                
                
                VStack {
                    Image(systemName: "calendar.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.black)
                        .padding()
                    
                }
                
                VStack(alignment:.leading){
                    Text(getDate(inputDate:evenementI.dateEvenement))
                            .foregroundColor(.black)
                            .font(.title3)
                    
                    Spacer()
                    
                    Text(evenementI.titleEvenement)
                        .font(.title2).bold()
                        .foregroundColor(.black)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.black)
                        
                        Text(evenementI.cityEvenement)
                            .font(.title2).italic()
                        .foregroundColor(.black)
                        
                        Spacer().frame(width: 15)
                    }
                }
            }.scaledToFit()
                .frame(width: 300, height: 150, alignment:.leading)
                .background(Color("StarColor"))
                .cornerRadius(15)
                .shadow(radius: 10)
                .opacity(0.8)
        }
    }

