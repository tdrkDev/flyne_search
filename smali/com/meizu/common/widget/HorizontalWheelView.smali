.class public Lcom/meizu/common/widget/HorizontalWheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final INSTANCE_STATE:Ljava/lang/String; = "instanceState"

.field private static final STATE_SELECTED:Ljava/lang/String; = "selected"

.field private static final TAG:Ljava/lang/String; = "HorizontalWheelView"


# instance fields
.field private mAllowScroll:Z

.field private mClick:Z

.field private mClickNumber:I

.field private mClickNumberOffset:F

.field private mClickOffset:F

.field private mDamping:F

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:I

.field private mDensity:F

.field private mDownX:I

.field private mDrawCount:I

.field private mIsAccessibilityEnable:Z

.field private mIsFling:Z

.field private mIsSetTotalMove:Z

.field private mLastX:I

.field private mLineColor:I

.field private mLineHeight:F

.field private mLineMarginBottom:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartY:F

.field private mLineStopY:F

.field private mLineWidth:F

.field private mLittleLineColor:I

.field private mLittleLineWidth:F

.field private mMaxTotalMove:F

.field private mMiddle:I

.field private mMinVelocity:I

.field private mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

.field private mOnce:Z

.field private mPaintRound:Z

.field private mScaleDistance:F

.field private mScaleTextSize:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSelected:I

.field private mSelectedColor:I

.field private mShowNumber:I

.field private mTextColor:I

.field private mTextMargin:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalMove:F

.field private mTouching:Z

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mTriangleSideLength:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    .line 153
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 154
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    .line 156
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 157
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    .line 160
    iput-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    .line 162
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    .line 165
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 166
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 169
    iput v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 170
    iput v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 174
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    .line 175
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    .line 178
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    .line 181
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 183
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 184
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 185
    iput-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 207
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    .line 211
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 212
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    .line 224
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->init()V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 227
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    .line 235
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 244
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/HorizontalWheelView;->setFocusable(Z)V

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/HorizontalWheelView;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/HorizontalWheelView;)Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    return-object v0
.end method

.method private computeDistance(F)F
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 640
    neg-float v0, p1

    .line 642
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    sub-float/2addr v0, p1

    goto :goto_0
.end method

.method private computeTextSizeAndColor(IF)V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 656
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 657
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 658
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 659
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 660
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 662
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 663
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 664
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 665
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 668
    int-to-float v1, v1

    sub-float v8, v9, p2

    mul-float/2addr v1, v8

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 669
    int-to-float v2, v2

    sub-float v4, v9, p2

    mul-float/2addr v2, v4

    int-to-float v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 670
    int-to-float v3, v3

    sub-float v4, v9, p2

    mul-float/2addr v3, v4

    int-to-float v4, v6

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 671
    int-to-float v0, v0

    sub-float v4, v9, p2

    mul-float/2addr v0, v4

    int-to-float v4, v7

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 672
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    return-void
.end method

.method private countVelocityTracker()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 559
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 560
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 562
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    float-to-int v3, v2

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    goto :goto_0
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40800000    # 4.0f

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float/2addr v0, v1

    .line 391
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v1, v2

    float-to-int v7, v1

    .line 393
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    if-eq v7, v1, :cond_0

    .line 394
    iput v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 395
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->notifySelectedChange()V

    .line 396
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    if-ne v1, v2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 401
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v8, v1, v0

    .line 403
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    if-ge v6, v0, :cond_5

    .line 405
    int-to-float v0, v6

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    add-float v1, v8, v0

    .line 406
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 408
    add-int v0, v7, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-gt v0, v2, :cond_1

    .line 410
    add-int v0, v7, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 411
    add-int v0, v7, v6

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 413
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 416
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    :cond_1
    :goto_1
    int-to-float v0, v6

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    sub-float v1, v8, v0

    .line 427
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 429
    sub-int v0, v7, v6

    if-ltz v0, :cond_2

    .line 431
    sub-int v0, v7, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    .line 433
    sub-int v0, v7, v6

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 435
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 438
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 419
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 420
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v2, v9

    add-float/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v3, v9

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 440
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 441
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 442
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v2, v9

    add-float/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v3, v9

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 450
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 451
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 380
    return-void
