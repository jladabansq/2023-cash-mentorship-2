//
//  DataModel.swift
//  QuizApp
//
//  Created by Jane Ladaban on 6/20/23.
//

import UIKit

struct QuestionData: Hashable, Identifiable {
    var id: Int
    var headline: String
    var question: String
    var choices: [String]
    var answer: String
    var source: String
    var userAnswer: String = ""
    var explanation: String
    var isAnswered: Bool = false
    var isCorrect: Bool = false
}

class DataModel: NSObject {
    static let data: [QuestionData] = [
        QuestionData(id: 1, headline: "New York's Capital", question: "What is the capital of New York state?", choices: ["New York City", "Albany", "Queens"], answer: "Albany", source: "https://www.albany.org", explanation: "In 1797, Albany became the official capital of New York State. Since then, Albany has been a center for banking, railroads, and international trade."), // TODO: source is -- https://www.albany.org/things-to-do/albany-heritage-tourism/history/#:~:text=In%201797%2C%20Albany%20became%20the,%2C%20railroads%2C%20and%20international%20trade.
        
        QuestionData(id: 2, headline: "The Garden State", question: "Which state is considered as the 'Garden State?'", choices: ["New Jersey", "California", "Rhode Island"], answer: "New Jersey", source: "https://www.state.nj.us/", explanation: "Abraham Browning said that Garden State is an immense barrel, filled with good things to eat and open at both ends, with Pennsylvanians grabbing from one end and New Yorkers from the other. The name stuck ever since."), // TODO: source is -- https://www.state.nj.us/nj/about/facts/nickname/
        
        QuestionData(id: 3, headline: "Live free or die", question: "Which state has their official motto 'Live free or die'?", choices: ["Texas", "Florida", "New Hampshire"], answer: "New Hampshire", source: "https://www.nh.gov", explanation: "The words 'Live Free or Die' written by General John Stark, July 31, 1809, shall be the official motto of the state. It was the 1945 Legislature that gave New Hampshire its official motto and emblem, as World War II approached a successful end.") // TODO: source is -- https://www.nh.gov/almanac/emblem.htm#:~:text=The%20words%20%22Live%20Free%20or,II%20approached%20a%20successful%20ends
    ]
    
    static let testData: [QuestionData] = [
        // example question where the user answer is incorrect
        QuestionData(id: 0, headline: "Best NY Pizza Spot", question: "What is the best pizza place in NYC?", choices: ["Lucali", "Dollar pizzas everywhere", "Dominos"], answer: "Dollar pizzas everywhere", source: "Me!", userAnswer: "Dominos", explanation: "Dollar pizzas in NYC are the best, although unhealthy. Stores that sell these types of pizzas are everywhere. They usually serve it as a combo with a choice of your beverage.", isAnswered: true, isCorrect: false),
        
        // example question where the user answer is correct
        QuestionData(id: 99, headline: "Best San Diego Taco Spot", question: "What is the best taco spot in San Diego?", choices: ["Taco Bell", "Tacos El Gordo", "Nada"], answer: "Tacos El Gordo", source: "Me!", userAnswer: "Tacos El Gordo", explanation: "Well, I just love Tacos El Gordo.", isAnswered: true, isCorrect: true),
    ]
}

var score = 0
var answered = 2 // TODO: bring back to 0

func incrementScore() {
    score += 1;
}
