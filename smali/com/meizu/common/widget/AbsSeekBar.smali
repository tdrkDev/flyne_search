.class public abstract Lcom/meizu/common/widget/AbsSeekBar;
.super Lcom/meizu/common/widget/ProgressBar;
.source "SourceFile"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 54
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 727
    const/16 v0, 0x100

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 54
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 727
    const/16 v0, 0x100

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 54
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 59
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 726
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 727
    const/16 v0, 0x100

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 729
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 732
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 733
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 734
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 80
    sget-object v0, Lcom/meizu/common/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    sget v1, Lcom/meizu/common/R$styleable;->SeekBar_mcThumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget v1, Lcom/meizu/common/R$styleable;->SeekBar_mcThumbOffset:I

    .line 86
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getThumbOffset()I

    move-result v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 92
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 93
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 94
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 671
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1

    .prologue
    .line 751
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v2

    .line 776
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    .line 777
    int-to-float v3, p1

    iget v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr v3, v4

    .line 778
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    .line 779
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 807
    :cond_0
    :goto_1
    return v0

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 782
    goto :goto_1

    .line 786
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 787
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_4

    .line 788
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 794
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_7

    .line 795
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_6

    move v0, v1

    .line 796
    goto :goto_1

    :cond_6
    move v0, v2

    .line 798
    goto :goto_1

    .line 802
    :cond_7
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 803
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 804
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v1, :cond_0

    move v0, v2

    .line 807
    goto :goto_1
.end method

