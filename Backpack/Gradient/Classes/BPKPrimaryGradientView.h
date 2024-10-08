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
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BPKGradient;

/**
 * This class is a `UIView` subclass that draws the primary gradient.
 * It's backed by a layer that does the actual drawing, but using this view directly
 * is preferred.
 */
IB_DESIGNABLE NS_SWIFT_NAME(PrimaryGradientView) @interface BPKPrimaryGradientView : UIView

/**
 * Override the direction in the configured primary gradient. If set this
 * should be a valid value for the `BPKGradientDirection` enum.
 */
@property(nullable, nonatomic, strong) NSNumber *directionOverride;

/**
 * The gradient currently being drawn.
 * @warning Do not set this value directly. It's intended to be used via theming.
 */
@property(nonatomic, strong) BPKGradient *gradient UI_APPEARANCE_SELECTOR;

@end
NS_ASSUME_NONNULL_END
