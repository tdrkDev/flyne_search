.class public Lcom/meizu/common/widget/SwimmingAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;,
        Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_DOWN_DURATION:I = 0x1c2

.field private static final ANIMATION_UP_DURATION:I = 0x208

.field private static final TAG:Ljava/lang/String; = "SwimmingAnimationView"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDistance:I

.field private mDownInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private mFirstPosition:F

.field private mGap:I

.field private volatile mIsAnimRun:Z

.field private mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

.field private mRadius:I

.field private mSecondPosition:F

.field private mThirdPosition:F

.field private mUpInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/SwimmingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SwimmingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mIsAnimRun:Z

    .line 67
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3f28f5c3    # 0.66f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDownInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 68
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e8a3d71    # 0.27f

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mUpInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 275
    new-instance v0, Lcom/meizu/common/widget/SwimmingAnimationView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/SwimmingAnimationView$1;-><init>(Lcom/meizu/common/widget/SwimmingAnimationView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

    .line 286
    new-instance v0, Lcom/meizu/common/widget/SwimmingAnimationView$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/SwimmingAnimationView$2;-><init>(Lcom/meizu/common/widget/SwimmingAnimationView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 80
    iput-object p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/meizu/common/R$styleable;->SwimmingAnimationView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    sget v1, Lcom/meizu/common/R$styleable;->SwimmingAnimationView_mzCircleColor:I

    const v2, -0xc36f04

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 84
    sget v2, Lcom/meizu/common/R$styleable;->SwimmingAnimationView_mzCircleRadius:I

    .line 85
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_swimming_circle_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    .line 86
    sget v2, Lcom/meizu/common/R$styleable;->SwimmingAnimationView_mzCircleGap:I

    .line 87
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_swimming_circle_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mGap:I

    .line 88
    sget v2, Lcom/meizu/common/R$styleable;->SwimmingAnimationView_mzCircleDistance:I

    .line 89
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_swimming_circle_distance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDistance:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-direct {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->createAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/SwimmingAnimationView;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mFirstPosition:F

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/SwimmingAnimationView;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mSecondPosition:F

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/SwimmingAnimationView;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mThirdPosition:F

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/SwimmingAnimationView;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method private createAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const-wide/16 v5, 0x208

    const-wide/16 v2, 0x1c2

    .line 130
    new-instance v0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;

    invoke-direct {v0}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->setOnChangeListener(Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;)V

    .line 132
    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDistance:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDownInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget-object v7, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mUpInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->setFirstPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V

    .line 133
    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDistance:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDownInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget-object v7, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mUpInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const-wide/16 v8, 0x53

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->setSecondPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V

    .line 134
    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDistance:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDownInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget-object v7, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mUpInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const-wide/16 v8, 0xa6

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->setThirdPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V

    .line 136
    const-wide/16 v2, 0x3ca

    .line 137
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x1

    long-to-float v5, v2

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    return-object v1
.end method

.method private updateAnimatorState(I)V
    .locals 1

    .prologue
    .line 322
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->startAnimator()V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->stopAnimator()V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mFirstPosition:F

    .line 331
    iput v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mSecondPosition:F

    .line 332
    iput v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mThirdPosition:F

    .line 333
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 101
    iget v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mFirstPosition:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    iget v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mSecondPosition:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mThirdPosition:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    iget v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 338
    iget v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mDistance:I

    add-int/2addr v1, v2

    .line 339
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 340
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 341
    invoke-static {v0, p1, v4}, Lcom/meizu/common/widget/SwimmingAnimationView;->resolveSizeAndState(III)I

    move-result v0

    invoke-static {v1, p2, v4}, Lcom/meizu/common/widget/SwimmingAnimationView;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/SwimmingAnimationView;->setMeasuredDimension(II)V

    .line 342
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 310
    const-string v0, "SwimmingAnimationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/SwimmingAnimationView;->updateAnimatorState(I)V

    .line 312
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 317
    const-string v0, "SwimmingAnimationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SwimmingAnimationView;->updateAnimatorState(I)V

    .line 319
    return-void
.end method

.method public startAnimator()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mIsAnimRun:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mIsAnimRun:Z

    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 114
    const-string v0, "SwimmingAnimationView"

    const-string v1, "startAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAnimator()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mIsAnimRun:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mIsAnimRun:Z

    .line 123
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 124
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 125
    invoke-virtual {p0}, Lcom/meizu/common/widget/SwimmingAnimationView;->clearData()V

    .line 126
    const-string v0, "SwimmingAnimationView"

    const-string v1, "stopAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
