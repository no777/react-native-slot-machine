//
//  RNSlotMachineView.m
//  RNSlotMachine
//
//  Created by mac on 16/10/8.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RNSlotMachineView.h"
#import "UIImage+Scale.h"
@implementation RNSlotMachineView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




-(id)initWithFrame:(CGRect)frame
{
  
  self = [super initWithFrame:frame];
  if (self){
    CGSize size = CGSizeMake(48,48);
    _slotIcons = [NSArray arrayWithObjects:
                  [UIImage imageNamed:@"0"] ,
                  [UIImage imageNamed:@"1"] ,
                  [UIImage imageNamed:@"2"] ,
                  [UIImage imageNamed:@"3"] ,
                  [UIImage imageNamed:@"4"] ,
                  [UIImage imageNamed:@"5"] ,
                  [UIImage imageNamed:@"6"] ,
                  [UIImage imageNamed:@"7"] ,
                  [UIImage imageNamed:@"8"] ,
                  [UIImage imageNamed:@"9"] ,

//                  [[UIImage imageNamed:@"0"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"1"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"2"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"3"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"4"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"5"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"6"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"7"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"8"] scaleToSize:size] ,
//                  [[UIImage imageNamed:@"9"] scaleToSize:size] ,
                  nil];
    self.slotWidth = frame.size.width;
    self.slotHeight=frame.size.height;
    if(self.slotWidth==0){
      self.slotWidth=222;
      self.slotHeight=193;
      
    }
//    NSInteger width=291;
//    NSInteger height=193;
    
//    _slotMachine = [[ZCSlotMachine alloc] initWithFrame:frame];
      _slotMachine = [[ZCSlotMachine alloc] initWithFrame:CGRectMake(0, 0, self.slotWidth, self.slotHeight)];
    //  _slotMachine.center = CGPointMake(640 / 2, 120);
    _slotMachine.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    _slotMachine.contentInset = UIEdgeInsetsMake(5, 8, 5, 8);
//    _slotMachine.backgroundImage = [[UIImage imageNamed:@"SlotMachineBackground_3"] scaleToSize:CGSizeMake(self.slotWidth, self.slotHeight)];
//    _slotMachine.coverImage = [[UIImage imageNamed:@"SlotMachineCover_3"] scaleToSize:CGSizeMake(self.slotWidth, self.slotHeight)];
//    _slotMachine.dataSource = self;
    _slotMachine.delegate = self;

    [self addSubview:_slotMachine];
    
    //        UnityAppController * contrlloer =GetAppController ();
    //        UIView* rootView = GetAppController().unityView;
//    self.uView = (UIView*)GetAppController().unityView;
    
    //        self.uView = rootView;
  }
  return self;
}

-(void)layoutSubviews
{
  [super layoutSubviews];
  self.slotMachine.frame = self.bounds;

  self.slotWidth = self.slotMachine.frame.size.width;
  self.slotHeight =self.slotMachine.frame.size.height;
  _slotMachine.dataSource = self;
  [self.slotMachine removeFromSuperview];
  
  [self insertSubview:self.slotMachine atIndex:0];

//  [self.slotMachine reloadData];
  [self.slotMachine setNeedsLayout];
  
  
}

-(void) start:(NSArray * ) result
{
  
//  NSUInteger slotIconCount = [_slotIcons count];
//  
//  NSUInteger slotOneIndex = abs(rand() % slotIconCount);
//  NSUInteger slotTwoIndex = abs(rand() % slotIconCount);
//  NSUInteger slotThreeIndex = abs(rand() % slotIconCount);
//  NSUInteger slotFourIndex = abs(rand() % slotIconCount);
  
  //  _slotOneImageView.image = [_slotIcons objectAtIndex:slotOneIndex];
  //  _slotTwoImageView.image = [_slotIcons objectAtIndex:slotTwoIndex];
  //  _slotThreeImageView.image = [_slotIcons objectAtIndex:slotThreeIndex];
  //  _slotFourImageView.image = [_slotIcons objectAtIndex:slotFourIndex];
  //
  self.slotMachine.slotResults = result;
  
  [self.slotMachine startSliding];
}

#pragma mark - ZCSlotMachineDelegate

- (void)slotMachineWillStartSliding:(ZCSlotMachine *)slotMachine {
  NSDictionary * body = @{
                          
                          };
  
  
  
  
  if (!self.onStart) {
    return ;
  }
  
  //    [self sendEventWithName:@"receivedMqttMessage" body:event];
  
  self.onStart(body);
}

- (void)slotMachineDidEndSliding:(ZCSlotMachine *)slotMachine {
  //  _startButton.enabled = YES;
     NSDictionary * body = @{
                            
                            };
    
    
    
    
    if (!self.onStop) {
      return ;
    }
    
    //    [self sendEventWithName:@"receivedMqttMessage" body:event];
    
    self.onStop(body);
  
}

#pragma mark - ZCSlotMachineDataSource

- (NSArray *)iconsForSlotsInSlotMachine:(ZCSlotMachine *)slotMachine {
  return _slotIcons;
}

- (NSUInteger)numberOfSlotsInSlotMachine:(ZCSlotMachine *)slotMachine {
  return 3;
}

- (CGFloat)slotWidthInSlotMachine:(ZCSlotMachine *)slotMachine {
  CGFloat w = [[UIScreen mainScreen] bounds].size.width;
  return (self.slotWidth -10) /3 - (w*6.0/414.0);
//  return 65.0f;
}

- (CGFloat)slotSpacingInSlotMachine:(ZCSlotMachine *)slotMachine {
  return 4.0f;
}


@end
