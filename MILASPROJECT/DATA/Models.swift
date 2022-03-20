//
//  Models.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import Foundation
import SwiftUI


class Activity: Identifiable, ObservableObject{
    
    let id = UUID()
    let idA: Int
    let nameA: String
    let objectifA: String
    @Published var isCompleted: Bool
    var noteA: Int?

    init(id: Int, name: String, objectif: String, isCompleted: Bool, note: Int?){
        self.idA = id
        self.nameA = name
        self.isCompleted = isCompleted
        self.noteA = note
        self.objectifA = objectif
    }
    
}

struct job: Identifiable {
    let id = UUID()
    let nameJ: String
    let detailJ: String
    
}

struct jobGroup: Identifiable {
    let id = UUID()
    let nameJobG : String
    let percent: Int
    
}

struct EvenementInfo: Identifiable {
    let id = UUID()
    let idEvenement: Int
    let nameEvenement: String
    var dateEvenement: Date?
    var titleEvenement: String
    var cityEvenement: String
    var adressEvenement: String
    var descriptionEvenement: String
    var timeEvenement: String
}
//Evenements table to create a date that is used data base
//https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object

func createDate(year: Int, month: Int, day: Int, hour: Int, min: Int) -> Date? {
    // Specify date components
    var dateComponents = DateComponents()
    dateComponents.year = year
    dateComponents.month = month
    dateComponents.day = day
    dateComponents.timeZone = TimeZone(abbreviation: "CET") // Japan Standard Time
    dateComponents.hour = hour
    dateComponents.minute = min

    // Create date from components
    let userCalendar = Calendar(identifier: .gregorian) // since the components above (like year 1980) are for Gregorian
    return userCalendar.date(from: dateComponents)
}

//Evenements function that transforms a date in string for view
func getDate(inputDate:Date?) -> String {
    let dateFormat: DateFormatter = DateFormatter()
    dateFormat.dateStyle = .medium
    dateFormat.locale = Locale(identifier: "fr_FR")
    return dateFormat.string(from: inputDate!)
}




