//
//  MovieDetailViewController.swift
//  ACExam
//
//  Created by martin on 2016/3/28.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieBottom: UIView!
    @IBOutlet weak var movieScrollView: UIScrollView!

    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let mov = movie {
            navigationItem.title = mov.name
            movieImage.image = UIImage(named: mov.image)
            movieDescription.text = mov.description
        }
    }

    override func viewWillLayoutSubviews() {
        let width = movieScrollView.frame.width
        let height = movieBottom.convertPoint(CGPointZero, toView: movieScrollView).y

        movieScrollView.contentSize = CGSizeMake(width, height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
