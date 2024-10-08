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

#import "BPKStarRating.h"

#import <Backpack/Common.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *const STARRATING_SUBVIEW_ASSERTION_MESSAGE =
    @"Expected all arrangedSubviews in `BPKStarRating` to be of type `BPKStar`";
static NSUInteger const MAX_RATING = 5;

@interface BPKStarRating ()

@property(nonatomic) UIStackView *stackView;

@end

@implementation BPKStarRating

- (instancetype)initWithSize:(BPKStarSize)size {
    BPKAssertMainThread();
    self = [super initWithFrame:CGRectZero];

    if (self) {
        [self setupWithSize:size];
    }

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    BPKAssertMainThread();
    self = [super initWithFrame:frame];

    if (self) {
        [self setupWithSize:BPKStarSizeSmall];
    }

    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    BPKAssertMainThread();
    self = [super initWithCoder:aDecoder];

    if (self) {
        [self setupWithSize:BPKStarSizeSmall];
    }

    return self;
}

- (void)setupWithSize:(BPKStarSize)size {
    _size = size;
    _rating = 0.0;
    [self setupStackView];
    [self setupStars];
}

- (void)setupStackView {
    _stackView = [[UIStackView alloc] initWithFrame:CGRectZero];
    _stackView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:_stackView];

    [NSLayoutConstraint activateConstraints:@[
        [self.stackView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.stackView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.stackView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
        [self.stackView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
    ]];
}

- (void)setupStars {
    for (int i = 0; i < MAX_RATING; i++) {
        BPKStar *starView = [[BPKStar alloc] initWithSize:self.size];
        [_stackView addArrangedSubview:starView];
    }
}

#pragma mark - Properties

- (void)setRating:(float)rating {
    BPKAssertMainThread();
    if (_rating != rating) {
        _rating = rating;
        [self updateRating];
    }
}

- (void)setSize:(BPKStarSize)size {
    BPKAssertMainThread();
    if (_size != size) {
        _size = size;
        [self updateSize];
    }
}

#pragma mark - Updates

- (void)updateRating {
    for (NSInteger starIndex = 0; starIndex < self.stackView.arrangedSubviews.count; starIndex++) {
        NSAssert([self.stackView.arrangedSubviews[starIndex] isKindOfClass:[BPKStar class]],
                 STARRATING_SUBVIEW_ASSERTION_MESSAGE);

        if ([self.stackView.arrangedSubviews[starIndex] isKindOfClass:[BPKStar class]]) {
            BPKStar *star = self.stackView.arrangedSubviews[starIndex];

            float rest = self.rating - starIndex;
            if (starIndex + 1.0f <= self.rating) {
                star.state = BPKStarStateFull;
            } else if (rest >= 0.5f && rest < 1.0f) {
                star.state = BPKStarStateHalf;
            } else {
                star.state = BPKStarStateDefault;
            }
        }
    }
}

- (void)updateSize {
    for (UIView *star in self.stackView.arrangedSubviews) {
        NSAssert([star isKindOfClass:[BPKStar class]], STARRATING_SUBVIEW_ASSERTION_MESSAGE);

        if ([star isKindOfClass:[BPKStar class]]) {
            ((BPKStar *)star).size = self.size;
        }
    }

    [self setNeedsLayout];
}

@end

NS_ASSUME_NONNULL_END
