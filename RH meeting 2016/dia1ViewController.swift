//
//  dia1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit
import Foundation

class dia1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, HomeModelUnoProtocal {
    
    var feedItems: NSArray = NSArray()
    var selectedLocation : LocationUno = LocationUno()
    @IBOutlet weak var listTableView: UITableView!
    
   // let loadingView = UIView()
    
    /// Spinner shown during load the TableView
    //let spinner = UIActivityIndicatorView()
    
    /// Text shown during load the TableView
    //let loadingLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondoApp.jpg")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        self.listTableView.delegate = self
        self.listTableView.dataSource = self
        
        let homeModel = HomeModelUno()
        homeModel.delegate = self
        homeModel.downloadItems()
        
        //self.setLoadingScreen()
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   /* private func setLoadingScreen() {
        
        // Sets the view which contains the loading text and the spinner
        let width: CGFloat = 120
        let height: CGFloat = 30
        let x = (self.listTableView.frame.width / 2) - (width / 2)
        let y = (self.listTableView.frame.height / 2) - (height / 2) - (self.navigationController?.navigationBar.frame.height)!
        loadingView.frame = CGRectMake(x, y, width, height)
        
        // Sets loading text
        self.loadingLabel.textColor = UIColor.grayColor()
        self.loadingLabel.textAlignment = NSTextAlignment.Center
        self.loadingLabel.text = "Cargando"
        self.loadingLabel.frame = CGRectMake(0, 0, 140, 30)
        
        // Sets spinner
        self.spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        self.spinner.frame = CGRectMake(0, 0, 30, 30)
        self.spinner.startAnimating()
        
        // Adds text and spinner to the view
        loadingView.addSubview(self.spinner)
        loadingView.addSubview(self.loadingLabel)
        
        self.listTableView.addSubview(loadingView)
        
    }*/
    
    // Remove the activity indicator from the main view
    private func removeLoadingScreen() {
        
        // Hides and stops the text and the spinner
        //self.spinner.stopAnimating()
        //self.loadingLabel.hidden = true
        
    }
    
    
    
    func itemsDownloaded(items: NSArray) {
        
        feedItems = items
        self.listTableView.reloadData()
        //self.removeLoadingScreen()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of feed items
        return feedItems.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Retrieve cell
        let cellIdentifier: String = "cellDia1"
        let myCell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)!
        // Get the location to be shown
        let item: LocationUno = feedItems[indexPath.row] as! LocationUno
        // Get references to labels of cell
        myCell.textLabel!.text = item.nombre
        
        
        return myCell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // Set selected location to var
        selectedLocation = feedItems[indexPath.row] as! LocationUno
        // Manually call segue to detail view controller
        self.performSegueWithIdentifier("segueDia1", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if (segue!.identifier == "segueDia1"){
            let detailVC  = segue!.destinationViewController as! d1ViewController
            // Set the property to the selected location so when the view for
            // detail view controller loads, it can access that property to get the feeditem obj
            detailVC.selectedLocation = selectedLocation
        }
    }

}
