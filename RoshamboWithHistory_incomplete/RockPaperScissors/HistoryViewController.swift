//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Steven Xu on 2016-01-09.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UITableViewController {
	var history = [RPSMatch]()
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("historyCell")!
		let historyForRow = self.history[indexPath.row]
		let didTie = historyForRow.p1 == historyForRow.p2
		let didWin = historyForRow.winner == historyForRow.p1
		cell.textLabel?.text = didTie ? "Tie!" : (didWin ? "Win!" : "Lose!")
		if let detail = cell.detailTextLabel {
			detail.text = "\(historyForRow.winner) vs \(historyForRow.loser)"
		}
		return cell
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return history.count
	}
}