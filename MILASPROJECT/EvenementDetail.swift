//
//  EvenementDetail.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 15/12/2021.
//

import SwiftUI

struct EvenementDetail: View {
    var evenement: EvenementInfo
    
    var body: some View {
        
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            ScrollView {
            VStack (alignment:.leading){
                Text(evenement.titleEvenement)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                
                    Image(systemName: "calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        
                    
                    Text(getDate(inputDate:evenement.dateEvenement))
                        .font(.title2)
                        .foregroundColor(.white)
                    .padding()
                }
                
                
                HStack {
                    
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Text(evenement.timeEvenement)
                        .font(.title2)
                        .foregroundColor(.white)
                    .padding()
                }
                
                
                
                HStack {
                    
                    Image(systemName: "map")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Text(evenement.cityEvenement)
                        .font(.title2)
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                    .padding()
                }
                
                Text("Adresse : \(evenement.adressEvenement)").font(.title2)
                    .foregroundColor(.white)
                    .padding()
                //Area description
                VStack (alignment:.center){
                    Text(evenement.descriptionEvenement)
                        .font(.title2)
                        .foregroundColor(.black)
                    Text("Organisateur:  \(evenement.adressEvenement)")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding()
                }.padding()
                    .background(Color("StarColor"))
                    .cornerRadius(15)
                    .shadow(radius: 20)
                
                Button(action: {}, label: {
                    HStack{
                    Image(systemName: "calendar.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20 )
                        .foregroundColor(.white)
                        .padding()
                    Text("Ajouter")
                            .font(.title2)
                            .foregroundColor(.white)
                    }.padding()
                    //.background(Color("StarColor"))
                    .cornerRadius(12)
                })
        
            }
            }
        }
    }
}

struct EvenementDetail_Previews: PreviewProvider {
    static var previews: some View {
        EvenementDetail(evenement: evenements[0])
    }
}
