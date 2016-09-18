//
//  RNSlotMachine.m
//  RNSlotMachine
//
//  Created by no777 on 16/9/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RNSlotMachine.h"
#import "RCTConvert.h"
#import "ZCSlotMachine.h"



@implementation RNSlotMachine
RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[ZCSlotMachine alloc] init];
}

@end
