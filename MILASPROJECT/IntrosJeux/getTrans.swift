//
//  getTrans.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 08/12/2021.
//

import SwiftUI

struct getTrans: View {
    
    var getDest: Int
    
    var body: some View {
        
        switch getDest{
        case 1: IntroJeu1()
        case 2: IntroJeu2()
        case 3: IntroJeu3()
        case 4: IntroJeu4()
        case 5: IntroJeu5()
        case 6: IntroJeu6()
        case 7: IntroJeu7()
        default: Text("ERROR 404 : not Found")
        
    }
}
}

struct getTrans_Previews: PreviewProvider {
    static var previews: some View {
        getTrans(getDest: 3)
    }
}
