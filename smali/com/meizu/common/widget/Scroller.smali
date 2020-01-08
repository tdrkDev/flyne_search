.class public Lcom/meizu/common/widget/Scroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v13, 0x3e333333    # 0.175f

    const/4 v4, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v0, v2

    sput v0, Lcom/meizu/common/widget/Scroller;->DECELERATION_RATE:F

    .line 77
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    .line 78
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    .line 89
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-ge v5, v12, :cond_4

    .line 90
    int-to-float v0, v5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 95
    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 96
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 97
    sub-float v8, v1, v2

    mul-float/2addr v8, v13

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 98
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_0

    .line 102
    sget-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 107
    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 108
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 109
    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 110
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_2

    .line 114
    sget-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v13

    const v8, 0x3eb33334    # 0.35000002f

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 89
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto :goto_0

    .line 99
    :cond_0
    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 100
    goto :goto_1

    .line 111
    :cond_2
    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v4, v2

    .line 112
    goto :goto_2

    .line 116
    :cond_4
    sget-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v2, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    aput v1, v2, v12

    aput v1, v0, v12

    .line 119
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidScale:F

    .line 121
    sput v1, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    .line 122
    invoke-static {v1}, Lcom/meizu/common/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFlingFriction:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 153
    iput-object p2, p0, Lcom/meizu/common/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mPpi:F

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeceleration:F

    .line 156
    iput-boolean p3, p0, Lcom/meizu/common/widget/Scroller;->mFlywheel:Z

    .line 158
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mPhysicalCoeff:F

    .line 159
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .prologue
    .line 174
    const v0, 0x43c10b3d

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3

    .prologue
    .line 459
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 470
    sget v2, Lcom/meizu/common/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 471
    iget v4, p0, Lcom/meizu/common/widget/Scroller;->mFlingFriction:F

    iget v5, p0, Lcom/meizu/common/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/meizu/common/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(F)I
    .locals 6

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 464
    sget v2, Lcom/meizu/common/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 465
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 476
    sget v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr v0, p0

    .line 477
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 478
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 484
    :goto_0
    sget v1, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr v0, v1

    .line 485
    return v0

    .line 480
    :cond_0
    const v1, 0x3ebc5ab2

    .line 481
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 482
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 497
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 499
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    .line 279
    iget-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/meizu/common/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 285
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    if-ge v0, v1, :cond_4

    .line 286
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mMode:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    .line 336
    goto :goto_0

    .line 288
    :pswitch_0
    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v1

    .line 290
    iget-object v1, p0, Lcom/meizu/common/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 291
    invoke-static {v0}, Lcom/meizu/common/widget/Scroller;->viscousFluid(F)F

    move-result v0

    .line 295
    :goto_2
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 296
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 299
    :pswitch_1
    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 300
    mul-float v0, v6, v3

    float-to-int v4, v0

    .line 301
    const/high16 v1, 0x3f800000    # 1.0f

    .line 302
    const/4 v0, 0x0

    .line 303
    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 304
    int-to-float v0, v4

    div-float v1, v0, v6

    .line 305
    add-int/lit8 v0, v4, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 306
    sget-object v5, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    aget v5, v5, v4

    .line 307
    sget-object v6, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    .line 308
    sub-float/2addr v4, v5

    sub-float/2addr v0, v1

    div-float v0, v4, v0

    .line 309
    sub-float v1, v3, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v5

    .line 312
    :cond_3
    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mDistance:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrVelocity:F

    .line 314
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v4, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 316
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mMaxX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 317
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mMinX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 319
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v4, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    .line 321
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    .line 322
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    .line 324
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 325
    iput-boolean v2, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 332
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    .line 333
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    .line 334
    iput-boolean v2, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/meizu/common/widget/Scroller;->timePassed()I

    move-result v0

    .line 511
    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    .line 512
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDurationReciprocal:F

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 514
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 7

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 406
    iget-boolean v1, p0, Lcom/meizu/common/widget/Scroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    if-nez v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/meizu/common/widget/Scroller;->getCurrVelocity()F

    move-result v1

    .line 409
    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 410
    iget v3, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v4, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 411
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 413
    div-float/2addr v2, v4

    .line 414
    div-float/2addr v3, v4

    .line 416
    mul-float/2addr v2, v1

    .line 417
    mul-float/2addr v1, v3

    .line 418
    int-to-float v3, p3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    .line 419
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 420
    int-to-float v3, p3

    add-float/2addr v2, v3

    float-to-int p3, v2

    .line 421
    int-to-float v2, p4

    add-float/2addr v1, v2

    float-to-int p4, v1

    .line 425
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mMode:I

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 428
    mul-int v1, p3, p3

    mul-int v2, p4, p4

    add-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 430
    iput v2, p0, Lcom/meizu/common/widget/Scroller;->mVelocity:F

    .line 431
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    .line 432
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/common/widget/Scroller;->mStartTime:J

    .line 433
    iput p1, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    .line 434
    iput p2, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    .line 436
    cmpl-float v1, v2, v6

    if-nez v1, :cond_1

    move v1, v0

    .line 437
    :goto_0
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    .line 439
    :goto_1
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v4

    .line 440
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/Scroller;->mDistance:I

    .line 442
    iput p5, p0, Lcom/meizu/common/widget/Scroller;->mMinX:I

    .line 443
    iput p6, p0, Lcom/meizu/common/widget/Scroller;->mMaxX:I

    .line 444
    iput p7, p0, Lcom/meizu/common/widget/Scroller;->mMinY:I

    .line 445
    iput p8, p0, Lcom/meizu/common/widget/Scroller;->mMaxY:I

    .line 447
    float-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    .line 449
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mMaxX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    .line 450
    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mMinX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    .line 452
    float-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    .line 454
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    .line 455
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    .line 456
    return-void

    .line 436
    :cond_1
    int-to-float v1, p3

    div-float/2addr v1, v2

    goto :goto_0

    .line 437
    :cond_2
    int-to-float v0, p4

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 197
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrVelocity:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mVelocity:F

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDeceleration:F

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 556
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v2, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2

    .prologue
    .line 533
    iput p1, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    .line 534
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeltaX:F

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 536
    return-void
.end method

.method public setFinalY(I)V
    .locals 2

    .prologue
    .line 546
    iput p1, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    .line 547
    iget v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeltaY:F

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 549
    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeceleration:F

    .line 170
    iput p1, p0, Lcom/meizu/common/widget/Scroller;->mFlingFriction:F

    .line 171
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .prologue
    .line 354
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/Scroller;->startScroll(IIIII)V

    .line 355
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mMode:I

    .line 372
    iput-boolean v0, p0, Lcom/meizu/common/widget/Scroller;->mFinished:Z

    .line 373
    iput p5, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/Scroller;->mStartTime:J

    .line 375
    iput p1, p0, Lcom/meizu/common/widget/Scroller;->mStartX:I

    .line 376
    iput p2, p0, Lcom/meizu/common/widget/Scroller;->mStartY:I

    .line 377
    add-int v0, p1, p3

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalX:I

    .line 378
    add-int v0, p2, p4

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mFinalY:I

    .line 379
    int-to-float v0, p3

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeltaX:F

    .line 380
    int-to-float v0, p4

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDeltaY:F

    .line 381
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/meizu/common/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/Scroller;->mDurationReciprocal:F

    .line 382
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/common/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
