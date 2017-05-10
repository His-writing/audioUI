//
//  MyRadioAudioTableViewCell.m
//  chinaplus
//
//  Created by shuzhenguo on 2016/12/27.
//  Copyright © 2016年 pengnan. All rights reserved.
//

#import "MyRadioAudioTableViewCell.h"


//#import "CMConstant.h"
//#import "MacroCommon.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define IS_IPHONE_4 (fabs((double)[[UIScreen mainScreen]bounds].size.height-(double)480)< DBL_EPSILON)
#define IS_IPHONE_5 (fabs((double)[[UIScreen mainScreen]bounds].size.height-(double)568)< DBL_EPSILON)
#define IS_IPHONE_6 (fabs((double)[[UIScreen mainScreen]bounds].size.height-(double)667)< DBL_EPSILON)
#define IS_IPHONE_6_Plus (fabs((double)[[UIScreen mainScreen]bounds].size.height-(double)736)< DBL_EPSILON)


@implementation MyRadioAudioTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.titleAudio.verticalAlignment = VerticalAlignmentMiddle;
    
    
    if (self.linePic) {
        
    }else{
        self.linePic = [[UIImageView alloc]initWithFrame:CGRectMake(0, self.frame.size.height-1, SCREEN_WIDTH-20, 1)];
    }
    //    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
    self.linePic.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self addSubview:self.linePic];


    
    
    
    if (IS_IPHONE_6_Plus) {
        self.titleAudio.font = [UIFont fontWithName:@"MyriadPro-Semibold" size:17];
        
//        self.timeUnit.font=[UIFont fontWithName:@"MyriadPro-Semibold" size:15];
    }else if (IS_IPHONE_6){
        self.titleAudio.font = [UIFont fontWithName:@"MyriadPro-Semibold" size:16];
//        self.timeUnit.font=[UIFont fontWithName:@"MyriadPro-Semibold" size:14];
        
    }else if (IS_IPHONE_5){
        self.titleAudio.font = [UIFont fontWithName:@"MyriadPro-Semibold" size:14];
//        self.timeUnit.font=[UIFont fontWithName:@"MyriadPro-Semibold" size:13];
        
    }else if (IS_IPHONE_4){
        self.titleAudio.font = [UIFont fontWithName:@"MyriadPro-Semibold" size:14];
//        self.timeUnit.font=[UIFont fontWithName:@"MyriadPro-Semibold" size:13];
        
    }
    



}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
