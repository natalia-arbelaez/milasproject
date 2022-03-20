//
//  Jeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct ReussiteJeu1: View {
    
    @State var rating = 0
    @EnvironmentObject var isActive: PopStack
    
    var body: some View {
        
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            VStack {
                
                Text("Bravo, tu as réussi")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                Image("ImageReussite")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("As-tu aimé?")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                Rating(rating: $rating)
                
                
                Button(action: {
                    activities[0].noteA = rating
                    activities[0].isCompleted = true
                    isActive.isActive = false
                    
                }, label: {
                    ZStack {
                        Rectangle()
                            .fill(Color("StarColor"))
                            .frame(width: 250, height: 100, alignment: .leading)
                            .cornerRadius(15)
                            .shadow(radius: 20)
                        Text("VALIDER").font(.largeTitle)
                            .padding()
                            .foregroundColor(.black)
                    }
                })
                
                
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        
    }
}


//Reusable rating component
struct Rating: View {
    //Stars to do the rating
    @Binding var rating   : Int
    let onImage  : Image = Image(systemName: "star.fill")
    let offImage : Image = Image(systemName: "star")
    
    //function to decide full of empty image for rating
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage
        } else {
            return onImage
        }
    }
    //The display of the rating component with loop
    var body: some View {
        HStack {
            ForEach(1..<6, id: \.self) { number in
                image(for: number)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.yellow)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
        .padding()
    }
}

//The display for the user
struct message_reussite_activite_1: View {
    
    @State var rating = 0
    
    var body: some View {
        
        ZStack {
            Color.green
            
            VStack {
                
                Text("Voilà, tu as réussi")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                Image("image_message_reussite_1")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("As-tu aimé?")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                Rating(rating: $rating)
                
                Text("SUIVANT")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }
            .padding()
        }
        
    }
}

struct ReussiteJeu1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReussiteJeu1().environmentObject(PopStack())
        }
    }
}
