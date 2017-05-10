//
//  ViewController.m
//  audioUI
//
//  Created by shuzhenguo on 2016/12/28.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//
#define grayRadioTitleRGB   [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1]


#import "ViewController.h"
#import "MyRadioAudioTableViewCell.h"
static NSString * const kImageCell = @"MyRadioAudioTableViewCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    //    JZVideoPlayerView *_jzPlayer;
    
    NSIndexPath *selectedIndexPath;
}

@property (weak, nonatomic) IBOutlet UITableView *aTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.aTableView.dataSource=self;
    
    self.aTableView.delegate=self;
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    MyRadioAudioTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kImageCell];
    if (cell == nil) {
        cell = (MyRadioAudioTableViewCell *)[[[NSBundle mainBundle]loadNibNamed:@"MyRadioAudioTableViewCell" owner:self options:nil] firstObject];
    }
    
    
    
    cell.titleAudio.text=@"音频";
    if (selectedIndexPath.row == indexPath.row) {
        
        cell.titleAudio.textColor=[UIColor blackColor];
        
        cell.audioPlayButton.selected=YES;
        
        
    }else {
        //        cell.liveLable.textColor=[UIColor ];
        
        //        cell.backgroundColor=[UIColor blueColor];
        
        cell.titleAudio.textColor=grayRadioTitleRGB;
        cell.audioPlayButton.selected=NO;
        
        //        cell.titleAudio.textColor=[UIColor blackColor];
        //
        //        cell.audioPlayButton.selected=YES;
        
        
        
        
    }
    
    
    
    cell.titleAudio.tag=indexPath.row+100;
    
    
    return cell;


}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    selectedIndexPath = indexPath;
    
    
    //
    
    
    
    
    
    UIButton *myButton = (UIButton *)[self.view viewWithTag:indexPath.row+10];
    UILabel *titleAudio = (UILabel *)[self.view viewWithTag:indexPath.row+100];
    
    
    
    //    [self.videoController stop];
    
    //    [self addVideoPlayerWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",HNL.RadioUrl]] titleString:@""];
    
    
    
    
    
    //    titleAudio.textColor=[UIColor redColor];
    
    
    
    //    if (myButton) {
    //        <#statements#>
    //    }
    
    
    //    [myButton setBackgroundImage:[UIImage imageNamed:@"radioDetails_pause.png"] forState:UIControlStateNormal];
    
    
    //    myButton.imageView.imag
    
    
    
    titleAudio.textColor=[UIColor blackColor];
    
    
    //    [self.videoController play];
    
    [tableView reloadData];
    
    
    
    //    if (myButton.currentBackgroundImage ==[UIImage imageNamed:@"radioDetails_pause"]) {
    //
    //
    //        NSLog(@"暂停");
    //
    //
    //    }else{
    //
    //        NSLog(@"播放");
    //
    //    }
    
    
    if (myButton.selected==YES) {
        
        myButton.selected=NO;
        
        
    }else{
        
        myButton.selected=YES;
        
        
    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
