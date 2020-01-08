.class public Lcom/meizu/common/recall/LoadingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final mAnimatorDuration:I

.field private mDistance:I

.field private mDot1Paint:Landroid/graphics/Paint;

.field private mDot1transX:F

.field private mDot2Paint:Landroid/graphics/Paint;

.field private mDot2transX:F

.field private mDotAlpha:I

.field private mDotAnimationSet:Landroid/animation/AnimatorSet;

.field private mDotColor:I

.field private mDotMoveAnimation:Landroid/animation/ValueAnimator;

.field private mDotalphaAnim:Landroid/animation/ValueAnimator;

.field private mLoadText:Ljava/lang/CharSequence;

.field private mLoadingTextColor:I

.field private mRadius:I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/recall/LoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/recall/LoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/16 v1, 0x4db

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 38
    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    .line 40
    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    .line 42
    iput v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mAnimatorDuration:I

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDistance:I

    .line 46
    iput v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAlpha:I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/recall/LoadingTextView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->init()V

    .line 65
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->setupAnimations()V

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/recall/LoadingTextView;F)F
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1transX:F

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/recall/LoadingTextView;F)F
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2transX:F

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/recall/LoadingTextView;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/recall/LoadingTextView;I)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/LoadingTextView;->calculateDot1AlphaByTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/recall/LoadingTextView;I)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/LoadingTextView;->calculateDot2AlphaByTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateDot1AlphaByTime(I)I
    .locals 4

    .prologue
    const/16 v3, 0x488

    const/16 v0, 0xff

    const/16 v2, 0xf3

    const/16 v1, 0xa0

    .line 219
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    if-ge v1, p1, :cond_2

    if-gt p1, v2, :cond_2

    .line 222
    const-wide v0, 0x4008940c565c87b6L    # 3.072289156626506

    add-int/lit16 v2, p1, -0xa0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 223
    double-to-int v0, v0

    .line 224
    goto :goto_0

    :cond_2
    if-ge v2, p1, :cond_3

    if-le p1, v3, :cond_0

    .line 226
    :cond_3
    if-ge v3, p1, :cond_0

    const/16 v1, 0x4db

    if-gt p1, v1, :cond_0

    .line 227
    const-wide v0, -0x3ff76bf3a9a3784aL    # -3.072289156626506

    add-int/lit16 v2, p1, -0x4db

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 228
    double-to-int v0, v0

    .line 229
    goto :goto_0
.end method

.method private calculateDot2AlphaByTime(I)I
    .locals 4

    .prologue
    const/16 v3, 0x43b

    const/16 v2, 0x3e8

    const/16 v0, 0xff

    const/16 v1, 0x53

    .line 200
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 201
    const-wide v0, 0x4008940c565c87b6L    # 3.072289156626506

    int-to-double v2, p1

    mul-double/2addr v0, v2

    .line 202
    double-to-int v0, v0

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-ge v1, p1, :cond_2

    if-le p1, v2, :cond_0

    .line 205
    :cond_2
    if-ge v2, p1, :cond_3

    if-gt p1, v3, :cond_3

    .line 206
    const-wide v0, -0x3ff76bf3a9a3784aL    # -3.072289156626506

    add-int/lit16 v2, p1, -0x43b

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 207
    double-to-int v0, v0

    .line 208
    goto :goto_0

    :cond_3
    if-ge v3, p1, :cond_0

    const/16 v1, 0x4db

    if-gt p1, v1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawTextAbove(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 122
    const-string v1, ""

    iput-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1transX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/recall/LoadingTextView;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/recall/R$dimen;->down_dot_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2transX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/recall/LoadingTextView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/LoadingTextView;->drawTextAbove(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/common/recall/LoadingTextView;->setGravity(I)V

    .line 87
    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadingTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    sget-object v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    sget v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView_mcLoadingText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    .line 75
    sget v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView_mcDotRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/recall/R$dimen;->down_dot_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mRadius:I

    .line 76
    sget v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView_mcLoadingTextColor:I

    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/recall/R$color;->down_load_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadingTextColor:I

    .line 77
    sget v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView_mcDotColor:I

    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/recall/R$color;->down_load_dot_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private setupAnimations()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    new-array v0, v8, [F

    aput v6, v0, v5

    iget v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDistance:I

    int-to-float v1, v1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 137
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3de147ae    # 0.11f

    const v2, 0x3df5c28f    # 0.12f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/recall/LoadingTextView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/recall/LoadingTextView$1;-><init>(Lcom/meizu/common/recall/LoadingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4db

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 155
    new-array v0, v8, [I

    aput v5, v0, v5

    iget v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAlpha:I

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4db

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/recall/LoadingTextView$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/recall/LoadingTextView$2;-><init>(Lcom/meizu/common/recall/LoadingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/recall/LoadingTextView$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/recall/LoadingTextView$3;-><init>(Lcom/meizu/common/recall/LoadingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 191
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 193
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 194
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    return-void

    .line 139
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0
.end method

.method private startLoadingAnimation()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->setupAnimations()V

    .line 305
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getLoadText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/LoadingTextView;->drawing(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 311
    if-eqz p2, :cond_1

    .line 312
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 324
    if-eqz p1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/recall/LoadingTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method public setDotColor(I)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/meizu/common/recall/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    .line 270
    return-void
.end method

.method public setLoadingTextColor(I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    if-nez p1, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->startLoadingAnimation()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/meizu/common/recall/LoadingTextView;->startLoadingAnimation()V

    .line 277
    return-void
.end method

.method public stopAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 285
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 286
    iput-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 290
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 291
    iput-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 296
    iput-object v1, p0, Lcom/meizu/common/recall/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    .line 298
    :cond_2
    return-void
.end method
