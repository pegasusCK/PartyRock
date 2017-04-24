//
//  PartyCell.swift
//  PartyRock
//
//  Created by Chihkao Yu on 4/24/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        
        //set title in the cell to video title from the object
        videoTitle.text = partyRock.videoTitle
        
        //create URL object from the imageURL
        let url = URL(string: partyRock.imageURL)!
        
        //create asynchronous thread for downloading image from Internet, temp block
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                //return data to synchoronous thread and load
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
    }
    
}
