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
        videoTitle.text = partyRock.videoTitle
        // TODO: set image from URL
    }
    
}
