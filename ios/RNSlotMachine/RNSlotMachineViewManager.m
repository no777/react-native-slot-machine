//
//  RNSlotMachine.m
//  RNSlotMachine
//
//  Created by no777 on 16/9/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RNSlotMachineViewManager.h"
#import "RCTConvert.h"
#import "ZCSlotMachine.h"



@implementation RNSlotMachineViewManager
RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(onStop, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onStart, RCTBubblingEventBlock)

- (UIView *)view
{
  
  _slotMachineView = [[RNSlotMachineView alloc] init];
  return _slotMachineView;
}

RCT_EXPORT_METHOD(start:(NSArray*) slotResults)
{
  
//  NSUInteger slotIconCount = [self.slotMachineView.slotIcons count];
//  
//  NSUInteger slotOneIndex = abs(rand() % slotIconCount);
//  NSUInteger slotTwoIndex = abs(rand() % slotIconCount);
//  NSUInteger slotThreeIndex = abs(rand() % slotIconCount);
//  NSUInteger slotFourIndex = abs(rand() % slotIconCount);
//  
//  //  _slotOneImageView.image = [_slotIcons objectAtIndex:slotOneIndex];
//  //  _slotTwoImageView.image = [_slotIcons objectAtIndex:slotTwoIndex];
//  //  _slotThreeImageView.image = [_slotIcons objectAtIndex:slotThreeIndex];
//  //  _slotFourImageView.image = [_slotIcons objectAtIndex:slotFourIndex];
//  //
//  NSArray * slotResults = [NSArray arrayWithObjects:
//                              [NSNumber numberWithInteger:slotOneIndex],
//                              [NSNumber numberWithInteger:slotTwoIndex],
//                              [NSNumber numberWithInteger:slotThreeIndex],
//                              [NSNumber numberWithInteger:slotFourIndex],
//                              nil];
  
  [self.slotMachineView start:slotResults];
}



@end

