//
//  JBChartTooltipView.m
//  JBChartViewDemo
//
//  Created by Terry Worona on 3/12/14.
//  Copyright (c) 2014 Jawbone. All rights reserved.
//

#import "JBChartTooltipView.h"

// Drawing
#import <QuartzCore/QuartzCore.h>

// Numerics
CGFloat static const kJBChartTooltipViewCornerRadius = 5.0;
CGFloat const kJBChartTooltipViewDefaultWidth = 50.0f;
CGFloat const kJBChartTooltipViewDefaultHeight = 25.0f;

@interface JBChartTooltipView ()

@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation JBChartTooltipView

#pragma mark - Alloc/Init

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = kJBColorTooltipColor;
        self.layer.cornerRadius = kJBChartTooltipViewCornerRadius;
        
        _textLabel = [[UILabel alloc] init];
        _textLabel.font = kJBFontTooltipText;
        _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.textColor = kJBColorTooltipTextColor;
        _textLabel.adjustsFontSizeToFitWidth = YES;
        _textLabel.numberOfLines = 1;
        _textLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_textLabel];
    }
    return self;
}

- (id)init
{
    return [self initWithFrame:CGRectMake(0, 0, kJBChartTooltipViewDefaultWidth, kJBChartTooltipViewDefaultHeight)];
}

#pragma mark - Setters

- (void)setNumberOfLines:(NSInteger)numberOfLines
{
    self.textLabel.numberOfLines = numberOfLines;
    [self setNeedsLayout];
}

- (void)setText:(NSString *)text
{
    self.textLabel.text = text;
    [self setNeedsLayout];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
    self.textLabel.attributedText = attributedText;
    [self setNeedsLayout];
}

- (void)setTooltipColor:(UIColor *)tooltipColor
{
    self.backgroundColor = tooltipColor;
    [self setNeedsDisplay];
}

#pragma mark - Layout

- (void)layoutSubviews
{
    [super layoutSubviews];
    _textLabel.frame = self.bounds;
}

@end
