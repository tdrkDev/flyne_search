.class public Lcom/meizu/common/widget/AnimSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final CIRCLE_MIN_PADDING_DP:F = 1.5f

.field private static final DEFAULT_ANIMSEEKBAE_HEIGHT:I = 0x41

.field private static final DEFAULT_DISTANCE_BEW:I = 0xa

.field private static final DEFAULT_EXPANDED_PIN_RADIUS_DP:I = 0xf

.field private static final DEFAULT_LAGRECIRCLE_MOVEUP_VALUE:I = 0x18

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_THUMB_RADIUS_DP:F = 0.0f

.field private static final Debug:Z = false

.field private static final MAX_STRING:Ljava/lang/String; = "100"

.field private static final TAG:Ljava/lang/String; = "AnimSeekBar"


# instance fields
.field private mAinmSeekBarHeight:I

.field private mBounds:Landroid/graphics/Rect;

.field private mCheckRadisChanged:Z

.field private mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

.field private mCircleRadius:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDistanceBwCircle:I

.field private mFadeAnim:Landroid/animation/ValueAnimator;

.field private mFadeInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeValue:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsStartAnim:Z

.field private mIsTapPressed:Z

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveDownInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpValue:I

.field private mMoveUpValueDp:I

.field private mPinRadisMax:F

.field private mPinRadisMin:F

.field private mPinRadiusPx:F

.field private mProgressDrawble:Landroid/graphics/drawable/Drawable;

.field private mRes:Landroid/content/res/Resources;

.field private mScaleInterpolator:Landroid/view/animation/Interpolator;

.field private mScaleanim:Landroid/animation/ValueAnimator;

.field private mTextNumber:Ljava/lang/String;

.field private mTextNumberColor:I

.field private mTextNumberSize:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:F

.field private mThumbRadis:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 215
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_AnimSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 150
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 156
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 160
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 164
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 166
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 169
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    .line 190
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AnimSeekBar;->seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimSeekBar;F)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setFadeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setMoveValue(I)V

    return-void
.end method

.method private onActionUp(FF)V
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 396
    return-void
.end method

.method private pressPin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0xa6

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 454
    new-array v0, v3, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 455
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$1;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 464
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 466
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 469
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 470
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$2;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 486
    new-array v0, v3, [I

    aput v2, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 487
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$3;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 496
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 497
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 499
    return-void

    .line 469
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private releasePin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0xa6

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 503
    new-array v0, v3, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 504
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$4;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 513
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 515
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 517
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 518
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$5;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 529
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 531
    new-array v0, v3, [I

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v2

    aput v2, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 532
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$6;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 541
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 542
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 544
    return-void

    .line 517
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 225
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 226
    sget-object v0, Lcom/meizu/common/R$styleable;->AnimSeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    sget v1, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcLargeCircleDrawble:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 228
    sget v1, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcLargeCircleRadis:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 230
    sget v1, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcTextNumberColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 231
    sget v1, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcDistanceToCircle:I

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 232
    sget v1, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcTextNumberSize:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    .line 233
    const/high16 v1, 0x41c00000    # 24.0f

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    .line 234
    const/high16 v1, 0x42820000    # 65.0f

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    .line 235
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    const-string v1, "sans-serif-medium"

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    const/high16 v0, 0x3fc00000    # 1.5f

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "100"

    const-string v3, "100"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 248
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 252
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 253
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v5, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 255
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v5, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 256
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 259
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private setFadeValue(I)V
    .locals 0

    .prologue
    .line 694
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 695
    return-void
.end method

.method private setMoveValue(I)V
    .locals 0

    .prologue
    .line 698
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    .line 699
    return-void
.end method

.method private setSize(F)V
    .locals 1

    .prologue
    .line 702
    float-to-int v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 703
    return-void
.end method

.method private setmY(F)V
    .locals 0

    .prologue
    .line 690
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    .line 691
    return-void
.end method


# virtual methods
.method public getDistanceToCircle()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    return v0
.end method

.method public getLargeCircleDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 650
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLargeCircleRadius()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    return v0
.end method

.method public getTextNumberColor()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    return v0
.end method

.method public getTextNumberSize()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 403
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 331
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getRealProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 356
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 358
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 359
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 360
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    int-to-float v0, v0

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 338
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_3
    :try_start_2
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 446
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 448
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 707
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 708
    const-class v0, Lcom/meizu/common/widget/AnimSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 709
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 440
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    .line 268
    monitor-enter p0

    .line 270
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 272
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 277
    if-ne v1, v4, :cond_0

    move v1, v0

    .line 286
    :goto_0
    if-ne v2, v4, :cond_2

    .line 287
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 300
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/AnimSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    if-ne v1, v5, :cond_1

    move v1, v0

    .line 280
    goto :goto_0

    .line 282
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    move v1, v0

    goto :goto_0

    .line 288
    :cond_2
    if-ne v2, v5, :cond_4

    .line 289
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    if-gt v3, v0, :cond_3

    .line 290
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    .line 292
    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 293
    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    goto :goto_1

    .line 298
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 426
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    .line 427
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 428
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    .line 433
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 434
    return v1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 431
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 412
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 417
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 418
    return v1

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/SkipPosSeekBar;->onSizeChanged(IIII)V

    .line 306
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    .line 309
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 310
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    .line 312
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 313
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AnimSeekBar;->setmY(F)V

    .line 315
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 316
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 320
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 368
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return v0

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 388
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 381
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    if-nez v0, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/AnimSeekBar;->onActionUp(FF)V

    goto :goto_1

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDistanceToCircle(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 629
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 632
    :goto_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 633
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    if-eq p1, v1, :cond_0

    .line 634
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 635
    iput-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    .line 636
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 639
    return-void

    .line 631
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setLargeCircleDrawble(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 585
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 587
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 590
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 591
    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 593
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 595
    :goto_0
    if-ne v2, v1, :cond_0

    if-eq v3, v0, :cond_1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 600
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public setLargeCircleRadis(I)V
    .locals 3

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 610
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 613
    :goto_0
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 614
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    if-eq v1, p1, :cond_0

    .line 615
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 616
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 619
    return-void

    .line 612
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setTextNumberColor(I)V
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    if-eq v0, p1, :cond_0

    .line 553
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 554
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->postInvalidate()V

    .line 557
    :cond_0
    return-void
.end method

.method public setTextNumberSize(I)V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 567
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 570
    :goto_0
    const/4 v0, 0x2

    int-to-float v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 571
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    if-eq v0, v1, :cond_0

    .line 572
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    .line 573
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 577
    return-void

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    return-void
.end method
