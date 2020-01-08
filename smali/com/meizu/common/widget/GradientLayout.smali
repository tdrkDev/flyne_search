.class public Lcom/meizu/common/widget/GradientLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private final DEFAULT_COLOR:I

.field private final DISABLED_PAINT_COLOR:I

.field private final MAX_GRADIENT_SCALE:F

.field private final MIN_GRADIENT_SCALE:F

.field private final PROPERTY_CANVAS_ROTATION_Y:Ljava/lang/String;

.field private final PROPERTY_CANVAS_ROTATION_Z:Ljava/lang/String;

.field private final PROPERTY_CANVAS_SCALE:Ljava/lang/String;

.field private final SHAPE_CIRCLE:I

.field private final SHAPE_NORMAL:I

.field private mBackgroundBeGreyWhenDisabled:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCamera:Landroid/graphics/Camera;

.field private mCanvasRotationY:F

.field private mCanvasRotationZ:F

.field private mCanvasScale:F

.field private mCenterEdge:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCornerRadius:I

.field private mDensity:F

.field private mDisableColorAlpha:I

.field private mDisabledPaint:Landroid/graphics/Paint;

.field private mDisabledShader:Landroid/graphics/Shader;

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mDrawShader:Z

.field private mEnableDrawBackground:Z

.field private mEnableRotateY:Z

.field private mGradientDownAnimator:Landroid/animation/ValueAnimator;

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mGradientScale:F

.field private mGradientShader:Landroid/graphics/Shader;

.field private mGradientUpAnimator:Landroid/animation/ValueAnimator;

.field private mHasMultiChild:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsSwipeMode:Z

.field private mIsTouchCanceled:Z

.field private mLastTouchX:F

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mLeftColor:I

.field private mMaxRotationYDegree:F

.field private mMinScale:F

.field private mNormalShader:Landroid/graphics/Shader;

.field private mOnlyDrawShadow:Z

.field private mOutSlop:F

.field private mRadialCenterColor:I

.field private mRadialEdgeColor:I

.field private mRect:Landroid/graphics/RectF;

.field private mRightColor:I

.field private mRotationMatrix:Landroid/graphics/Matrix;

.field private mRotationPivot:F

.field private mShaderPaint:Landroid/graphics/Paint;

.field private mShaderPaintAlpha:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShapeMode:I

.field private mShouldDrawShadow:Z

.field private mTargetScale:F

.field private mTargetYDegree:F

.field private mUpTime:J

.field private mUpTranslate:F

.field private mValidTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GradientLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GradientLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, -0xff0100

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v5, p0, Lcom/meizu/common/widget/GradientLayout;->DEFAULT_COLOR:I

    .line 50
    iput v3, p0, Lcom/meizu/common/widget/GradientLayout;->SHAPE_NORMAL:I

    .line 51
    iput v4, p0, Lcom/meizu/common/widget/GradientLayout;->SHAPE_CIRCLE:I

    .line 52
    const v0, -0x1a1a1b

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->DISABLED_PAINT_COLOR:I

    .line 54
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mMaxRotationYDegree:F

    .line 55
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    .line 56
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->MAX_GRADIENT_SCALE:F

    .line 57
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->MIN_GRADIENT_SCALE:F

    .line 59
    const-wide/16 v0, 0x80

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->ANIM_DOWN_DURATION:J

    .line 60
    const-wide/16 v0, 0x160

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->ANIM_UP_DURATION:J

    .line 62
    const-string v0, "canvasScale"

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    .line 63
    const-string v0, "canvasRotationY"

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_ROTATION_Y:Ljava/lang/String;

    .line 64
    const-string v0, "canvasRotationZ"

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_ROTATION_Z:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 72
    const/high16 v0, 0x27000000

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRadialCenterColor:I

    .line 73
    iput v3, p0, Lcom/meizu/common/widget/GradientLayout;->mRadialEdgeColor:I

    .line 74
    const/16 v0, 0x4c

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    .line 77
    iput v5, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 78
    iput v5, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 84
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    .line 85
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    .line 86
    iput v6, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    .line 87
    iput v6, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientScale:F

    .line 105
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mIsSwipeMode:Z

    .line 106
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 107
    iput-boolean v4, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 108
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    .line 109
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    .line 110
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mDrawShader:Z

    .line 111
    iput-boolean v3, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 112
    iput-boolean v4, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundBeGreyWhenDisabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    .line 139
    sget-object v0, Lcom/meizu/common/R$styleable;->GradientLayout:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcLeftColor:I

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 142
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcRightColor:I

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 143
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcShape:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    .line 144
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcDrawShadow:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 145
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcEnableRotateY:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    .line 146
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcOnlyDrawShadow:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 147
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcGreyWhenDisabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundBeGreyWhenDisabled:Z

    .line 148
    sget v1, Lcom/meizu/common/R$styleable;->GradientLayout_mcEnableDrawBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->init()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/GradientLayout;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/GradientLayout;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/GradientLayout;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientScale:F

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/GradientLayout;F)F
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientScale:F

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/GradientLayout;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/GradientLayout;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownY:F

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/GradientLayout;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTranslate:F

    return v0
