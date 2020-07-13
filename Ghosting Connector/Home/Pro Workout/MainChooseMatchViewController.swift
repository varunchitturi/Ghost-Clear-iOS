//
//  MainChooseMatchViewController.swift
//  Ghosting Connector
//
//  Created by Varun Chitturi on 7/9/20.
//  Copyright © 2020 Squash Dev. All rights reserved.
//
class matchCell : UITableViewCell{
	@IBOutlet var matchName : UILabel!
	@IBOutlet var playerNames : UILabel!
}
class Match{
	init(pointTimings: [[Double]], player1Places: [[String]], player2Places: [[String]], numGames: Int, totalTimeInSeconds: Int, matchName: String, player1Name: String, player2Name: String, player1Nationality: String, player2Nationality: String) {
		self.pointTimings = pointTimings
		self.player1Places = player1Places
		self.player2Places = player2Places
		self.numGames = numGames
		self.totalTimeInSeconds = totalTimeInSeconds
		self.matchName = matchName
		self.player1Name = player1Name
		self.player2Name = player2Name
		self.player1Nationality = player1Nationality
		self.player2Nationality = player2Nationality
	}
	
	let pointTimings : [[Double]]
	let player1Places : [[String]]
	let player2Places : [[String]]
	let numGames : Int
	let totalTimeInSeconds : Int
	let matchName : String
	let player1Name : String
	let player2Name : String
	let player1Nationality : String
	let player2Nationality : String
	
}
import UIKit
class MainChooseMatchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	var nSuite2019Finalm : Match!
	var egyptOpen2019Finalm : Match!
	var index = 0
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 2
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell", for: indexPath) as! matchCell
		if indexPath.row == 0{
			cell.matchName.text = nSuite2019Finalm.matchName
			cell.playerNames.text = nSuite2019Finalm.player1Name + " vs "
			cell.playerNames.text! += nSuite2019Finalm.player2Name
		}
		if indexPath.row == 1{
			cell.matchName.text = egyptOpen2019Finalm.matchName
			cell.playerNames.text = egyptOpen2019Finalm.player1Name + " vs "
			cell.playerNames.text! += egyptOpen2019Finalm.player2Name
		}
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		index = indexPath.row
		performSegue(withIdentifier: "ChooseProWorkoutAttributesViewControllerSegue", sender: nil)
	}
	@IBAction func goBack(_ sender: Any) {
		self.navigationController?.popViewController(animated: true)
	}
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}
	override func viewDidLoad() {
        super.viewDidLoad()
		nSuite2019Finalm = Match(pointTimings: [[8.7,25.7,18.7,9,4,39.7,14.7,5.7,38.2,34.4,10.2,11.2,21.4,4.95,25.9,2.7,16.2],[40.2, 17.2, 25.7, 27.7, 15.7, 21.7, 11.7, 4.7, 9.7, 7.2, 8.2, 29.4, 2.7, 21.7, 16.7, 4.2, 22.2, 28.7, 24, 30.5, 26.2, 6.7, 40.2, 50.7, 14.1, 24.5, 62.7, 9.6],[11, 29.5, 16.7, 20.4, 32.2, 14.5, 30.9, 10.4, 6.4, 11.8, 11.8, 6.85, 19.9, 5.2, 20.7, 8.4, 12.7, 40, 8.7, 36.5],[44.7, 7.1, 6.7, 16, 21.2, 10.1, 10.7, 13, 13.7, 28.2, 21.7, 32.2, 15.9, 24.2, 87.7, 11.7, 8.7, 14.7],[11.93, 7.7, 13, 29.7, 8, 7.4, 22, 63.7, 20.4, 42.4, 23,4, 6.7, 14.7, 12.7, 10.4, 24.7]], player1Places: [["CR", "LL", "CL", "1", "CR", "LL", "LL", "LL", "LL", "LL", "FL", "LR", "1", "CR", "LL", "LL", "CR", "LL", "CL", "CR", "0", "LL", "LL", "LL", "0", "LR", "LL", "0", "LL", "LL", "LR", "CR", "CL", "FL", "CR", "CR", "LL", "CR", "LR", "LR", "let", "LL", "LL", "CL", "LL", "FL", "0", "LR", "LL", "0", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "FL", "FL", "CL", "FR", "1", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "FL", "LR", "LR", "LR", "CL", "0", "LL", "LL", "LL", "0", "LR", "LR", "CL", "1", "CR", "CL", "CL", "CR", "LR", "CL", "CL", "LL", "0", "CR", "CL", "0", "LR", "LL", "LL", "CL", "FL", "CR", "FL", "LL", "0", "LL", "1", "CR", "CR", "LL", "FR", "FR", "FR", "CL", "0"],["LL", "LL", "LL", "LL", "CL", "CL", "CL", "CR", "CL", "CR", "LL", "LR", "FR", "CR", "FR", "0", "LR", "CL", "FL", "CL", "FL", "LL", "FL", "1", "CR", "LL", "LL", "FL", "LL", "FL", "FL", "LR", "LL", "FR", "0", "LL", "CL", "CR", "CR", "LL", "LL", "LL", "LL", "1", "CR", "CL", "LL", "FR", "LL", "0", "LL", "LL", "FL", "FL", "LL", "FL", "LL", "CR", "0", "LR", "LL", "LL", "FL", "let", "LR", "0", "LL", "CR", "CR", "1", "CR", "LL", "LL", "0", "LL", "LL", "1", "CR", "LL", "LL", "LL", "LL", "FL", "LL", "CR", "CL", "CL", "FL", "1", "LR", "1", "LL", "CL", "LL", "CL", "LL", "LL", "FL", "FL", "0", "LL", "LL", "LL", "LL", "1", "CR", "LL", "1", "CL", "LR", "LL", "LL", "LR", "LL", "CL", "CR", "1", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "CR", "CL", "let", "CR", "LL", "LL", "FL", "LL", "CL", "CL", "LL", "CR", "CL", "1", "CL", "LR", "LL", "LL", "LL", "LL", "LL", "LR", "0", "LL", "LL", "LR", "LR", "CR", "CL", "CL", "LR", "0", "LR", "LL", "0", "LL", "LL", "LL", "LL", "LL", "FL", "LL", "CR", "LL", "LL", "LL", "LL", "LL", "CR", "1", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "CR", "LL", "CL", "LL", "LL", "LL", "LL", "LL", "LL", "CL", "0", "LL", "LL", "LR", "LL", "let", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "let", "LL", "LL", "LL", "CL", "CL", "LL", "LR", "CL", "LL", "LL", "CL", "LL", "CL", "LL", "LL", "LL", "LL", "LL", "CL", "CR", "LL", "CL", "1", "CR", "LL", "LL", "1"],["CR", "LL", "LL", "FL", "0", "LL", "LL", "LL", "CR", "CR", "CL", "LL", "LR", "FL", "FR", "0", "CR", "LL", "LR", "CL", "FL", "1", "CR", "CR", "CL", "CR", "LL", "CR", "LL", "0", "LL", "LL", "LL", "LR", "LR", "CR", "LL", "CL", "LL", "CL", "0", "LR", "LR", "CL", "CL", "CR", "1", "CR", "CL", "LL", "LL", "LL", "LL", "CR", "CL", "LL", "CL", "0", "LL", "LL", "CL", "1", "CR", "LL", "FL", "1", "CL", "LL", "LL", "CL", "0", "LL", "LL", "CR", "LL", "0", "LL", "CR", "1", "CR", "LL", "LL", "FL", "FR", "CL", "CL", "FL", "1", "CL", "LL", "0", "LL", "LL", "LL", "LL", "LL", "LL", "0", "LR", "LL", "0", "LL", "LR", "FR", "FR", "1", "CR", "LL", "LL", "FL", "CL", "LL", "LL", "CL", "LL", "LL", "LL", "LR", "LR", "CR", "CL", "1", "CL", "LR", "CR", "CR", "1", "CR", "LL", "CL", "FL", "LL", "FR", "CR", "LL", "CL", "CL", "FR", "LL", "FL", "FL", "0"],["LL", "LL", "CR", "LL", "LR", "LR", "CR", "CL", "CR", "CR", "FR", "CR", "CL", "CL", "LL", "CL", "1", "CR", "CL", "CL", "1", "CL", "LR", "CR", "1", "CR", "LL", "CL", "FL", "CL", "FL", "0", "LL", "LL", "LL", "LL", "LL", "CL", "0", "LR", "CR", "LL", "0", "LL", "LL", "FL", "CR", "0", "LR", "LR", "CL", "CR", "FL", "0", "LL", "CR", "CL", "CL", "FL", "1", "CR", "LL", "LL", "CL", "LL", "LL", "CL", "LL", "LL", "FR", "0", "LL", "CR", "CL", "CR", "CL", "LL", "FL", "FL", "1", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "1", "CL", "LL", "LL", "CL", "LL", "CL", "1", "CR", "LL", "LL", "LL", "LR", "LR", "LL", "1", "CL", "LL", "LL", "LL", "FL", "LL", "CL", "LL", "LL", "LL", "LL", "LL", "CL", "LR", "LL", "CL", "LL", "LL", "FL", "LL", "LL", "LR", "LL", "LL", "LL", "LL", "CL", "CL", "FL", "1", "CR", "LL", "LR", "LR", "0", "LL", "LR", "1", "CR", "LR", "LR", "FL", "FL", "CR", "1"],["CR", "LL", "LL", "CL", "1", "CL", "LL", "FL", "let", "CL", "CR", "CL", "CR", "CL", "0", "LL", "LL", "LL", "CL", "CL", "CL", "CL", "CR", "LL", "LL", "0", "LR", "LL", "0", "LL", "LL", "FL", "0", "LR", "LL", "LL", "LL", "LL", "CL", "0", "LL", "LL", "FL", "LR", "CL", "CR", "CL", "LL", "LL", "LL", "CL", "LL", "LL", "LL", "LL", "LL", "FL", "LR", "LL", "CL", "1", "CR", "LL", "LL", "CL", "CL", "LL", "LL", "0", "LL", "LL", "CL", "LL", "FL", "LL", "LL", "LL", "CL", "CR", "LR", "CL", "CL", "1", "CR", "LR", "LL", "LL", "CL", "LL", "LL", "FL", "0", "LL", "LL", "0", "LL", "CL", "LL", "CL", "1", "CR", "LL", "CL", "FL", "LL", "0", "LL", "CL", "LR", "0", "LR", "LL", "FL", "LL", "LL", "CR", "CR", "LL", "0"]], player2Places: [["LL", "LL", "0", "CL", "LL", "LL", "LL", "LL", "LL", "LL", "FL", "CL", "0", "LL", "LL", "LL", "FR", "CL", "FL", "1", "CR", "LL", "LL", "1", "CL", "LL", "CR", "1", "CR", "LL", "FL", "CR", "LL", "FL", "LR", "LR", "LL", "LR", "LR", "LR", "CR", "let", "CR", "LL", "LL", "FL", "LL", "1", "CL", "LL", "1", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "FL", "CR", "CL", "0", "LL", "LL", "LL", "LL", "LL", "LL", "LR", "FL", "FL", "CR", "LL", "1", "CR", "LL", "LL", "1", "CL", "LR", "LL", "0", "LL", "LL", "FL", "LL", "CR", "FR", "CL", "CR", "1", "LL", "1", "CL", "LR", "CR", "CL", "FL", "FL", "CR", "CR", "CL", "1", "CR", "0", "LL", "FR", "FR", "FR", "LL", "FR", "1"],["CR", "LL", "CL", "CL", "CL", "CR", "LL", "FL", "FR", "LL", "LR", "CL", "CR", "FL", "CR", "1", "CL", "LL", "FL", "FL", "CL", "CL", "LL", "0", "LL", "LL", "FL", "LR", "CL", "FL", "LR", "LR", "FR", "1", "CR", "CL", "FL", "LR", "FL", "LL", "LL", "LL", "LL", "0", "LL", "FL", "CL", "LL", "FR", "1", "CR", "LL", "FL", "FL", "LR", "CL", "FL", "LL", "1", "CL", "LR", "LL", "CL", "let", "CL", "CL", "1", "CR", "FL", "LL", "0", "LL", "LL", "1", "CR", "CL", "FL", "0", "LL", "LL", "FR", "LL", "FL", "FL", "LL", "LL", "CL", "FL", "0", "CL", "0", "CR", "LL", "LL", "CL", "CL", "LL", "FL", "FL", "CR", "1", "CR", "LL", "LL", "LL", "LL", "0", "LL", "LL", "0", "LR", "LR", "LL", "CL", "LR", "CL", "FL", "0", "LL", "LL", "LL", "CL", "LL", "LL", "CL", "LR", "FR", "let", "LL", "LL", "LL", "FL", "CL", "LL", "FL", "CR", "FR", "0", "LR", "LR", "LL", "LL", "LL", "LL", "CL", "CL", "1", "CR", "LL", "FL", "FR", "FL", "LL", "FL", "CL", "CR", "1", "CL", "CR", "1", "CR", "LL", "LL", "FR", "CL", "CL", "FL", "CL", "CR", "LL", "LL", "LL", "LL", "FL", "0", "LL", "CL", "CL", "LL", "LL", "LL", "FL", "FR", "CR", "LL", "LL", "CL", "LL", "LL", "LL", "CL", "FR", "1", "CR", "LL", "LR", "CR", "let", "CR", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "let", "CR", "LL", "LL", "LL", "LL", "FL", "CL", "LL", "FL", "LL", "CR", "LL", "LL", "FL", "LL", "LL", "LL", "LL", "LL", "FL", "CR", "LL", "FL", "0", "LL", "LL", "CR", "0"],["LL", "CR", "CL", "CR", "1", "CR", "LL", "LL", "LL", "LR", "FR", "LL", "LL", "LR", "CR", "1", "CL", "LR", "CL", "LL", "FL", "LR", "0", "LL", "FR", "FL", "LL", "LL", "FR", "CL", "1", "CR", "LL", "LL", "LL", "CR", "CL", "FR", "LL", "LR", "LL", "1", "CL", "LL", "CL", "LR", "FL", "CR", "0", "LL", "LL", "LL", "LL", "LL", "LL", "FR", "LL", "CL", "FR", "1", "CR", "LL", "LL", "FL", "0", "LL", "FL", "0", "LR", "LL", "CL", "FR", "1", "CR", "LL", "FL", "CR", "CL", "1", "CR", "LL", "LL", "0", "LL", "CL", "LL", "FL", "CL", "LL", "FL", "0", "CR", "CL", "1", "CR", "LL", "LL", "LL", "LL", "LL", "1", "CL", "LL", "CR", "1", "CR", "LL", "CR", "FR", "CL", "0", "CL", "CL", "CL", "FL", "LL", "LL", "FL", "CR", "LL", "LL", "FL", "FL", "LR", "FR", "0", "LR", "LR", "CL", "0", "LL", "LL", "FL", "FL", "CL", "LR", "LR", "CL", "LL", "LL", "CL", "CL", "FL", "1"],["CR", "LL", "LL", "LR", "LL", "CL", "CR", "FR", "FL", "LR", "CR", "CL", "CL", "CL", "LL", "FL", "0", "LL", "LL", "0", "LR", "LR", "0", "LL", "LL", "FL", "LR", "FL", "CL", "1", "CR", "LL", "LL", "LL", "LL", "LL", "FL", "1", "CL", "LL", "LL", "1", "CR", "LL", "CL", "CR", "1", "CL", "LR", "CL", "CR", "FR", "1", "CR", "CL", "LL", "CL", "FL", "FL", "0", "LL", "LL", "CL", "FL", "LL", "CL", "LL", "LL", "LL", "1", "CR", "LL", "FR", "FL", "LR", "LL", "LL", "CL", "FL", "0", "LL", "LL", "LL", "LL", "LL", "FL", "CL", "LL", "LL", "FL", "0", "LR", "LL", "LL", "LL", "LL", "FL", "0", "LL", "LL", "LL", "LL", "CR", "LL", "LL", "0", "CR", "LL", "LL", "CL", "CL", "LL", "FL", "LL", "LL", "LL", "LL", "LL", "FL", "CR", "CL", "LL", "CL", "CL", "FL", "LL", "FL", "LR", "LL", "LL", "LL", "LL", "FL", "FL", "0", "LL", "LL", "LR", "1", "CR", "LL", "FR", "0", "LL", "LR", "FL", "FL", "LR", "0"],["LL", "LL", "LL", "CL", "0", "LR", "CL", "CL", "let", "LR", "LL", "CL", "FR", "1", "CR", "LL", "LL", "LL", "FL", "LL", "FL", "CL", "CL", "FL", "1", "CL", "CL", "FL", "1", "CR", "LL", "FL", "1", "CL", "LL", "LL", "LL", "LL", "LL", "CL", "1", "CR", "LL", "CL", "FL", "CR", "FL", "CL", "LL", "LL", "LL", "LL", "FL", "LL", "LL", "LL", "LL", "LL", "CL", "LR", "LL", "0", "LL", "LL", "CL", "LL", "FL", "LL", "CL", "1", "CR", "LL", "LL", "CL", "CL", "CR", "LL", "LL", "LL", "FL", "LR", "CR", "LL", "FL", "0", "LL", "CR", "LL", "LL", "LL", "LL", "FL", "FL", "1", "CR", "LL", "CL", "1", "CR", "LL", "LL", "LL", "FL", "0", "LL", "CL", "LL", "LL", "1", "CR", "LL", "FL", "CR", "1", "CL", "LL", "FL", "LL", "LL", "FL", "LL", "FR", "CL", "1"]], numGames: 5, totalTimeInSeconds: 3900, matchName: "2019 Netsuite Open Finals Mens", player1Name: "Tarek Momen", player2Name: "Mohammed Elshorbagy", player1Nationality: "egypt", player2Nationality: "egypt")
		egyptOpen2019Finalm = Match(pointTimings: [[59.7, 90.7, 25.7, 7.7, 64.7, 37.7,  26.7,  15.7,  36.7,  20.7, 63.7, 2.7, 23.7, 15.7, 18.7, 5.2, 18.7, 19.7, 17.7],[6.7, 31.7, 17.7, 3.7, 71.7, 18.7, 33.7, 25.7, 69.7, 44.7, 2.7, 25.7, 104.7, 7.7, 28.7, 48.7, 12.7, 14.7, 23.7, 15.7, 107.7, 36.7, 15.7, 29.7, 59.7],[36.7, 9.7, 22.7, 7.7, 39.7, 21.7, 21.7, 16.7, 6.7, 29.7, 2.7, 21.7, 7.7, 26.7, 17.7, 3.7, 20.7, 24.7, 6.7, 30.7, 12.7, 61.7, 25.7, 5.7]], player1Places: [["CR", "LL", "LL", "LR", "LL", "LR", "LL", "LL", "CL", "FL", "LL", "CL", "LR", "FL", "CL", "FL", "FL", "LR", "FR", "LL", "FL", "CR", "0", "LL", "FL", "CR", "LL", "FL", "CL", "LR", "LL", "LL", "FL", "LL", "LL", "LL", "LL", "CL", "LR", "FL", "CL", "LR", "LL", "LL", "FR", "FL", "LR", "LL", "LL", "LL", "CL", "CL", "LR", "CR", "LL", "1", "CR", "LL", "LL", "FR", "LR", "LL", "FR", "FL", "CL", "LR", "1", "CL", "LL", "CL", "let", "CL", "LL", "FL", "LR", "LR", "FL", "CL", "LL", "LL", "CR", "LL", "CL", "LL", "CR", "LL", "CL", "CL", "LR", "LL", "FR", "LL", "LL", "CL", "CR", "CL", "0", "CL", "LL", "LL", "CL", "LL", "LL", "CL", "LL", "CL", "LR", "CR", "CL", "0", "LR", "LL", "CR", "LL", "LL", "LL", "CL", "FR", "CL", "FL", "0", "LL", "LR", "FL", "CL", "CL", "let", "LL", "CL", "LR", "LL", "CL", "LL", "CL", "LL", "FL", "CR", "LR", "LL", "CL", "FR", "0", "CR", "LL", "CL", "LL", "LL", "CL", "CL", "FR", "1", "CR", "LL", "CR", "CL", "FR", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "CL", "FR", "LR", "CR", "LL", "LL", "CR", "CL", "LL", "LL", "LL", "FL", "0", "CL", "1", "CR", "CL", "LL", "CL", "FL", "FR", "LL", "CR", "LL", "CL", "0", "LL", "LL", "CL", "LR", "LR", "0", "CR", "CL", "LR", "LL", "LL", "CL", "1", "CR", "LL", "1", "CL", "LR", "LL", "LR", "CR", "LL", "0", "LL", "LL", "LL", "LR", "LR", "LR", "FL", "0", "CR", "LL", "CR", "LL", "LL", "CL", "0"], ["CL", "FL", "let", "CL", "LR", "LL", "FL", "LL", "CR", "FR", "CL", "LL", "FL", "CL", "0", "LR", "CL", "LR", "CR", "CL", "LL", "FR", "0", "CL", "0", "CR", "FL", "CR", "CL", "CL", "CR", "CL", "LL", "LL", "CL", "FL", "CR", "CL", "CL", "LL", "FL", "LR", "LR", "LL", "FR", "LL", "CL", "LL", "LL", "LL", "let", "CL", "LL", "LR", "CR", "LL", "LR", "FL", "0", "CL", "LL", "CL", "CL", "FR", "CL", "LL", "CL", "LR", "CR", "CL", "FR", "CL", "1", "CR", "LL", "LL", "LL", "FL", "LR", "LL", "LR", "LR", "0", "CL", "LR", "LL", "LL", "LR", "FL", "CR", "CL", "LL", "LL", "CL", "LR", "LL", "LL", "CL", "FL", "CR", "CL", "CL", "CR", "CR", "FL", "FR", "FR", "LL", "1", "CR", "LL", "LL", "LL", "LL", "CR", "CL", "CR", "FL", "FL", "LR", "LL", "LL", "CL", "LL", "LL", "1", "CL", "0", "CL", "LL", "LL", "LL", "LL", "FR", "LL", "LL", "let", "CL", "LL", "LL", "CL", "CL", "LL", "CR", "LL", "CL", "LR", "CR", "CR", "CL", "LR", "FL", "CL", "CR", "LR", "LR", "FL", "LL", "LL", "LL", "CL", "CR", "CL", "LL", "LL", "FL", "FL", "LL", "FL", "CR", "LR", "CR", "LL", "CL", "CL", "let", "CL", "LR", "let", "CL", "CR", "LL", "LL", "CL", "FL", "LR", "CR", "CR", "CL", "FL", "0", "CR", "FL", "CL", "LL", "CL", "FR", "CL", "CR", "FL", "CL", "CL", "FR", "CL", "CL", "LL", "CL", "CL", "FL", "1", "CR", "LL", "CL", "LL", "let", "LL", "CR", "FL", "CR", "CR", "CR", "0", "CL", "LL", "LR", "CL", "LL", "FR", "CL", "CL", "1", "CR", "LL", "LL", "CL", "FL", "CR", "1", "CL", "LR", "LR", "LR", "CR", "LL", "FL", "CL", "LR", "LR", "LL", "CL", "CL", "FL", "CR", "LL", "LL", "CL", "CL", "LL", "LL", "CL", "CL", "CR", "FL", "LR", "CR", "LR", "LL", "LL", "CL", "CL", "LL", "FL", "LL", "LL", "LL", "CL", "0", "CL", "LL", "LL", "CL", "LR", "LL", "LL", "LL", "LL", "CR", "FR", "FL", "LR", "0", "CR", "CL", "CL", "CL", "FL", "FR", "1", "CR", "LL", "LL", "CL", "CR", "CL", "FL", "CR", "FL", "LR", "CL", "CR", "1", "CL", "LR", "CL", "CL", "CL", "FL", "LR", "LR", "FL", "LL", "CL", "CR", "CR", "LR", "CR", "LL", "LL", "LR", "CL", "CL", "0"], ["CL", "FL", "FR", "CL", "LL", "LL", "CR", "CL", "FR", "CL", "LL", "LL", "CL", "0", "CR", "FR", "FR", "FR", "0", "CL", "FR", "FL", "LR", "CL", "CL", "LL", "CR", "let", "CL", "CR", "LL", "1", "CR", "LL", "CL", "LL", "LL", "CL", "CR", "FR", "LL", "LL", "FL", "CR", "CR", "CL", "CL", "CR", "1", "CL", "LL", "LL", "FL", "LL", "LL", "FL", "FR", "0", "CL", "CL", "CL", "LL", "CL", "CL", "LL", "CL", "0", "LR", "CL", "FL", "LR", "LR", "CL", "LL", "LL", "FL", "1", "CR", "LR", "FL", "LR", "1", "CL", "FL", "CR", "LL", "CL", "LL", "LL", "FL", "CR", "FL", "LR", "0", "CL", "FR", "0", "CR", "FR", "CL", "LR", "CR", "CR", "CR", "LR", "CL", "0", "CL", "LL", "CL", "CL", "CR", "LL", "FL", "1", "CR", "CR", "LL", "CL", "LL", "FL", "LL", "CL", "FR", "CL", "FL", "1", "CL", "LR", "LR", "FR", "FL", "FR", "FR", "let", "LR", "FL", "0", "CL", "LR", "FL", "LL", "CL", "CL", "CL", "FL", "1", "CR", "LR", "CR", "FL", "LL", "CL", "LL", "FL", "FL", "CR", "let", "LL", "CL", "CL", "CL", "0", "CL", "LL", "CL", "CL", "CL", "CL", "CR", "CL", "CL", "CL", "CR", "let", "CL", "LR", "CL", "CL", "let", "CL", "CL", "LL", "CL", "CR", "LR", "LL", "CR", "FL", "CL", "CR", "CL", "LR", "LL", "LL", "LL", "LL", "CL", "CL", "CL", "CL", "LL", "LL", "0", "CR", "LL", "FR", "LL", "LL", "LL", "FL", "CR", "CL", "1", "CR", "CL", "0"]], player2Places: [["LL", "LL", "LL", "LL", "CL", "LL", "CL", "LR", "CL", "LL", "CL", "LR", "LR", "LR", "CL", "CL", "CR", "CR", "FL", "CL", "CR", "LL", "1", "CR", "CL", "CR", "LL", "CL", "CR", "LR", "LL", "LL", "CL", "CR", "LL", "LL", "LL", "CL", "LL", "LR", "LR", "CR", "LL", "CL", "FR", "CL", "CR", "LL", "LL", "LL", "LL", "LL", "LR", "CR", "LL", "CR", "0", "LL", "LL", "CL", "FR", "LL", "LR", "LL", "CR", "CR", "CR", "0", "LR", "LL", "FL", "let", "LR", "CL", "CR", "CR", "LR", "LL", "LL", "LL", "LR", "CL", "CR", "LR", "CL", "LL", "LL", "CL", "LR", "LL", "CL", "LL", "LL", "LL", "LR", "CR", "1", "CR", "LR", "FR", "LL", "LR", "LL", "LL", "LL", "LL", "LR", "FL", "LR", "1", "CL", "LL", "LR", "FR", "LL", "CR", "CL", "FL", "FR", "LL", "FL", "1", "CR", "LR", "FL", "LR", "FL", "FL", "let", "CR", "LL", "CR", "LR", "CR", "CL", "FR", "FR", "CL", "LR", "CR", "LL", "CL", "FR", "FR", "1", "CL", "LL", "LL", "LL", "CL", "LL", "LR", "FL", "0", "LL", "LL", "CR", "CR", "CL", "LL", "LL", "LL", "LL", "LL", "LL", "LL", "CL", "CR", "CL", "CR", "CL", "CR", "CL", "LL", "CL", "CL", "CL", "CL", "CR", "1", "CR", "FL", "0", "LL", "FL", "CL", "FL", "FR", "LL", "LR", "CL", "FR", "1", "CR", "LL", "CL", "CR", "CR", "LR", "1", "CL", "LL", "LR", "LR", "FR", "LL", "LL", "0", "LL", "CL", "0", "LR", "LL", "LR", "LR", "CL", "CL", "1", "CR", "CR", "LL", "CR", "CR", "CR", "CR", "1", "CL", "LL", "LR", "LR", "LL", "LL", "1"], ["CR", "LR", "let", "CR", "LR", "CL", "LL", "CL", "CL", "LL", "CL", "CR", "CR", "CR", "CR", "1", "CL", "LL", "LR", "LR", "FR", "CL", "FL", "1", "CR", "1", "CL", "CL", "CR", "CR", "FL", "CL", "LL", "CR", "CL", "FR", "CL", "LR", "LL", "CR", "LL", "LL", "CR", "FL", "LL", "LR", "LL", "LL", "LL", "CL", "LL", "CR", "let", "CR", "LR", "CL", "CR", "LL", "CL", "FL", "1", "CR", "LR", "LL", "LL", "CR", "CL", "CL", "LL", "LL", "CR", "LL", "CR", "LL", "LR", "0", "LL", "CL", "LL", "CL", "CR", "LR", "FR", "FL", "1", "CR", "CR", "LL", "LL", "LR", "CL", "CR", "CL", "LL", "LL", "CR", "LR", "LR", "CL", "CL", "LR", "LR", "LL", "LL", "LR", "LR", "LL", "FR", "FR", "LL", "CR", "0", "LL", "CL", "CR", "LL", "CL", "LL", "LR", "CL", "LR", "CR", "CL", "CL", "LL", "CR", "CL", "CL", "0", "CR", "1", "CR", "CR", "CL", "LL", "LL", "CR", "CL", "LL", "LR", "let", "CR", "LL", "LL", "CL", "LL", "LR", "LR", "LR", "CL", "LR", "LR", "FL", "LL", "LR", "CR", "CR", "LR", "CR", "CR", "LL", "LR", "LL", "LL", "LL", "CL", "LR", "CR", "LL", "CL", "CR", "CL", "FR", "LR", "LR", "FL", "CR", "LL", "LR", "CR", "let", "CR", "LR", "let", "CR", "LR", "CL", "LL", "LL", "CL", "CR", "CR", "LR", "CL", "CR", "1", "CL", "LL", "LL", "LL", "LL", "FR", "FL", "LR", "FR", "LR", "CL", "CR", "LL", "CL", "CL", "FR", "CL", "CL", "FL", "0", "LL", "LL", "LL", "let", "CR", "CL", "LR", "LR", "CL", "FL", "1", "CR", "LL", "CL", "LR", "LL", "FL", "FR", "CL", "FR", "0", "LL", "LL", "LL", "FL", "LR", "LL", "0", "LR", "CL", "LR", "LR", "LL", "CL", "CL", "LR", "CR", "CL", "FR", "CL", "FL", "LR", "CL", "CL", "CL", "LR", "CL", "LL", "LL", "LL", "CR", "LL", "CR", "CR", "LL", "LL", "CL", "CL", "FL", "LL", "LL", "CL", "LL", "LR", "LL", "LR", "1", "CR", "LL", "LL", "CL", "FL", "LR", "LL", "LL", "LL", "FL", "CR", "FL", "CR", "CL", "1", "CL", "CL", "FR", "CL", "FL", "CR", "0", "LL", "LL", "CL", "FR", "LL", "FL", "LR", "CL", "CR", "CL", "CR", "0", "LR", "CL", "LR", "CL", "FL", "LR", "LR", "LL", "LR", "LL", "CL", "LR", "LR", "CR", "CL", "LL", "CR", "FR", "CL", "CL", "1"], ["CR", "CL", "FR", "CR", "CL", "CL", "LR", "CL", "FR", "LL", "FL", "LL", "CR", "1", "CL", "LL", "FR", "FR", "FR", "1", "CR", "LR", "FL", "LR", "CL", "CR", "CL", "LR", "FL", "let", "CR", "FL", "FR", "LL", "0", "LL", "CL", "LL", "LL", "FL", "LR", "FR", "FR", "LL", "LL", "FL", "LR", "FR", "LL", "FL", "FR", "0", "LR", "CL", "CL", "LL", "LL", "CL", "CR", "1", "CR", "CL", "CL", "LL", "LL", "LL", "CL", "LL", "1", "CL", "CL", "LR", "FL", "CR", "CR", "LL", "CL", "CL", "0", "CL", "FR", "LL", "CL", "0", "LR", "CR", "CR", "LL", "LL", "LL", "CL", "CR", "CL", "FL", "FR", "1", "CR", "FL", "1", "CL", "CR", "CL", "FL", "CR", "LL", "CR", "CL", "LL", "1", "CR", "LR", "CL", "FL", "LL", "CR", "CL", "0", "CL", "LL", "CL", "CL", "FR", "FL", "CL", "CL", "CL", "FR", "FL", "0", "LR", "LR", "FL", "CL", "CR", "FR", "let", "CL", "LL", "CL", "1", "CR", "CR", "CL", "LR", "LR", "LL", "LR", "FL", "FR", "0", "CL", "CR", "LL", "CR", "CL", "CL", "LL", "CR", "CR", "let", "CR", "CL", "CL", "FL", "1", "CR", "LL", "LL", "LL", "CL", "LL", "LR", "FR", "CL", "LL", "LR", "let", "CR", "LR", "CL", "FL", "CL", "let", "CR", "LR", "LL", "LL", "LR", "CL", "CR", "LR", "CL", "CL", "CR", "CL", "FL", "CL", "LL", "CL", "LL", "CL", "LL", "CL", "LL", "CL", "LL", "1", "CL", "CL", "FR", "FR", "CL", "LL", "CL", "CR", "LR", "0", "CL", "FR", "1"]], numGames: 3, totalTimeInSeconds: 3900, matchName: "2019 Egyptian Open Finals Mens", player1Name: "Ali Farag", player2Name: "Karim Abdel Gawad", player1Nationality: "egypt", player2Nationality: "egypt")
			
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "ChooseMatchTableViewControllerSegue" {
			if let childVC = segue.destination as? ChooseMatchTableViewController {
				childVC.tableView.delegate = self
				childVC.tableView.dataSource = self
			}
		}
		if segue.identifier == "ChooseProWorkoutAttributesViewControllerSegue" {
			if let childVC = segue.destination as? ChooseProWorkoutAttributesViewController {
				let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
				selectionFeedbackGenerator.selectionChanged()
				if index == 0{
					childVC.chosenMatch = nSuite2019Finalm
				}
				if index == 1{
					childVC.chosenMatch = egyptOpen2019Finalm
				}
			}
		}
    }
}
