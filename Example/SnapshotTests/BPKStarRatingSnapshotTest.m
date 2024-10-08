//
/*
 * Backpack - Skyscanner's Design System
 *
 * Copyright © 2019. Skyscanner Ltd. All rights reserved.
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

#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

#import <Backpack/StarRating.h>

@interface BPKStarRatingSnapshotTest : FBSnapshotTestCase

@end

@implementation BPKStarRatingSnapshotTest

- (void)setUp {
    [super setUp];
    self.recordMode = NO;
}

#pragma mark - Small star rating

- (void)testSmallStarRatingWithValue_minus {
    [self verifySmallRatingViewWithRating:-1.0f];
}

- (void)testSmallStarRatingWithValue_0_0 {
    [self verifySmallRatingViewWithRating:0.0f];
}

- (void)testSmallStarRatingWithValue_0_49 {
    [self verifySmallRatingViewWithRating:0.49f];
}

- (void)testSmallStarRatingWithValue_0_5 {
    [self verifySmallRatingViewWithRating:0.5f];
}

- (void)testSmallStarRatingWithValue_0_99 {
    [self verifySmallRatingViewWithRating:0.99f];
}

- (void)testSmallStarRatingWithValue_1_0 {
    [self verifySmallRatingViewWithRating:1.0f];
}

- (void)testSmallStarRatingWithValue_1_49 {
    [self verifySmallRatingViewWithRating:1.49f];
}

- (void)testSmallStarRatingWithValue_1_5 {
    [self verifySmallRatingViewWithRating:1.5f];
}

- (void)testSmallStarRatingWithValue_1_99 {
    [self verifySmallRatingViewWithRating:1.99f];
}

- (void)testSmallStarRatingWithValue_2_0 {
    [self verifySmallRatingViewWithRating:2.0f];
}

- (void)testSmallStarRatingWithValue_2_49 {
    [self verifySmallRatingViewWithRating:2.49f];
}

- (void)testSmallStarRatingWithValue_2_5 {
    [self verifySmallRatingViewWithRating:2.5f];
}

- (void)testSmallStarRatingWithValue_2_99 {
    [self verifySmallRatingViewWithRating:2.99f];
}

- (void)testSmallStarRatingWithValue_3_0 {
    [self verifySmallRatingViewWithRating:3.0f];
}

- (void)testSmallStarRatingWithValue_3_49 {
    [self verifySmallRatingViewWithRating:3.49f];
}

- (void)testSmallStarRatingWithValue_3_5 {
    [self verifySmallRatingViewWithRating:3.5f];
}

- (void)testSmallStarRatingWithValue_3_99 {
    [self verifySmallRatingViewWithRating:3.99f];
}

- (void)testSmallStarRatingWithValue_4_0 {
    [self verifySmallRatingViewWithRating:4.0f];
}

- (void)testSmallStarRatingWithValue_4_49 {
    [self verifySmallRatingViewWithRating:4.49f];
}

- (void)testSmallStarRatingWithValue_4_5 {
    [self verifySmallRatingViewWithRating:4.5f];
}

- (void)testSmallStarRatingWithValue_4_99 {
    [self verifySmallRatingViewWithRating:4.99f];
}

- (void)testSmallStarRatingWithValue_5_0 {
    [self verifySmallRatingViewWithRating:5.0f];
}

- (void)testSmallStarRatingWithValue_largerThan_5_0 {
    [self verifySmallRatingViewWithRating:6.0f];
}

#pragma mark - Large star rating

- (void)testLargeStarRatingWithValue_minus {
    [self verifyLargeRatingViewWithRating:-1.0f];
}

- (void)testLargeStarRatingWithValue_0_0 {
    [self verifyLargeRatingViewWithRating:0.0f];
}

- (void)testLargeStarRatingWithValue_0_49 {
    [self verifyLargeRatingViewWithRating:0.49f];
}

- (void)testLargeStarRatingWithValue_0_5 {
    [self verifyLargeRatingViewWithRating:0.5f];
}

- (void)testLargeStarRatingWithValue_0_99 {
    [self verifyLargeRatingViewWithRating:0.99f];
}

- (void)testLargeStarRatingWithValue_1_0 {
    [self verifyLargeRatingViewWithRating:1.0f];
}

- (void)testLargeStarRatingWithValue_1_49 {
    [self verifyLargeRatingViewWithRating:1.49f];
}

- (void)testLargeStarRatingWithValue_1_5 {
    [self verifyLargeRatingViewWithRating:1.5f];
}

- (void)testLargeStarRatingWithValue_1_99 {
    [self verifyLargeRatingViewWithRating:1.99f];
}

- (void)testLargeStarRatingWithValue_2_0 {
    [self verifyLargeRatingViewWithRating:2.0f];
}

- (void)testLargeStarRatingWithValue_2_49 {
    [self verifyLargeRatingViewWithRating:2.49f];
}

- (void)testLargeStarRatingWithValue_2_5 {
    [self verifyLargeRatingViewWithRating:2.5f];
}

- (void)testLargeStarRatingWithValue_2_99 {
    [self verifyLargeRatingViewWithRating:2.99f];
}

- (void)testLargeStarRatingWithValue_3_0 {
    [self verifyLargeRatingViewWithRating:3.0f];
}

- (void)testLargeStarRatingWithValue_3_49 {
    [self verifyLargeRatingViewWithRating:3.49f];
}

- (void)testLargeStarRatingWithValue_3_5 {
    [self verifyLargeRatingViewWithRating:3.5f];
}

- (void)testLargeStarRatingWithValue_3_99 {
    [self verifyLargeRatingViewWithRating:3.99f];
}

- (void)testLargeStarRatingWithValue_4_0 {
    [self verifyLargeRatingViewWithRating:4.0f];
}

- (void)testLargeStarRatingWithValue_4_49 {
    [self verifyLargeRatingViewWithRating:4.49f];
}

- (void)testLargeStarRatingWithValue_4_5 {
    [self verifyLargeRatingViewWithRating:4.5f];
}

- (void)testLargeStarRatingWithValue_4_99 {
    [self verifyLargeRatingViewWithRating:4.99f];
}

- (void)testLargeStarRatingWithValue_5_0 {
    [self verifyLargeRatingViewWithRating:5.0f];
}

- (void)testLargeStarRatingWithValue_largerThan_5_0 {
    [self verifyLargeRatingViewWithRating:6.0f];
}

#pragma mark - Helpers

- (void)verifySmallRatingViewWithRating:(float)rating {
    [self verifyRatingViewWithRating:rating size:BPKStarSizeSmall];
}

- (void)verifyLargeRatingViewWithRating:(float)rating {
    [self verifyRatingViewWithRating:rating size:BPKStarSizeLarge];
}

- (void)verifyRatingViewWithRating:(float)rating size:(BPKStarSize)size {
    BPKStarRating *ratingView = [[BPKStarRating alloc] initWithSize:size];
    ratingView.rating = rating;

    CGSize fittingSize = [ratingView systemLayoutSizeFittingSize:CGSizeMake(1000, 1000)];
    ratingView.frame = CGRectMake(0.0, 0.0, fittingSize.width, fittingSize.height);

    FBSnapshotVerifyView(ratingView, nil);
}

@end
