//
//  JBChartTooltipView.h
//  JBChartViewDemo
//
//  Created by Terry Worona on 3/12/14.
//  Copyright (c) 2014 Jawbone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBChartTooltipView : UIView

- (void)setNumberOfLines:(NSInteger)numberOfLines;
- (void)setText:(NSString *)text;
- (void)setAttributedText:(NSAttributedString *)attributedText;

@end
