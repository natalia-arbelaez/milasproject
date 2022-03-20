//
//  Jeu1.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct ReussiteJeu: View {
    
    @State var rating = 0
    var activity : Activity
    
    @State private var isShowingListOfActivities = false
    
    var body: some View {
        
        ZStack {
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            VStack {

                Text("Bravo, tu as réussi")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Image("ImageReussite")
                    .resizable()
                    .scaledToFit()

                Text("As-tu aimé?")
                    .font(.title)
                    .foregroundColor(.white)

                Rating(rating: $rating)
                
                // https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-programmatic-navigation-in-swiftui
                NavigationLink(destination: Activites(), isActive: $isShowingListOfActivities) { EmptyView() }


                Button(action: {
                    activity.noteA = rating
                    activity.isCompleted = true
                    
                    isShowingListOfActivities = true
                    
                }, label: {
                    Text("VALIDER")
                        .font(.largeTitle)
                }
                )
                .frame(maxWidth: .infinity, maxHeight: BUTTON_HEIGHT)
                .foregroundColor(.black)
                .background(Color("StarColor"))
                .cornerRadius(15)
                .padding()

                Spacer()
                
            }.navigationBarHidden(true)


       }
        
        
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

struct ReussiteJeu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReussiteJeu( activity: activities[0] )
        }
    }
}