.end method

.method private fixPos()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 628
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 630
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 631
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float/2addr v0, v1

    .line 632
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->computeDistance(F)F

    move-result v0

    .line 633
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v0

    .line 634
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    float-to-int v1, v1

    float-to-int v3, v3

    const/16 v5, 0x3e8

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 635
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->postInvalidate()V

    .line 636
    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    const/4 v1, 0x0

    .line 278
    sget-object v0, Lcom/meizu/common/R$styleable;->HorizontalWheelView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 280
    :goto_0
    if-ge v0, v3, :cond_10

    .line 281
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 282
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcScaleDistance:I

    if-ne v4, v5, :cond_1

    .line 283
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 280
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextColor:I

    if-ne v4, v5, :cond_2

    .line 286
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    goto :goto_1

    .line 288
    :cond_2
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextSize:I

    if-ne v4, v5, :cond_3

    .line 289
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 290
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    goto :goto_1

    .line 291
    :cond_3
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcSelectedColor:I

    if-ne v4, v5, :cond_4

    .line 292
    const/high16 v5, -0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    goto :goto_1

    .line 294
    :cond_4
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineColor:I

    if-ne v4, v5, :cond_5

    .line 295
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    goto :goto_1

    .line 297
    :cond_5
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineWidth:I

    if-ne v4, v5, :cond_6

    .line 298
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    goto :goto_1

    .line 300
    :cond_6
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineHeight:I

    if-ne v4, v5, :cond_7

    .line 301
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    goto :goto_1

    .line 303
    :cond_7
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineWidth:I

    if-ne v4, v5, :cond_8

    .line 304
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    goto :goto_1

    .line 306
    :cond_8
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineColor:I

    if-ne v4, v5, :cond_9

    .line 307
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    goto :goto_1

    .line 309
    :cond_9
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTriangleSideLength:I

    if-ne v4, v5, :cond_a

    .line 310
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    goto :goto_1

    .line 312
    :cond_a
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcShowNumber:I

    if-ne v4, v5, :cond_b

    .line 313
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    goto/16 :goto_1

    .line 315
    :cond_b
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextMarginBottom:I

    if-ne v4, v5, :cond_c

    .line 316
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    goto/16 :goto_1

    .line 318
    :cond_c
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineMarginBottom:I

    if-ne v4, v5, :cond_d

    .line 319
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    goto/16 :goto_1

    .line 321
    :cond_d
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcDamping:I

    if-ne v4, v5, :cond_f

    .line 322
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 323
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_e

    .line 324
    iput v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto/16 :goto_1

    .line 325
    :cond_e
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    .line 326
    iput v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto/16 :goto_1

    .line 329
    :cond_f
    sget v5, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcPaintRound:I

    if-ne v4, v5, :cond_0

    .line 330
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    goto/16 :goto_1

    .line 334
    :cond_10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    return-void
.end method

.method private getMove(F)F
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 619
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    neg-float p1, v0

    .line 623
    :cond_0
    :goto_0
    return p1

    .line 620
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 621
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 483
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 484
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 485
    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    .line 261
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    .line 262
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 264
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    .line 266
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    .line 267
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    .line 268
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    .line 269
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 270
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 271
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    .line 272
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    .line 273
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    .line 275
    return-void
.end method

.method private initTriangle()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 361
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    .line 362
    const-wide v0, 0x3ff0c152382d7365L    # 1.0471975511965976

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 363
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    add-float/2addr v1, v2

    .line 364
    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 365
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 369
    return-void
.end method

