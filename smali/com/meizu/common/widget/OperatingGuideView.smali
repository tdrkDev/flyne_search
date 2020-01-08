.class public Lcom/meizu/common/widget/OperatingGuideView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISMISS_SCALE_MULTI:F = 1.2f

.field public static final OPERATION_TYPE_CLICK:I = 0x0

.field public static final OPERATION_TYPE_SCALE_DOWN:I = 0x5

.field public static final OPERATION_TYPE_SCALE_UP:I = 0x6

.field public static final OPERATION_TYPE_SCROLL_BOTTOM:I = 0x4

.field public static final OPERATION_TYPE_SCROLL_LEFT:I = 0x1

.field public static final OPERATION_TYPE_SCROLL_RIGHT:I = 0x2

.field public static final OPERATION_TYPE_SCROLL_TOP:I = 0x3

.field private static final SCROLL_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCirclePositionX:F

.field private mCirclePositionY:F

.field private mGesturePoints:I

.field private mHeight:F

.field private mInnerCircleAlpha:F

.field private mInnerCircleAlphaCur:F

.field private mInnerCircleColor:I

.field private mInnerCircleRadius:F

.field private mInnerCircleRadiusCur:F

.field private mIsDrag:Z

.field private mMoveGradient:Landroid/graphics/LinearGradient;

.field private mMultiCircleDistance:F

.field private mOperationType:I

.field private mOuterCircleAlpha:F

.field private mOuterCircleAlphaCur:F

.field private mOuterCircleColor:I

.field private mOuterCircleGradientAlpha:F

.field private mOuterCircleGradientAlphaEnd:F

.field private mOuterCircleGradientAlphaStart:F

.field private mOuterCircleRadius:F

.field private mOuterCircleRadiusCur:F

.field private mOuterPath:Landroid/graphics/Path;

.field private mOuterPathLength:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollDistance:F

.field private mStop:Z

