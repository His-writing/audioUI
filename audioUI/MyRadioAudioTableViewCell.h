//
//  MyRadioAudioTableViewCell.h
//  chinaplus
//
//  Created by shuzhenguo on 2016/12/27.
//  Copyright © 2016年 pengnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPLabel.h"

@interface MyRadioAudioTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet CPLabel *titleAudio;


@property (weak, nonatomic) IBOutlet UIButton *audioPlayButton;


@property (nonatomic, strong)UIImageView* linePic;


@end
