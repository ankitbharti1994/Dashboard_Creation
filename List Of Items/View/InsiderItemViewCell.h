//
//  InsiderItemViewCell.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainItem.h"

@interface InsiderItemViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;

-(void)configureCell:(MainItem *)mainItem;
@end
