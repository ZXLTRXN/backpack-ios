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
#import "BPKRTLSupport.h"

#import <Backpack/Common.h>

#import "UIView+BPKRTL.h"

NS_ASSUME_NONNULL_BEGIN
@implementation UIView (BPKRTL)
- (UIEdgeInsets)bpk_makeRTLAwareEdgeInsetsWithTop:(CGFloat)top
                                          leading:(CGFloat)leading
                                           bottom:(CGFloat)bottom
                                         trailing:(CGFloat)trailing {
    BPKAssertMainThread();
    return [BPKRTLSupport makeRTLAwareEdgeInsetsForView:self top:top leading:leading bottom:bottom trailing:trailing];
}
@end
NS_ASSUME_NONNULL_END