.end method

.method static synthetic access$1802(Lcom/meizu/common/widget/GradientLayout;F)F
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTranslate:F

    return p1
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/GradientLayout;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaintAlpha:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/GradientLayout;I)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->getLighterColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/meizu/common/widget/GradientLayout;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDrawShader:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mNormalShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout;->mNormalShader:Landroid/graphics/Shader;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/GradientLayout;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->shouldSetDisabledShader()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledShader:Landroid/graphics/Shader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/GradientLayout;I)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->getDisabledColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/GradientLayout;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateTransform(F)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 487
    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    sub-float v2, p1, v2

    .line 488
    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    div-float/2addr v2, v3

    .line 489
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 494
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mMaxRotationYDegree:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    .line 496
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 497
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->setRotationPivot(F)V

    .line 501
    :goto_1
    return-void

    .line 491
    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    move v0, v1

    .line 492
    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->setRotationPivot(F)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private cancelAllAnimator()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    :cond_1
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 371
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 328
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    sub-float v0, v3, v0

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    .line 334
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 336
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 337
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mDensity:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    if-eqz v0, :cond_2

    .line 340
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 342
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private getColorWhenAnimating(I)I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 704
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 712
    :goto_0
    return p1

    .line 707
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    .line 708
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 709
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 710
    aget v2, v1, v4

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 711
    aget v2, v1, v5

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    aput v0, v1, v5

    .line 712
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    goto :goto_0
.end method

.method private getDarkerColor(I)I
    .locals 4

    .prologue
    .line 604
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 605
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 606
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3d4ccccd    # 0.05f

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 607
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 608
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getDisabledColor(I)I
    .locals 2

    .prologue
    .line 612
    const v0, 0xffffff

    and-int/2addr v0, p1

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private getLighterColor(I)I
    .locals 4

    .prologue
    .line 596
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 597
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 598
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 599
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 600
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownTime:J

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownY:F

    .line 419
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLastTouchX:F

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTranslate:F

    .line 421
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->calculateTransform(F)V

    .line 436
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->setupLayoutDownAnimator()V

    .line 438
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 439
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 444
    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mOutSlop:F

    sub-float v3, v5, v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/GradientLayout;->mOutSlop:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    cmpg-float v3, v2, v5

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 446
    :cond_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 448
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    if-eqz v2, :cond_4

    .line 449
    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 451
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-eqz v0, :cond_5

    .line 452
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 483
    :cond_5
    return-void

    .line 449
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x80

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsSwipeMode:Z

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTime:J

    .line 506
    iget-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/GradientLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 508
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->setupLayoutUpAnimator()V

    .line 509
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 510
    sub-long v0, v4, v0

    .line 512
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 519
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x3ea8f5c3    # 0.33f

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 157
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 162
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaintAlpha:I

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    const v1, -0x1a1a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->setOrientation(I)V

    .line 174
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->setGravity(I)V

    .line 176
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mValidTouchSlop:F

    .line 178
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mValidTouchSlop:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOutSlop:F

    .line 179
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDensity:F

    .line 180
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private rotateCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 317
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationY:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 318
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 321
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    neg-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 323
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 324
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 325
    return-void
.end method

.method private rotateShadowCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationZ:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 354
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    neg-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 356
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 358
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 359
    return-void
.end method

.method private setRotationPivot(F)V
    .locals 0

    .prologue
    .line 644
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    .line 645
    return-void
.end method

