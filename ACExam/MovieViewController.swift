//
//  MovieViewController.swift
//  ACExam
//
//  Created by martin on 2016/3/28.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    @IBOutlet weak var movieTable: UITableView!

    let theater = Theater()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        movieTable.rowHeight = UITableViewAutomaticDimension
        movieTable.estimatedRowHeight = 50
    }

    override func viewWillAppear(animated: Bool) {

        if let indexPath = movieTable.indexPathForSelectedRow {
            movieTable.deselectRowAtIndexPath(indexPath, animated: false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "ShowMovieDetail" {

            if let desController = segue.destinationViewController as? MovieDetailViewController,
                indexPath = movieTable.indexPathForSelectedRow {

                desController.movie = theater.movieList[indexPath.row]
            }
        }
    }
}

extension MovieViewController: UITableViewDataSource {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theater.movieList.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell", forIndexPath: indexPath)
        let movie = theater.movieList[indexPath.row]

        if let movieCell = cell as? MovieTableViewCell {
            movieCell.movieName.text = movie.name
            movieCell.movieImage.image = UIImage(named: movie.image)
            movieCell.movieDate.text = "上映日期: \(movie.date)"
        }

        return cell
    }
}
