//
//  ItemViewCell.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemViewCell : UITableViewCell<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *insiderCollectionView;

-(void)configureCell:(NSArray *)itemArray;

@end
