/*
 * Backpack - Skyscanner's Design System
 *
 * Copyright 2018-2019 Skyscanner Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#import "BPKIconView.h"

#import <Backpack/Color.h>
#import <Backpack/Common.h>

NS_ASSUME_NONNULL_BEGIN

@interface BPKIconView ()

- (void)setUp;
@end

@implementation BPKIconView

- (instancetype)initWithIconName:(nullable BPKIconName)iconName size:(BPKIconSize)size {
    BPKAssertMainThread();
    CGSize displaySize = [BPKIcon concreteSizeForIconSize:size];

    self = [super initWithFrame:CGRectMake(0, 0, displaySize.width, displaySize.height)];

    if (self) {
        self.contentMode = UIViewContentModeScaleAspectFit;
        self.size = size;
        _iconName = [iconName copy];
        [self setUp];
    }

    return self;
}

- (void)setUp {
    if (self.iconName) {
        super.image = [BPKIcon templateIconNamed:self.iconName size:self.size];
    }
    [self setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [self setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    self.tintColor = BPKColor.gray900;
}

- (void)setIconName:(nullable BPKIconName)iconName {
    BPKAssertMainThread();
    if (![iconName isEqualToString:_iconName]) {
        _iconName = [iconName copy];

        if (iconName) {
            super.image = [self imageWithIconName:iconName size:self.size flipsForRightToLeft:self.flipsForRightToLeft];
        } else {
            super.image = nil;
        }
    }
}

- (void)setSize:(BPKIconSize)size {
    BPKAssertMainThread();
    if (size != _size) {
        _size = size;

        if (self.iconName) {
            super.image = [self imageWithIconName:self.iconName size:size flipsForRightToLeft:self.flipsForRightToLeft];
        }
    }
}

- (void)setFlipsForRightToLeft:(BOOL)flipsForRightToLeft {
    BPKAssertMainThread();
    if (flipsForRightToLeft != _flipsForRightToLeft) {
        _flipsForRightToLeft = flipsForRightToLeft;

        if (self.iconName) {
            super.image = [self imageWithIconName:self.iconName size:self.size flipsForRightToLeft:flipsForRightToLeft];
        }
    }
}

- (UIImage *)imageWithIconName:(BPKIconName)iconName
                          size:(BPKIconSize)size
           flipsForRightToLeft:(BOOL)flipsForRightToLeft {
    UIImage *image = [BPKIcon templateIconNamed:iconName size:size];

    if (flipsForRightToLeft) {
        image = [image imageFlippedForRightToLeftLayoutDirection];
    }

    return image;
}

- (CGSize)intrinsicContentSize {
    return [BPKIcon concreteSizeForIconSize:self.size];
}

@end

NS_ASSUME_NONNULL_END
