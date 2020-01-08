.class public Lcom/meizu/common/widget/MzRatingBar;
.super Landroid/widget/RatingBar;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private currentIndex:I

.field private hasInitialNum:Z

.field private lastIndex:I

.field private mAnimaotr:Landroid/animation/ValueAnimator;

.field private mBackScales:[F

.field private mDector:Landroid/view/GestureDetector;

.field private mLastLayoutDirection:I

.field private mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private mScales:[F

.field private mStarColors:[I

.field private mStarDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleDownTime:I

.field private scaleUpTime:I

.field private starWidth:F

.field private sumTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_MzRatingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v4, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 45
    iput v4, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 50
    iput-boolean v4, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 112
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3d23d70a    # 0.04f

    const v3, 0x3da3d70a    # 0.08f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 113
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 114
    iput v4, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    .line 117
    const/16 v0, 0xdc

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    .line 118
    const/16 v0, 0x118

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    .line 62
    sget-object v0, Lcom/meizu/common/R$styleable;->MzRatingBar:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarColors:I

    sget v2, Lcom/meizu/common/R$array;->mc_rating_bar_default_colors:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    .line 66
    sget v1, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_btn_big_star:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 74
    iput-boolean v5, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 76
    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mDector:Landroid/view/GestureDetector;

    .line 77
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    .line 78
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    .line 79
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->initScales()V

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flymelab_flyme_night_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v5, v0, :cond_2

    .line 82
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "reverseInMzNightMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v0, "MzRatingBar"

    const-string v1, "NightMode methods reflected failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/MzRatingBar;)[F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/MzRatingBar;)[F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/MzRatingBar;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/MzRatingBar;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    return v0
.end method

.method private backUpRange(I)V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method private calculateCureentIndex()I
    .locals 3

    .prologue
    .line 301
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getProgressPos()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getProgressPos()I
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 218
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getScale()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    return v0
.end method

.method private getScale()F
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getMax()I

    move-result v0

    .line 224
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initScales()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private resetBackUp(II)V
    .locals 2

    .prologue
    .line 97
    if-ne p1, p2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 99
    :cond_1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 99
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private setEnd(I)V
    .locals 4

    .prologue
    .line 228
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    iget v3, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x10

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 122
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    .line 123
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/MzRatingBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/MzRatingBar$1;-><init>(Lcom/meizu/common/widget/MzRatingBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 138
    return-void
.end method


# virtual methods
.method public getRating()F
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    .line 243
    iget-boolean v1, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->isIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return v2

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v0, :cond_1

    .line 251
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/MzRatingBar;->setEnd(I)V

    .line 253
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 254
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    .line 255
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->calculateCureentIndex()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 256
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 257
    iput-boolean v2, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 258
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->startAnimation()V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 151
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v4, v0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    if-eqz v0, :cond_b

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getWidth()I

    move-result v0

    int-to-float v2, v0

    iget-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v0

    :goto_1
    iget v3, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 163
    :goto_2
    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v3

    .line 164
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingTop()I

    move-result v5

    .line 165
    :goto_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v0, v0

    if-lt v1, v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 172
    :goto_5
    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v5

    invoke-direct {v6, v3, v5, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    if-eqz v4, :cond_7

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v3, v0

    move v3, v0

    .line 180
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    aget v0, v0, v1

    .line 183
    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 184
    const v2, 0x3dcccccd    # 0.1f

    iget-object v7, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget v8, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v8, v8

    div-float/2addr v0, v8

    invoke-virtual {v7, v0}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->getInterpolation(F)F

    move-result v0

    const v7, 0x3f6e147a    # 0.92999995f

    mul-float/2addr v0, v7

    add-float/2addr v0, v2

    move v2, v0

    .line 189
    :goto_7
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    :goto_8
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/2addr v0, v7

    int-to-float v0, v0

    sub-float v7, v9, v2

    mul-float/2addr v0, v7

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v0, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v9, v2

    mul-float/2addr v6, v7

    mul-float/2addr v6, v10

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_1
    move v4, v1

    .line 152
    goto/16 :goto_0

    .line 157
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    int-to-float v0, v0

    goto/16 :goto_1

    .line 160
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v0

    :goto_9
    iget v5, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    mul-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v0, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    int-to-float v0, v0

    goto :goto_9

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v3, v0, v2

    goto/16 :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    aget v0, v0, v1

    goto/16 :goto_5

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_6

    .line 186
    :cond_8
    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget v7, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    invoke-virtual {v2, v0}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->getInterpolation(F)F

    move-result v0

    .line 187
    const v2, 0x3cf5c28f    # 0.03f

    sub-float v0, v9, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v9

    move v2, v0

    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 189
    goto/16 :goto_8

    .line 196
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_b
    monitor-exit p0

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->calculateCureentIndex()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 275
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 276
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 277
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    .line 278
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->initScales()V

    .line 279
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->startAnimation()V

    .line 285
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 287
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 283
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mDector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    return v0
.end method

.method public setRating(F)V
    .locals 4

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 238
    return-void
.end method

.method public setStarColors([I)V
    .locals 0

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iput-object p1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    .line 209
    :cond_0
    return-void
.end method