.method private notifySelectedChange()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Lcom/meizu/common/widget/HorizontalWheelView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/HorizontalWheelView$1;-><init>(Lcom/meizu/common/widget/HorizontalWheelView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->post(Ljava/lang/Runnable;)Z

    .line 578
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_0

    .line 866
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 868
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent(I)V

    .line 870
    :cond_0
    return-void
.end method

.method private setLinePaint(IFF)V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 464
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->computeTextSizeAndColor(IF)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setSelectNotDraw(I)V
    .locals 2

    .prologue
    .line 728
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-le p1, v0, :cond_0

    .line 729
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 735
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 736
    return-void

    .line 730
    :cond_0
    if-gez p1, :cond_1

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_0

    .line 733
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 582
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 585
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-eqz v1, :cond_4

    .line 586
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 587
    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 588
    cmpl-float v0, v1, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    cmpg-float v0, v1, v3

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 590
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 591
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 615
    :cond_2
    :goto_0
    return-void

    .line 594
    :cond_3
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v0

    .line 595
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 599
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->postInvalidate()V

    goto :goto_0

    .line 597
    :cond_4
    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_1

    .line 602
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-eqz v0, :cond_6

    .line 603
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    goto :goto_0

    .line 605
    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 606
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    .line 607
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-nez v0, :cond_7

    .line 608
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 610
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-eqz v0, :cond_2

    .line 611
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    goto :goto_0
.end method

.method public getScaleDistance()F
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    return v0
.end method

.method public getSelected()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    return v0
.end method

.method public getTotalMove()F
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    return v0
.end method

.method public isAllowScroll()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 649
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 650
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 653
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawTriangle(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 874
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 875
    const-class v0, Lcom/meizu/common/widget/HorizontalWheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 876
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    .line 350
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    if-eqz v0, :cond_0

    .line 351
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 352
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->initTriangle()V

    .line 353
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    .line 357
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 358
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 785
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 786
    check-cast p1, Landroid/os/Bundle;

    .line 787
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelect(I)V

    .line 788
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 793
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 772
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 775
    const-string v1, "selected"

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    :goto_0
    return-object v0

    .line 777
    :cond_0
    const-string v1, "selected"

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 491
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    if-eqz v1, :cond_2

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 553
    :cond_1
    :goto_0
    return v0

    .line 494
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 497
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    .line 498
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 500
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 501
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 502
    packed-switch v1, :pswitch_data_0

    .line 552
    :cond_4
    :goto_1
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    goto :goto_0

    .line 504
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 505
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 506
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    .line 507
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 508
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    goto :goto_1

    .line 511
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 512
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 515
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 517
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_6
    cmpg-float v3, v1, v5

    if-gtz v3, :cond_7

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_1

    .line 520
    :cond_7
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v1

    .line 521
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 522
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    goto :goto_1

    .line 526
    :pswitch_2
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 527
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 528
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_8

    .line 529
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 530
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    neg-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_8

    .line 531
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 532
    int-to-float v4, v3

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    .line 533
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    mul-int/2addr v4, v3

    if-eq v1, v4, :cond_8

    .line 534
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 535
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 536
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const/16 v3, 0x1f4

    invoke-virtual {p0, v1, v3}, Lcom/meizu/common/widget/HorizontalWheelView;->smoothScroll(II)V

    .line 537
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    .line 543
    :cond_8
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v1, :cond_4

    .line 544
    iput v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 545
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 546
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->countVelocityTracker()V

    goto/16 :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollBy(F)V
    .locals 2

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v0

    .line 699
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 700
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 701
    return-void
.end method

.method public setAllowScroll(Z)V
    .locals 0

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 820
    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 710
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    .line 711
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    .line 712
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    .line 713
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelectNotDraw(I)V

    .line 714
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 715
    return-void
.end method

.method public setOnValueChangeListener(Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    .line 768
    return-void
.end method

.method public setScaleDistance(F)V
    .locals 0

    .prologue
    .line 827
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 828
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 829
    return-void
.end method

.method public setSelect(I)V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 723
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelectNotDraw(I)V

    .line 724
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 725
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .prologue
    .line 844
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 845
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 846
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 853
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    .line 854
    return-void
.end method

.method public setTotalMove(F)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 743
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 744
    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    .line 746
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 747
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 748
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 757
    :goto_0
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 760
    :cond_0
    return-void

    .line 749
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 750
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_0

    .line 751
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_3

    .line 752
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_0

    :cond_3
    move v0, v1

    .line 754
    goto :goto_0
.end method

.method public smoothScroll(I)V
    .locals 1

    .prologue
    .line 682
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->smoothScroll(II)V

    .line 683
    return-void
.end method

.method public smoothScroll(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 686
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 688
    int-to-float v0, p1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    sub-float/2addr v0, v1

    float-to-int v3, v0

    .line 689
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    float-to-int v1, v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 691
    return-void
.end method
