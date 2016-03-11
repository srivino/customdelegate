//
//  Mycustomview.m
//  customdelegate
//
//  Created by Rajarajeswaran Shanmugam on 3/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "Mycustomview.h"

@implementation Mycustomview

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self = (Mycustomview *)[[[NSBundle mainBundle]loadNibNamed:@"Mycustomview" owner:self options:nil]firstObject];
        [self setFrame:frame];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)segmentedaction:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(Mycustomdelegate:changesegmentedaction:)])
    {
        [self.delegate Mycustomdelegate:self changesegmentedaction:sender];
    }
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            self.imgview.image = [UIImage imageNamed:@"img.jpg"];
            break;
        case 1:
            self.imgview.image = [UIImage imageNamed:@"img1.jpg"];
            break;
        default:
            break;
    }
}
@end