.method private getProgressByPos(I)I
    .locals 2

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 759
    sub-int p1, v0, p1

    .line 763
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, p1

    div-int v0, v1, v0

    .line 764
    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 338
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 339
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 340
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 347
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 350
    iget-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 351
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 353
    if-ne p5, v4, :cond_1

    .line 354
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 355
    iget p5, v0, Landroid/graphics/Rect;->left:I

    .line 356
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 363
    :goto_1
    add-int v1, v3, v2

    invoke-virtual {p3, p5, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    :goto_2
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    goto :goto_0

    .line 359
    :cond_1
    add-int v0, p5, v1

    goto :goto_1

    .line 365
    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v3, v0

    .line 367
    if-ne p5, v4, :cond_3

    .line 368
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 369
    iget p5, v0, Landroid/graphics/Rect;->top:I

    .line 370
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 377
    :goto_3
    add-int/2addr v1, v3

    invoke-virtual {p3, v3, p5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 373
    :cond_3
    add-int v0, p5, v2

    goto :goto_3
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 625
    .line 626
    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 627
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .line 628
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 631
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 640
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 641
    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 660
    :goto_1
    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 661
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    if-le v4, v2, :cond_1

    move v0, v1

    .line 634
    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v4, v1

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 637
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 644
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 647
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_3

    move v0, v1

    .line 656
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 657
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    if-le v4, v2, :cond_4

    move v6, v0

    move v0, v1

    move v1, v6

    .line 650
    goto :goto_2

    .line 652
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v1, v0, v1

    .line 653
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2
.end method

.method private updateThumbPos(II)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 267
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_6

    .line 269
    if-nez v3, :cond_3

    move v6, v5

    .line 272
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 274
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 275
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v4, v1, v0

    .line 277
    :cond_0
    if-le v6, v8, :cond_4

    .line 278
    if-eqz v3, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 281
    :cond_1
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    .line 282
    if-eqz v7, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 286
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 284
    invoke-virtual {v7, v0, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 331
    :cond_2
    :goto_1
    return-void

    .line 269
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 289
    :cond_4
    if-eqz v7, :cond_5

    .line 291
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    .line 292
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 291
    invoke-virtual {v7, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    :cond_5
    sub-int v0, v8, v6

    div-int/lit8 v5, v0, 0x2

    .line 295
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 296
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_1

    .line 300
    :cond_6
    if-nez v3, :cond_9

    move v6, v5

    .line 303
    :goto_2
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 305
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 306
    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v4, v1, v0

    .line 308
    :cond_7
    if-le v6, v8, :cond_a

    .line 309
    if-eqz v3, :cond_8

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 312
    :cond_8
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    .line 313
    if-eqz v7, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    sub-int/2addr v2, v0

    .line 317
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 315
    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 300
    :cond_9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    move v6, v0

    goto :goto_2

    .line 320
    :cond_a
    if-eqz v7, :cond_b

    .line 322
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    .line 323
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 322
    invoke-virtual {v7, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    :cond_b
    sub-int v0, v8, v6

    div-int/lit8 v5, v0, 0x2

    .line 326
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->drawableStateChanged()V

    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    :cond_1
    return-void

    .line 235
    :cond_2
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 427
    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 428
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 433
    :goto_1
    return v0

    .line 431
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 226
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 227
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 384
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 394
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 814
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 815
    const-class v0, Lcom/meizu/common/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 816
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 696
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 697
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 698
    const/16 v2, 0x15

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 700
    :cond_1
    if-lez v1, :cond_5

    .line 701
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 702
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    .line 715
    :goto_0
    return v0

    .line 705
    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_4

    :cond_3
    const/16 v2, 0x13

    if-ne p1, v2, :cond_5

    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 707
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 708
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 709
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 715
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 402
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 404
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    move v2, v0

    .line 407
    :goto_0
    if-eqz v3, :cond_2

    .line 408
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMinWidth:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 409
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMinHeight:I

    iget v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 410
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 412
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 413
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 415
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/meizu/common/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    .line 416
    invoke-static {v0, p2, v2}, Lcom/meizu/common/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v0

    .line 415
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/AbsSeekBar;->setMeasuredDimension(II)V

    .line 420
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    move v2, v1

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method onProgressRefresh(FZ)V
    .locals 6

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 247
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 248
    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v2

    const/high16 v5, -0x80000000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 255
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 257
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 263
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    .line 678
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    .line 686
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 438
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    .line 621
    :goto_0
    return v0

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v4

    .line 621
    goto :goto_0

    .line 446
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    .line 448
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    .line 449
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v0, v4, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 451
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 452
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 453
    iput-boolean v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 454
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 455
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 459
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 464
    iput v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 465
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v0, v4, :cond_6

    .line 466
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_5

    .line 467
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 474
    :goto_2
    iput-boolean v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 475
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 480
    :goto_3
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 470
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 471
    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    goto :goto_2

    .line 478
    :cond_6
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 485
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_c

    .line 486
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v0, v4, :cond_b

    .line 490
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_8

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 492
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 499
    :goto_4
    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 500
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v0, :cond_7

    .line 501
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 502
    iput-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 506
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v0, :cond_2

    .line 510
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_9

    .line 511
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 515
    :goto_5
    if-eqz v0, :cond_2

    .line 519
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_a

    .line 520
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 525
    :goto_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 527
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v0

    add-int/2addr v0, v2

    .line 528
    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_1

    .line 494
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_4

    .line 513
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_5

    .line 522
    :cond_a
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v3, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_6

    .line 530
    :cond_b
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 534
    :cond_c
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_e

    .line 535
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 539
    :goto_7
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 540
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 541
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 542
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 544
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 545
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 546
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_1

    .line 537
    :cond_e
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_7

    .line 552
    :pswitch_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_17

    .line 554
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_11

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 559
    :goto_8
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v1, v4, :cond_14

    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v1, :cond_14

    .line 562
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_12

    move v1, v2

    .line 567
    :goto_9
    int-to-float v2, v0

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v3

    iget v6, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 568
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    .line 571
    :cond_f
    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_13

    .line 572
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 597
    :cond_10
    :goto_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 598
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 609
    :goto_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 610
    iput-boolean v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_1

    .line 557
    :cond_11
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_8

    :cond_12
    move v1, v3

    .line 565
    goto :goto_9

    .line 573
    :cond_13
    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_10

    .line 574
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_a

    .line 576
    :cond_14
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v1, v4, :cond_16

    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v1, v4, :cond_16

    .line 579
    if-eqz v0, :cond_2

    .line 582
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v3, v1

    .line 583
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float v2, v3, v2

    .line 585
    iget-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v3, :cond_15

    .line 586
    int-to-float v0, v0

    div-float v0, v2, v0

    .line 590
    :goto_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 592
    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_a

    .line 588
    :cond_15
    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_c

    .line 594
    :cond_16
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 602
    :cond_17
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 603
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_b

    .line 614
    :pswitch_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_18

    .line 615
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 616
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 618
    :cond_18
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    .prologue
    .line 187
    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 188
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 211
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 112
    const/4 v0, 0x1

    .line 116
    :goto_0
    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 122
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    .line 129
    :goto_1
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->requestLayout()V

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 138
    :cond_2
    iput-object p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 140
    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    :cond_3
    return-void

    .line 114
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    .line 177
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 178
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2

    .prologue
    .line 744
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 745
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 747
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