.field private mStretchLength:F

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 85
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f2b851f    # 0.67f

    invoke-static {v0, v2, v1, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 86
    const v0, 0x3ee147ae    # 0.44f

    const v1, 0x3eae147b    # 0.34f

    invoke-static {v0, v2, v1, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/OperatingGuideView;->SCROLL_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/OperatingGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v1, 0xffffff

    const/4 v3, 0x1

    const v0, 0x3f333333    # 0.7f

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleColor:I

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleColor:I

    .line 71
    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlpha:F

    .line 72
    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlphaCur:F

    .line 73
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlpha:F

    .line 75
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    .line 76
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaStart:F

    .line 77
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaEnd:F

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    .line 90
    iput v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    sget v1, Lcom/meizu/common/R$dimen;->mz_operating_guide_inner_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadius:F

    .line 104
    sget v1, Lcom/meizu/common/R$dimen;->mz_operating_guide_outer_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    .line 105
    sget v1, Lcom/meizu/common/R$dimen;->mz_operating_guide_scroll_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    .line 106
    sget v1, Lcom/meizu/common/R$dimen;->mz_operating_guide_stretch_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStretchLength:F

    .line 107
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPath:Landroid/graphics/Path;

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlphaCur:F

    return p1
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/OperatingGuideView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStop:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadiusCur:F

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/OperatingGuideView;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlphaCur:F

    return p1
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadiusCur:F

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    return p1
.end method

.method static synthetic access$502(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    return p1
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPathLength:F

    return p1
.end method

.method static synthetic access$702(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaStart:F

    return p1
.end method

.method static synthetic access$802(Lcom/meizu/common/widget/OperatingGuideView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaEnd:F

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/OperatingGuideView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->initProperties()V

    return-void
.end method

.method private computeSize()V
    .locals 6

    .prologue
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    const v5, 0x3f99999a    # 1.2f

    const/high16 v4, 0x40000000    # 2.0f

    .line 450
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    packed-switch v0, :pswitch_data_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect operation type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    .line 454
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    .line 485
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPathLength:F

    .line 486
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaStart:F

    .line 487
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaEnd:F

    .line 488
    return-void

    .line 459
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    .line 460
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    goto :goto_0

    .line 465
    :pswitch_2
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    .line 466
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    goto :goto_0

    .line 470
    :pswitch_3
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 471
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    .line 472
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    goto :goto_0

    .line 476
    :pswitch_4
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 477
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v4

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    .line 478
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createClickAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->initProperties()V

    .line 228
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createTapOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 230
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createDismissAnimator()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 231
    new-array v2, v8, [F

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlpha:F

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 232
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$1;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    sget-object v3, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 243
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 244
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    return-object v2
.end method

.method private createDismissAnimator()Landroid/animation/AnimatorSet;
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 408
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    new-array v1, v9, [F

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadius:F

    aput v2, v1, v7

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadius:F

    mul-float/2addr v2, v6

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    aput v2, v1, v8

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 411
    new-instance v2, Lcom/meizu/common/widget/OperatingGuideView$12;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/OperatingGuideView$12;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    sget-object v2, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    new-array v2, v9, [F

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlpha:F

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 423
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$13;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$13;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    sget-object v3, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    new-array v3, v9, [F

    iget v4, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    aput v4, v3, v7

    iget v4, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v4, v6

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 434
    new-instance v4, Lcom/meizu/common/widget/OperatingGuideView$14;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/OperatingGuideView$14;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    sget-object v4, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 443
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 444
    return-object v0
.end method

.method private createScrollAnimation()Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->initProperties()V

    .line 303
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createTapOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 304
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createScrollAnimator()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 306
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createDismissAnimator()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 308
    iget-boolean v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mIsDrag:Z

    if-eqz v3, :cond_0

    .line 309
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 310
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 316
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 317
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 319
    return-object v3

    .line 312
    :cond_0
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 313
    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method

.method private createScrollAnimator()Landroid/animation/AnimatorSet;
    .locals 14

    .prologue
    const-wide/16 v12, 0x320

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 323
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 326
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    .line 327
    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    .line 328
    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    add-float/2addr v3, v2

    .line 330
    new-array v4, v10, [F

    aput v2, v4, v8

    aput v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 331
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$6;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$6;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    new-array v3, v10, [F

    aput v1, v3, v8

    aput v1, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 341
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$7;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$7;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    new-array v1, v10, [F

    aput v7, v1, v8

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStretchLength:F

    aput v3, v1, v9

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 352
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$8;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$8;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 363
    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStretchLength:F

    aput v4, v3, v8

    aput v7, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 364
    new-instance v4, Lcom/meizu/common/widget/OperatingGuideView$9;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/OperatingGuideView$9;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 375
    new-array v4, v10, [F

    iget v5, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    aput v5, v4, v8

    aput v7, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 376
    new-instance v5, Lcom/meizu/common/widget/OperatingGuideView$10;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/OperatingGuideView$10;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    sget-object v5, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    new-array v5, v10, [F

    iget v6, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    aput v6, v5, v8

    aput v7, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 388
    new-instance v6, Lcom/meizu/common/widget/OperatingGuideView$11;

    invoke-direct {v6, p0}, Lcom/meizu/common/widget/OperatingGuideView$11;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 396
    invoke-virtual {v5, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 397
    sget-object v6, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    sget-object v6, Lcom/meizu/common/widget/OperatingGuideView;->SCROLL_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v8

    aput-object v1, v6, v9

    aput-object v4, v6, v10

    const/4 v1, 0x3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 404
    return-object v0
.end method

.method private createTapOutAnimator()Landroid/animation/AnimatorSet;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    new-array v1, v6, [F

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadius:F

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 253
    new-instance v2, Lcom/meizu/common/widget/OperatingGuideView$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/OperatingGuideView$2;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    sget-object v2, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 264
    new-array v2, v6, [F

    aput v7, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlpha:F

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 265
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$3;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$3;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    sget-object v3, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    new-array v2, v6, [F

    aput v7, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 277
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$4;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$4;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    sget-object v3, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 287
    new-array v2, v6, [F

    aput v7, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlpha:F

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 288
    new-instance v3, Lcom/meizu/common/widget/OperatingGuideView$5;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/OperatingGuideView$5;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    sget-object v3, Lcom/meizu/common/widget/OperatingGuideView;->CLICK_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    return-object v0
.end method

.method private drawGesture(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const v3, 0x3f99999a    # 1.2f

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 148
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    const/high16 v0, 0x43340000    # 180.0f

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleAlphaCur:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadiusCur:F

    iget-object v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadiusCur:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 177
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 179
    :goto_1
    if-eqz v0, :cond_7

    .line 180
    iget v10, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    .line 181
    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    .line 182
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPathLength:F

    sub-float v9, v10, v0

    .line 183
    iget v8, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    .line 187
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPathLength:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    .line 188
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlpha:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlphaCur:F

    mul-float/2addr v0, v1

    .line 189
    mul-float/2addr v0, v7

    add-float/2addr v0, v12

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleColor:I

    or-int v5, v0, v1

    move v6, v5

    .line 196
    :goto_2
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadiusCur:F

    add-float/2addr v1, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadiusCur:F

    sub-float v3, v9, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMoveGradient:Landroid/graphics/LinearGradient;

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMoveGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move v0, v8

    move v1, v9

    move v3, v10

    .line 209
    :goto_3
    iget-object v4, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 210
    iget-object v4, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 216
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 217
    return-void

    .line 152
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 153
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_0

    .line 154
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 155
    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 156
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 157
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 158
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    const/high16 v0, 0x43070000    # 135.0f

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_0

    .line 160
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 161
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mScrollDistance:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 163
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    const/high16 v0, -0x3dcc0000    # -45.0f

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_0

    .line 177
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 191
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaStart:F

    .line 192
    mul-float/2addr v0, v7

    add-float/2addr v0, v12

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleColor:I

    or-int v6, v0, v1

    .line 193
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaEnd:F

    .line 194
    mul-float/2addr v0, v7

    add-float/2addr v0, v12

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleColor:I

    or-int v5, v0, v1

    goto/16 :goto_2

    .line 203
    :cond_7
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    .line 204
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    .line 205
    iget-object v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleAlphaCur:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move v2, v0

    move v3, v1

    goto/16 :goto_3
.end method

.method private initProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x3f99999a    # 1.2f

    .line 491
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    packed-switch v0, :pswitch_data_0

    .line 498
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    .line 499
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    .line 503
    :goto_0
    iput v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterPathLength:F

    .line 504
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaStart:F

    .line 505
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlpha:F

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleGradientAlphaEnd:F

    .line 506
    iput v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadiusCur:F

    iput v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mInnerCircleRadiusCur:F

    .line 507
    return-void

    .line 493
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionX:F

    .line 494
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOuterCircleRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mCirclePositionY:F

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OperatingGuideView;->drawGesture(Landroid/graphics/Canvas;)V

    .line 120
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 122
    const/high16 v1, 0x43340000    # 180.0f

    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OperatingGuideView;->drawGesture(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 143
    :cond_1
    return-void

    .line 125
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    if-le v1, v0, :cond_1

    .line 127
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 128
    :cond_3
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    if-ge v0, v1, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 130
    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OperatingGuideView;->drawGesture(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 135
    :cond_5
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    if-ge v0, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 137
    iget v2, p0, Lcom/meizu/common/widget/OperatingGuideView;->mMultiCircleDistance:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OperatingGuideView;->drawGesture(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 222
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->computeSize()V

    .line 223
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/OperatingGuideView;->setMeasuredDimension(II)V

    .line 224
    return-void
.end method

.method public setDrag(Z)V
    .locals 0

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mIsDrag:Z

    .line 533
    return-void
.end method

.method public setGesturePoints(I)V
    .locals 0

    .prologue
    .line 540
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mGesturePoints:I

    .line 541
    return-void
.end method

.method public setOperationType(I)V
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t change the operation type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    .line 525
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 548
    iget v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mOperationType:I

    packed-switch v0, :pswitch_data_0

    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect operation type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createClickAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 567
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/meizu/common/widget/OperatingGuideView$15;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/OperatingGuideView$15;-><init>(Lcom/meizu/common/widget/OperatingGuideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStop:Z

    .line 590
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 591
    return-void

    .line 559
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/OperatingGuideView;->createScrollAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mStop:Z

    .line 598
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 602
    :cond_0
    return-void
.end method
