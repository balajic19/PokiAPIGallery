//
//  ViewController.swift
//  PokiAPIGallery
//
//  Created by
//balajichandupatla1@gmail.com
//A00245077

//nutakki.shivaramakrishna99@gmail.com
//A00245380

//A00245384 - rohith.god1997@gmail.com
//A00245382 - Alekhyachowdary605@gmail.com

//kavyach23@gmail.com
//A00246628

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pokenCollectionView: UICollectionView!
    var listOfPoken = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        pokenCollectionView?.register(PokenCell.self, forCellWithReuseIdentifier: "PokenCell")
        
        pokenCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")

        PokeAPIHelper.fetchAllImages { images in
            self.listOfPoken = images
            DispatchQueue.main.async {
                self.pokenCollectionView.reloadData()
            }
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfPoken.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120));
        imageview.image = listOfPoken[indexPath.row]
        
        myCell.contentView.addSubview(imageview)


        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }

    
}

