//
//  Database.swift
//  MILASPROJECT
//
//  Created by Apprenant 69 on 07/12/2021.
//

import Foundation
import SwiftUI



var activities = [
    Activity(idA: 1, nameA: "Activité 1", isCompleted: false, noteA: nil),
    Activity(idA: 2, nameA: "Activité 2", isCompleted: true, noteA: 2),
    Activity(idA: 3, nameA: "Activité 3", isCompleted: true, noteA: 4),
    Activity(idA: 4, nameA: "Activité 4", isCompleted: true, noteA: 3),
    Activity(idA: 5, nameA: "Activité 5", isCompleted: true, noteA: 5),
    Activity(idA: 6, nameA: "Activité 6", isCompleted: true, noteA: 2),
    Activity(idA: 7, nameA: "Activité 7", isCompleted: true, noteA: 1)
]



var jobs =    [
    job(nameJ: "Développeur-euse web mobile", detailJ: "Créer une application"),
    job(nameJ: "Architecte web", detailJ: "validation des solutions techniques\n" + "jusqu'aux phases de test\n"),
    job(nameJ: "Chef-fe de projet web-mobile", detailJ: "Interface entre le client et les\n" + "différents professionnels"),
    job(nameJ: "Intégrateur-trice web", detailJ: "Réunir, assembler les différents\n" + "éléments qui composent un site"),
    job(nameJ: "Community manager", detailJ: "Fédère et anime les échanges\n" + "entre internautes"),
    job(nameJ: "Webdesigner-euse", detailJ: "Capable de réaliser une interface web ergonomique et un design")
]






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
