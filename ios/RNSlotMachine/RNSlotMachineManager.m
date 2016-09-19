//
//  RNSlotMachine.m
//  RNSlotMachine
//
//  Created by no777 on 16/9/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RNSlotMachineManager.h"
#import "RCTConvert.h"
#import "ZCSlotMachine.h"



@implementation RNSlotMachineManager
RCT_EXPORT_MODULE()

- (UIView *)view
{
  _slotIcons = [NSArray arrayWithObjects:
              
                [UIImage imageNamed:@"0"],
                [UIImage imageNamed:@"1"],
                [UIImage imageNamed:@"2"],
                [UIImage imageNamed:@"3"],
                [UIImage imageNamed:@"4"],
                [UIImage imageNamed:@"5"],
                [UIImage imageNamed:@"6"],
                [UIImage imageNamed:@"7"],
                [UIImage imageNamed:@"8"],
                [UIImage imageNamed:@"9"],
                 nil];
  
  
  
  
  
  _slotMachine = [[ZCSlotMachine alloc] initWithFrame:CGRectMake(0, 0, 291, 193)];
//  _slotMachine.center = CGPointMake(640 / 2, 120);
  _slotMachine.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
  _slotMachine.contentInset = UIEdgeInsetsMake(5, 8, 5, 8);
  _slotMachine.backgroundImage = [UIImage imageNamed:@"SlotMachineBackground"];
  _slotMachine.coverImage = [UIImage imageNamed:@"SlotMachineCover"];
  
  _slotMachine.delegate = self;
  _slotMachine.dataSource = self;
  
  return _slotMachine;
}

RCT_EXPORT_METHOD(start:(nonnull NSNumber *)reactTag)
{
  
  NSUInteger slotIconCount = [_slotIcons count];
  
  NSUInteger slotOneIndex = abs(rand() % slotIconCount);
  NSUInteger slotTwoIndex = abs(rand() % slotIconCount);
  NSUInteger slotThreeIndex = abs(rand() % slotIconCount);
  NSUInteger slotFourIndex = abs(rand() % slotIconCount);
  
  //  _slotOneImageView.image = [_slotIcons objectAtIndex:slotOneIndex];
  //  _slotTwoImageView.image = [_slotIcons objectAtIndex:slotTwoIndex];
  //  _slotThreeImageView.image = [_slotIcons objectAtIndex:slotThreeIndex];
  //  _slotFourImageView.image = [_slotIcons objectAtIndex:slotFourIndex];
  //
  _slotMachine.slotResults = [NSArray arrayWithObjects:
                              [NSNumber numberWithInteger:slotOneIndex],
                              [NSNumber numberWithInteger:slotTwoIndex],
                              [NSNumber numberWithInteger:slotThreeIndex],
                              [NSNumber numberWithInteger:slotFourIndex],
                              nil];
  
  [_slotMachine startSliding];
}


RCT_EXPORT_METHOD(start1:(NSDictionary *)options
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject) {

  
  NSUInteger slotIconCount = [_slotIcons count];
  
  NSUInteger slotOneIndex = abs(rand() % slotIconCount);
  NSUInteger slotTwoIndex = abs(rand() % slotIconCount);
  NSUInteger slotThreeIndex = abs(rand() % slotIconCount);
  NSUInteger slotFourIndex = abs(rand() % slotIconCount);
  
//  _slotOneImageView.image = [_slotIcons objectAtIndex:slotOneIndex];
//  _slotTwoImageView.image = [_slotIcons objectAtIndex:slotTwoIndex];
//  _slotThreeImageView.image = [_slotIcons objectAtIndex:slotThreeIndex];
//  _slotFourImageView.image = [_slotIcons objectAtIndex:slotFourIndex];
//  
  _slotMachine.slotResults = [NSArray arrayWithObjects:
                              [NSNumber numberWithInteger:slotOneIndex],
                              [NSNumber numberWithInteger:slotTwoIndex],
                              [NSNumber numberWithInteger:slotThreeIndex],
                              [NSNumber numberWithInteger:slotFourIndex],
                              nil];
  
  [_slotMachine startSliding];
  
  
  resolve(@{
            
            });
  
  
}

#pragma mark - ZCSlotMachineDelegate

- (void)slotMachineWillStartSliding:(ZCSlotMachine *)slotMachine {
//  _startButton.enabled = NO;
}

- (void)slotMachineDidEndSliding:(ZCSlotMachine *)slotMachine {
//  _startButton.enabled = YES;
}

#pragma mark - ZCSlotMachineDataSource

- (NSArray *)iconsForSlotsInSlotMachine:(ZCSlotMachine *)slotMachine {
  return _slotIcons;
}

- (NSUInteger)numberOfSlotsInSlotMachine:(ZCSlotMachine *)slotMachine {
  return 4;
}

- (CGFloat)slotWidthInSlotMachine:(ZCSlotMachine *)slotMachine {
  return 65.0f;
}

- (CGFloat)slotSpacingInSlotMachine:(ZCSlotMachine *)slotMachine {
  return 5.0f;
}

@end

