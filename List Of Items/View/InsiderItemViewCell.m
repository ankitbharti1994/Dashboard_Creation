//
//  InsiderItemViewCell.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "InsiderItemViewCell.h"

@implementation InsiderItemViewCell

-(void)configureCell:(MainItem *)mainItem {
    self.imageView.image=[UIImage imageNamed:mainItem.imageName];
    self.itemLabel.text=[mainItem title];
}
@end
