//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var strr = "test"

//Joe Smith 43" Yes Jim and Jan Smith
//Jill Tanner 36 Yes Clara Tanner
// Bill Bon 43 Yes Sara and Jenny Bon
//Eva Gordon 45 No Wendy and Mike Gordon
//Matt Gill 40 NO Charles and Sylvia Gill
//Kimmy Stein 41 No Bill and hillary Stein
//Sammy Adams 45 No Jeff Adams
//Karl Saygan 42 Yes Heather Bledsoe
//Suzane Greenberg 44 Yes Henrietta Dumas
//Sal Dali 41 No Gala Dali
//Joe Kavalier 39 No Sam and Elaine Kavalier
//Ben Finkelstein 44 No Aaron and Jill Finklestein
//Diego Soto 41 Yes Robin and Sarika Soto
//Chloe Alaska 47 No David and Jamie Alaska
//Arnold Willis 43 No Claire Willis
//Phillip Helm 44 Yes Thomas Helm and Eva Jones
//Les Clay 42 Yes Wynonna Brown
//Hershel Krustofski 45 Yes Hyman and Rachel Krustofski

import Foundation
//First we declare all of our players as dictionaries.
//Each dictionary gets a string for a name, a bool for experience, an int for height and a string for
//parents.
let pHelm  = [
    "Name": "Phillip Helm",
    "Experience": "true",
    "Height": "44",
    "Parents": "Thomas Helm and Eva Jones"]

pHelm["Experience"]
//var truth: Bool = eGordon["Experience"]
if  pHelm["Experience"] == "false"
{
    print("Hey!");
}

let lClay = [
    "Name": "Les Clay",
    "Experience": "true",
    "Height": "42",
    "Parents": "Wynonna Brown"]

let hKrustofski  = [
    "Name": "Hershel Krustofski",
    "Experience": "true",
    "Height": "45",
    "Parents": "Hyman and Rachel Krustofski"]

let dSoto  = [
    "Name": "Diego Soto",
    "Experience": "true",
    "Height": "41",
    "Parents": "Robin and Sarika Soto"]

let cAlaska  = [
    "Name": "Chloe Alaska",
    "Experience": "false",
    "Height": "47",
    "Parents": "David and Jamie Alaska"]

let aWillis  = [
    "Name": "Arnold Willis",
    "Experience": "false",
    "Height": "43",
    "Parents": "Claire Willis"]

let sGreenberg  = [
    "Name": "Suzane Greenberg",
    "Experience": "true",
    "Height": "44",
    "Parents": "Henrietta Dumas"]

let sDali  = [
    "Name": "Sal Dali",
    "Experience": "false",
    "Height": "41",
    "Parents": "Gala Dali"]

let jKavalier = [
    "Name": "Joe Kavalier",
    "Experience": "false",
    "Height": "39",
    "Parents": "Sam and Elaine Kavalier"]

let bFinklestein = [
    "Name": "Ben Finklestein",
    "Experience": "false",
    "Height": "44",
    "Parents": "Aaron and Jill Finklestein"
]

let kStein  = [
    "Name": "Kimmy Stein",
    "Experience": "false",
    "Height": "41",
    "Parents": "Bill and Hillary Stein"]

let sAdams = [
    "Name": "Sammy Adams",
    "Experience": "false",
    "Height": "45",
    "Parents": "Jeff Adams"]

let kSaygan  = [
    "Name": "Karl Saygan",
    "Experience": "true",
    "Height": "42",
    "Parents": "Heather Bledsoe"]

let jSmith  = [
    "Name": "Joseph Smith",
    "Experience": "true",
    "Height": "43",
    "Parents": "Jim and Jan Smith"]

let jTanner  = [
    "Name": "Jill Tanner",
    "Experience": "true",
    "Height": "36",
    "Parents": "Clara Tanner"]

let bBon  = [
    "Name": "Bill Bon",
    "Experience": "true",
    "Height": "43",
    "Parents": "Sara and Jenny Bon"]

let eGordon  = [
    "Name": "Eva Gordon",
    "Experience": "false",
    "Height": "45",
    "Parents": "Wendy and Mike Gordon"]

let mGill = [
    "Name": "Matt Gill",
    "Experience": "false",
    "Height": "40",
    "Parents": "Charles and Sylvia Gill"]

//Whew, finally got all of those players added.  Note to self, come up with a better way to add players

//Now we need to make an array of all of the players using their dictionaries

