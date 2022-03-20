//
//  Branches.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

struct Branches: View {
    var body: some View {
        
        ZStack{
            
            Image("FondC")
                .resizable()
                .ignoresSafeArea(.all, edges: .top)
            
            
            ScrollView{
                VStack(alignment: .center) {
                    
                    ForEach(jobs){ joblist in
                        
                        NavigationLink(destination: Metier(), label:{ ExtractedView(joblist: joblist)
                            
                        })
                    }
                }
            }
        }.toolbar {
            ToolbarItem(placement: .principal){
                Text("Internet")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
            }
        }
    }
    
}


struct Branches_Previews: PreviewProvider {
    static var previews: some View {
        Branches()
    }
}

struct ExtractedView: View {
    
    var joblist: job
    
    var body: some View {
        
        VStack(alignment: .center){
            Text(joblist.nameJ)
                .font(.title2)
                .foregroundColor(.black)
                .padding()
            Text(joblist.detailJ)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 150, alignment:.center)
        .background(Color("StarColor"))
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
    }
}
