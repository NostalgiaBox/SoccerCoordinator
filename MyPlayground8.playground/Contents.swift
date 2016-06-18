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
    "Experience": true,
    "Height": 44,
    "Parents": "Thomas Helm and Eva Jones"]

pHelm["Experience"]
//var truth: Bool = eGordon["Experience"]
if  pHelm["Experience"] == false
{
    print("Hey!");
}

let lClay = [
    "Name": "Les Clay",
    "Experience": true,
    "Height": 42,
    "Parents": "Wynonna Brown"]

let hKrustofski  = [
    "Name": "Hershel Krustofski",
    "Experience": true,
    "Height": 45,
    "Parents": "Hyman and Rachel Krustofski"]

let dSoto  = [
    "Name": "Diego Soto",
    "Experience": true,
    "Height": 41,
    "Parents": "Robin and Sarika Soto"]

let cAlaska  = [
    "Name": "Chloe Alaska",
    "Experience": false,
    "Height": 47,
    "Parents": "David and Jamie Alaska"]

let aWillis  = [
    "Name": "Arnold Willis",
    "Experience": false,
    "Height": 43,
    "Parents": "Claire Willis"]

let sGreenberg  = [
    "Name": "Suzane Greenberg",
    "Experience": true,
    "Height": 44,
    "Parents": "Henrietta Dumas"]

let sDali  = [
    "Name": "Sal Dali",
    "Experience": false,
    "Height": 41,
    "Parents": "Gala Dali"]

let jKavalier = [
    "Name": "Joe Kavalier",
    "Experience": false,
    "Height": 39,
    "Parents": "Sam and Elaine Kavalier"]

let bFinklestein = [
    "Name": "Ben Finklestein",
    "Experience": false,
    "Height": 44,
    "Parents": "Aaron and Jill Finklestein"
]

let kStein  = [
    "Name": "Kimmy Stein",
    "Experience": false,
    "Height": 41,
    "Parents": "Bill and Hillary Stein"]

let sAdams = [
    "Name": "Sammy Adams",
    "Experience": false,
    "Height": 45,
    "Parents": "Jeff Adams"]

let kSaygan  = [
    "Name": "Karl Saygan",
    "Experience": true,
    "Height": 42,
    "Parents": "Heather Bledsoe"]

let jSmith  = [
    "Name": "Joseph Smith",
    "Experience": true,
    "Height": 43,
    "Parents": "Jim and Jan Smith"]

let jTanner  = [
    "Name": "Jill Tanner",
    "Experience": true,
    "Height": 36,
    "Parents": "Clara Tanner"]

let bBon  = [
    "Name": "Bill Bon",
    "Experience": true,
    "Height": 43,
    "Parents": "Sara and Jenny Bon"]

let eGordon  = [
    "Name": "Eva Gordon",
    "Experience": false,
    "Height": 45,
    "Parents": "Wendy and Mike Gordon"]

let mGill = [
    "Name": "Matt Gill",
    "Experience": false,
    "Height": 40,
    "Parents": "Charles and Sylvia Gill"]

//Whew, finally got all of those players added.  Note to self, come up with a better way to add players

//Now we need to make an array of all of the players using their dictionaries

let allPlayers = [jSmith, jTanner, bBon, eGordon, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinklestein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

//Let's make 2 more arrays, one for experienced and one for inexperienced players
//NOTE I had to look up how to declare an empty array without a type.  I found this information on StackOverflow

var inexperiencedPlayers: [AnyObject] = []

var experiencedPlayers: [AnyObject] = []

//Now we will loop through all of the players and seperate them into experienced and inexperienced.
var switcher = 0
for player in allPlayers {
    print(player["Height"])
    if (player["Experience"] == false) {
        inexperiencedPlayers.append(player)
    }else {
        experiencedPlayers.append(player)
    }
}
print("hello")

//Ok now that we have all of our players sorted by experience we can
//add them to the teams.  I am going to take the extra step and sort
//The experienced, and inexperienced arrays by height.
print("hello")
print("hello")

experiencedPlayers.count


//var sortedExperiencedPlayers: [AnyObject] = []

print("Hello")
//print(maximumHeight)
var sortedExperiencedPlayers: Array<AnyObject> = []
experiencedPlayers.count
for number in 1...experiencedPlayers.count {
    var maximumHeight = 0
    for player1 in experiencedPlayers {
        if player1["Height"] as? Int > maximumHeight {
            maximumHeight = (player1["Height"] as? Int)!
        }
        print(player1["Height"])
        print("yo")
    }

    print(maximumHeight)
    var count = 0
    for player2 in experiencedPlayers {
        if player2["Height"] as? Int == maximumHeight {
            sortedExperiencedPlayers.append(player2)
            experiencedPlayers.removeAtIndex(count)
            //experiencedPlayers.count
            print("Yo")
        }
        count += 1
    }
}

print("test1")
sortedExperiencedPlayers[0]
sortedExperiencedPlayers[4]