let allPlayers = [jSmith, jTanner, bBon, eGordon, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinklestein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

//Let's make 2 more arrays, one for experienced and one for inexperienced players
//NOTE I had to look up how to declare an empty array without a type.  I found this information on StackOverflow

var inexperiencedPlayers: [Dictionary<String, String>] = []

var experiencedPlayers: [Dictionary<String, String>] = []

//Now we will loop through all of the players and seperate them into experienced and inexperienced.

for player in allPlayers {
    if (player["Experience"] == "false") {
        inexperiencedPlayers.append(player)
    }else {
        experiencedPlayers.append(player)
    }
}

//Ok now that we have all of our players sorted by experience we can
//add them to the teams.  I am going to take the extra step and sort
//The experienced, and inexperienced arrays by height.
//To do this I will use a function that takes an unsorted array and returns a sorted array

func sortingByHeight(unsortedArray: Array<Dictionary<String, String>>) -> Array<Dictionary<String, String>>
{
    var tempArray = unsortedArray
    var sortedArray: [Dictionary<String, String>] = []
    for _ in 1...unsortedArray.count {
        
        
        var maximumHeight = 0
        for player1 in tempArray {
            let currentHeight = Int(player1["Height"]!)
            if currentHeight > maximumHeight {
                maximumHeight = currentHeight!
            }
            print(player1["Height"])
            print("yo")
        }
        
        print(maximumHeight)
        //print(currentHeight)
        var count = 0
        for player2 in tempArray {
            let currentHeight = Int(player2["Height"]!)
            if currentHeight == maximumHeight {
                sortedArray.append(player2)
                tempArray.removeAtIndex(count)
                //experiencedPlayers.count
                print("Yo")
            }
            count += 1
        }
    }
    return sortedArray
}

var sortedExperiencedPlayers = sortingByHeight(experiencedPlayers)
var sortedInexperiencedPlayers = sortingByHeight(inexperiencedPlayers)

//Now that we have our sorted arrays let's start assigning players to teams.

var dragonTeam: [Dictionary<String, String>] = []
var sharkTeam: [Dictionary<String, String>] = []
var raptorTeam: [Dictionary<String, String>] = []

//This function gets the average player height from a team
func getAverageHeight(team: Array<Dictionary<String, String>>) -> Double {
    var totalHeight = 0.0
    for player in team{
        totalHeight += Double(player["Height"]!)!
    }
    return (totalHeight/Double(team.count))
}

/* This function assigns players from an array to the teams.
 It checks to see which team has the least players then adds a teammate to that team.  If there is a tie then it will check to see which of the tied teams has the lowest average player height and assign the player to that team.  Since the array being fed in is ordered by height, the next player in line is the tallest one remaining in the array.*/
func assignPlayers(playerArray: Array<Dictionary<String, String>>) {
    //First lets add a player to each team.
    for player in playerArray {
        let sHeight = getAverageHeight(sharkTeam)
        let rHeight = getAverageHeight(raptorTeam)
        let dHeight = getAverageHeight(dragonTeam)
        let sCount = sharkTeam.count
        let dCount = dragonTeam.count
        let rCount = raptorTeam.count
        
        
        
        if ((sCount < dCount) && (sCount < rCount)){
            sharkTeam.append(player)
        } else if ((rCount < sCount) && (rCount < dCount)) {
            raptorTeam.append(player)
        } else if ((dCount < sCount) && (dCount < rCount)){
            dragonTeam.append(player)
        } else if ((dCount == sCount) && (sCount == rCount)){
            if ((sHeight <= dHeight) && (sHeight <= rHeight)) {
                sharkTeam.append(player)
            } else if ((dHeight <= sHeight) && (dHeight <= rHeight)) {
                dragonTeam.append(player)
            } else {
                raptorTeam.append(player)
            }
        } else if ((dCount == sCount) && (dCount < rCount)){
            if (dHeight >= sHeight) {
                sharkTeam.append(player)
            } else {
                dragonTeam.append(player)
            }
        } else if ((dCount == rCount) && (dCount < sCount)){
            if (dHeight >= rHeight) {
                raptorTeam.append(player)
            } else {
                dragonTeam.append(player)
            }
        }
        else {
            if (sHeight >= rHeight){
                raptorTeam.append(player)
            } else {
                sharkTeam.append(player)
            }
        }
    }
}

//run the functions to add in the players to the teams

assignPlayers(sortedExperiencedPlayers)
assignPlayers(sortedInexperiencedPlayers)

//This is for verification that the teams all have the same count and good average heights.

dragonTeam.count
sharkTeam.count
raptorTeam.count
getAverageHeight(dragonTeam)
getAverageHeight(sharkTeam)
getAverageHeight(raptorTeam)

//letterWriter will accept an array of players, a string for time and date
//and a string for team name and custom make letters for every
//member of that team's parents or guardians.
func letterWriter(team: Array<Dictionary<String, String>>, practice: String, teamName: String) {
    for player in team {
        let guardianName: String = player["Parents"]!
        let childName: String = player["Name"]!
        print("Dear \(guardianName), \nYour child, \(childName) has been chosen to play for the \(teamName).  Glory and conquest await them on the fields of soccer.  To begin your child's journey, bring them to the soccer field on \(practice) prepared for battle.  \n-The Coach")
    }
}

letterWriter(sharkTeam, practice: "March 17th, 3pm", teamName: "Sharks")
