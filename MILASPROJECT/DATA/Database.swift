//
//  Database.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import Foundation
import SwiftUI

var activities = [
    Activity(id: 1, name: "Activité 1", objectif: "Amener le petit robot à la case indiquée en lui donnant les bonnes instructions !", isCompleted: false, note: nil),
    Activity(id: 2, name: "Activité 2", objectif: "objectif 2", isCompleted: false, note: 2),
    Activity(id: 3, name: "Activité 3", objectif: "objectif 3", isCompleted: false, note: 4),
    Activity(id: 4, name: "Activité 4", objectif: "objectif 4", isCompleted: false, note: 3),
    Activity(id: 5, name: "Activité 5", objectif: "objectif 5", isCompleted: false, note: 5),
    Activity(id: 6, name: "Activité 6", objectif: "objectif 6", isCompleted: false, note: 2),
    Activity(id: 7, name: "Activité 7", objectif: "objectif 7", isCompleted: false, note: 1)
]

var jobs =    [
    job(nameJ: "Développeur-euse web mobile", detailJ: "Créer une application"),
    job(nameJ: "Architecte web", detailJ: "validation des solutions techniques jusqu'aux phases de test"),
    job(nameJ: "Chef-fe de projet web-mobile", detailJ: "Interface entre le client et les différents professionnels"),
    job(nameJ: "Intégrateur-trice web", detailJ: "Réunir, assembler les différents éléments qui composent un site"),
    job(nameJ: "Community manager", detailJ: "Fédère et anime les échanges entre internautes"),
    job(nameJ: "Webdesigner-euse", detailJ: "Capable de réaliser une interface web ergonomique et un design")
]

let BUTTON_HEIGHT : CGFloat? = 70






var jobGroups = [
    jobGroup(nameJobG: "Internet", percent: 45),
    jobGroup(nameJobG: "Big Data", percent: 25),
    jobGroup(nameJobG: "Informatique", percent: 15),
    jobGroup(nameJobG: "Intelligence Artificielle", percent: 10),
    jobGroup(nameJobG: "Jeux Vidéo", percent: 5)
]



//table of evenements
var evenements = [
    EvenementInfo(idEvenement:1, nameEvenement: "Evenement 1", dateEvenement: createDate(year: 2022, month: 01, day: 22, hour: 14, min: 00), titleEvenement: "La semaine de métiers du numérique", cityEvenement:"Lille", adressEvenement: "pole-emploi", descriptionEvenement: "Vous trouvez la description de cet evenement ici",timeEvenement:"Tout la journee"),
    EvenementInfo(idEvenement:2, nameEvenement:"Evenement 2" , dateEvenement: createDate(year: 2022, month: 02, day: 08, hour: 14, min: 00), titleEvenement: "Job dating pour le numérique", cityEvenement: "Lille", adressEvenement: "Chambre de commerce de lille", descriptionEvenement: "Vous trouvez la description de cet evenement ici",timeEvenement: "De 14 à 18"),
    EvenementInfo(idEvenement:3, nameEvenement: "Evenement 3", dateEvenement: createDate(year: 2022, month: 03, day: 12, hour: 19, min: 00), titleEvenement: "Métiers du numérique MeetUps", cityEvenement: "Lille", adressEvenement: "Meetups.com", descriptionEvenement: "Vous trouvez la description de cet evenement ici", timeEvenement: "De 19 à 21"),
    EvenementInfo(idEvenement: 4, nameEvenement: "Evenement 4", dateEvenement:createDate(year: 2022, month: 04, day: 15, hour: 9, min: 00), titleEvenement: "Organisme de formation journe de portes ouvertes", cityEvenement: "Wazemmes", adressEvenement: "Simplon.co", descriptionEvenement: "Vous trouvez la description de cet evenement ici", timeEvenement: "Tout la journee")
]
