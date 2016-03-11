//
//  Mycustomview.h
//  customdelegate
//
//  Created by Rajarajeswaran Shanmugam on 3/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Mycustomview;

@protocol customdelegate <NSObject>

@optional
-(void)Mycustomdelegate:(Mycustomview *)customview changesegmentedaction:(id)segmentedaction;

@end


@interface Mycustomview : UIView


- (IBAction)segmentedaction:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *imgview;
@property(nonatomic)id<customdelegate> delegate;
@end
