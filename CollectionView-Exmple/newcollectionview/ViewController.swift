//
//  ViewController.swift
//  newcollectionview
//
//  Created by Waad Alkatheri on 15/01/1440 AH.
//  Copyright © 1440 Waad Alkatheri. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{

    var persons : [ student] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func demoData()  {
        let person : student = student(Name: "Waad", CourseName: "Android ")
        let person2 : student = student(Name: "Ahmed"  , CourseName: "iOS ")
        let person3 : student = student(Name: "Rayan", CourseName:"VR ")
        let person4 : student = student(Name: "Fahad", CourseName:"AI ")
        let person5 : student = student(Name: "Sara", CourseName:"Deep Learning")
        let person6 : student = student(Name: "Ahad", CourseName:"Data foundation")

        self.persons = [ person, person2, person3, person4, person5,person6]
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return persons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
       
        
        let current :student = self.persons[ indexPath.row]
        cell.Name.text = current.Name
        cell.CourseName.text = current.CourseName

        
        return cell
    }
    

    
    


}

