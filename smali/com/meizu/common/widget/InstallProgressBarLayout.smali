.class public Lcom/meizu/common/widget/InstallProgressBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final FLOAT_ESPINON:F = 1.0E-6f


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private final DEFAULT_COLOR:I

.field private final PROPERTY_CANVAS_SCALE:Ljava/lang/String;

.field private mAutoTextChange:Z

.field private mCanvasScale:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCoverTextColor:I

.field private mDensity:F

.field private mDownTime:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mMinScale:F

.field private mProgress:F

.field private mProgressBackColor:I

.field private mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

.field private mProgressColor:I

.field private mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

.field private mPromotionStatusPriceText:Landroid/widget/TextView;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetScale:F

.field private mText:Ljava/lang/String;

.field private mTextPadding:I

.field private mTextSize:I

.field private mTextUnit:Ljava/lang/String;

.field private mUpTime:J

.field private mUseSecondStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 55
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    .line 57
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    .line 63
    const-string v0, "canvasScale"

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x80

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    .line 66
    const-wide/16 v0, 0x160

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 55
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    .line 57
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    .line 63
    const-string v0, "canvasScale"

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x80

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    .line 66
    const-wide/16 v0, 0x160

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 55
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    .line 57
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    .line 63
    const-string v0, "canvasScale"

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x80

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    .line 66
    const-wide/16 v0, 0x160

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method private static FloatEquals(FF)Z
    .locals 2

    .prologue
    .line 237
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    sub-float v0, v3, v0

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    .line 203
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 204
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDensity:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    .line 431
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    if-nez v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutDownAnimator()V

    .line 433
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 435
    :cond_0
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x80

    .line 443
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    .line 446
    iget-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 447
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutUpAnimator()V

    .line 448
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 449
    sub-long v0, v4, v0

    .line 450
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 454
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x3ea8f5c3    # 0.33f

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 94
    :goto_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lcom/meizu/common/R$layout;->mc_install_progress_bar_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 98
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDensity:F

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    sget-object v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 104
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->round_corner_progress:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/InstallProgressBar;

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    .line 109
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    sget v2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcBackRoundRadius:I

    sget v3, Lcom/meizu/common/R$dimen;->default_round_radius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundRadius(F)V

    .line 110
    sget v0, Lcom/meizu/common/R$id;->round_corner_progress_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/InstallProgressBarText;

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    .line 111
    sget v0, Lcom/meizu/common/R$id;->round_corner_promotion_status_price_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcAutoTextChange:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 113
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 114
    sget v2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressSize:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    .line 115
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextSize(I)V

    .line 116
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextCoverProgressColor:I

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    .line 118
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextChangeColor(I)V

    .line 119
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 122
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressPadding:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    .line 123
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    invoke-virtual {v0, v4, v4, v4, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setPadding(IIII)V

    .line 124
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressUnit:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 127
    sget v2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 128
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 129
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressBackColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->progress_normal_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBackColor:I

    .line 130
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBackColor:I

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->setProgressBackColor(I)V

    .line 131
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcMinProgress:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    .line 132
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->setMinProgress(I)V

    .line 133
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    goto :goto_2
.end method

.method private setupLayoutDownAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    .line 397
    const-string v0, "canvasScale"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    .line 400
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method

.method private setupLayoutUpAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    const-string v0, "canvasScale"

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    .line 415
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x160

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method

.method private updateViewUI(FZLjava/lang/String;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 210
    if-eqz p2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setAnimProgress(F)V

    .line 215
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setProgress(F)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    rem-float v0, p1, v5

    invoke-static {v0, v4}, Lcom/meizu/common/widget/InstallProgressBarLayout;->FloatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    float-to-double v0, p1

    :goto_2
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 221
    rem-float v0, p1, v5

    invoke-static {v0, v4}, Lcom/meizu/common/widget/InstallProgressBarLayout;->FloatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    div-float v0, p1, v6

    .line 222
    if-eqz p2, :cond_5

    .line 223
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setAnimProgress(F)V

    goto :goto_1

    .line 219
    :cond_4
    div-float v0, p1, v6

    float-to-double v0, v0

    goto :goto_2

    .line 225
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setProgress(F)V

    goto :goto_1
.end method


# virtual methods
.method public cancelProgressAnimator()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBar;->cancelProgressAnimator()V

    .line 389
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBarText;->cancelProgressAnimator()V

    .line 390
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 157
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getCanvasScale()F
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    return v0
.end method

.method public getProgressText()Lcom/meizu/common/widget/InstallProgressBarText;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    return-object v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 176
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    .line 177
    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    .line 178
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    .line 179
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0
.end method

.method public refreshProgressBar()V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 382
    :cond_0
    return-void
.end method

.method public resetStatusTextView(Z)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void

    .line 245
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public resetTextColor()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBarText;->resetTextColor()V

    .line 282
    return-void
.end method

.method public resetWidth()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBar;->resetWidth()V

    .line 343
    return-void
.end method

.method public setAutoTextChange(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 361
    return-void
.end method

.method protected setCanvasScale(F)V
    .locals 0

    .prologue
    .line 472
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 473
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->invalidate()V

    .line 474
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 333
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setAlpha(F)V

    .line 334
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 336
    return-void

    .line 333
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public setDownloadPatchProgress(FZ)V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_downloading_patch_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 318
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_downloading_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 308
    return-void
.end method

.method public setPromotionTextViewValue(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method public setPromotionTextViewVisibility()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    .line 352
    return-void
.end method

.method public setTextProgress(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setTextUnit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setUniformColor(I)V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 371
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setUpdateIncrementalProgress(FZ)V
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_updating_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 328
    return-void
.end method

.method public useSecondStyle(Z)V
    .locals 1

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 484
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->useSecondStyle(Z)V

    .line 485
    return-void
.end method
