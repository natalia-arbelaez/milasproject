//
//  MILASPROJECTApp.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import SwiftUI

@main
struct MILASPROJECTApp: App {
    
    var isActive: PopStack = PopStack()
    
    var body: some Scene {
        WindowGroup {
            TabVue().environmentObject(isActive)
        }
    }
}