.method private setupGradientDownAnimator(FFJ)V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 767
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    .line 768
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/GradientLayout$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/GradientLayout$2;-><init>(Lcom/meizu/common/widget/GradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 780
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/GradientLayout$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/GradientLayout$3;-><init>(Lcom/meizu/common/widget/GradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 794
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 795
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 796
    return-void
.end method

.method private setupGradientUpAnimator(FFJ)V
    .locals 3

    .prologue
    .line 800
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    .line 801
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/GradientLayout$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/GradientLayout$4;-><init>(Lcom/meizu/common/widget/GradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 818
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/GradientLayout$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/GradientLayout$5;-><init>(Lcom/meizu/common/widget/GradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 836
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 837
    return-void
.end method

.method private setupLayoutDownAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    .line 533
    const-string v0, "canvasRotationY"

    new-array v1, v6, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    aput v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 534
    const-string v1, "canvasScale"

    new-array v2, v6, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 536
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_1

    .line 537
    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v2, :cond_0

    .line 538
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 551
    :goto_1
    return-void

    .line 540
    :cond_0
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 545
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1
.end method

.method private setupLayoutUpAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    const-string v0, "canvasRotationY"

    new-array v1, v6, [F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 557
    const-string v1, "canvasScale"

    new-array v2, v6, [F

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_1

    .line 560
    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v2, :cond_0

    .line 561
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 566
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x160

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 574
    :goto_1
    return-void

    .line 563
    :cond_0
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 568
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1
.end method

.method private shouldSetDisabledShader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 579
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundBeGreyWhenDisabled:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGradient()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const v1, -0xff0100

    .line 725
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    if-ne v0, v2, :cond_0

    .line 726
    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 729
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    if-ne v0, v2, :cond_1

    .line 730
    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 733
    :cond_1
    new-instance v0, Lcom/meizu/common/widget/GradientLayout$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/GradientLayout$1;-><init>(Lcom/meizu/common/widget/GradientLayout;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->post(Ljava/lang/Runnable;)Z

    .line 763
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GradientLayout;->getColorWhenAnimating(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 302
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 311
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 312
    return-void

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 386
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 390
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_2

    .line 391
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 397
    :pswitch_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_3

    .line 398
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 400
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enableDrawBackground(Z)V
    .locals 0

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    .line 722
    return-void
.end method

.method protected getCanvasRotationY()F
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationY:F

    return v0
.end method

.method protected getCanvasRotationZ()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationZ:F

    return v0
.end method

.method protected getCanvasScale()F
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    return v0
.end method

.method public getDisableColorAlpha()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    return v0
.end method

.method public getEnableRotateY()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    return v0
.end method

.method public isOnlyDrawShadow()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    return v0
.end method

.method public isShouldDrawShadow()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 275
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 279
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 211
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 212
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    .line 213
    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    .line 214
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    .line 215
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterY:F

    .line 216
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    .line 271
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setCanvasRotationY(F)V
    .locals 0

    .prologue
    .line 630
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationY:F

    .line 631
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->invalidate()V

    .line 632
    return-void
.end method

.method protected setCanvasRotationZ(F)V
    .locals 0

    .prologue
    .line 639
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationZ:F

    .line 640
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->invalidate()V

    .line 641
    return-void
.end method

.method protected setCanvasScale(F)V
    .locals 0

    .prologue
    .line 621
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    .line 622
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->invalidate()V

    .line 623
    return-void
.end method

.method public setDisableColorAlpha(I)V
    .locals 1

    .prologue
    .line 687
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    goto :goto_0
.end method

.method public setEnableRotateY(Z)V
    .locals 0

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    .line 654
    return-void
.end method

.method public setLeftColor(I)V
    .locals 1

    .prologue
    .line 583
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 587
    return-void
.end method

.method public setOnlyDrawShadow(Z)V
    .locals 0

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 699
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->invalidate()V

    .line 700
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Orientation must be HORIZONTAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    return-void
.end method

.method public setRightColor(I)V
    .locals 0

    .prologue
    .line 590
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 591
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 593
    return-void
.end method

.method public setShouldDrawShadow(Z)V
    .locals 1

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 671
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->setupShadowDrawable()V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->invalidate()V

    .line 675
    return-void
.end method

.method public setupShadowDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 183
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    if-eqz v0, :cond_0

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 185
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    if-ne v0, v2, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_circle_shadow:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_shadow:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 191
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    if-ne v0, v2, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_circle_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
