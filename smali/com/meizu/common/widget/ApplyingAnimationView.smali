.class public Lcom/meizu/common/widget/ApplyingAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final alphaProperty:[Ljava/lang/String;

.field private animator:Landroid/animation/AnimatorSet;

.field private bAlpha:I

.field private bDraw:Z

.field private baseX:F

.field private baseY:F

.field private cbPosition:F

.field private cbRadius:F

.field private cgPosition:F

.field private cgRadius:F

.field private coPosition:F

.field private coRadius:F

.field private crPosition:F

.field private crRadius:F

.field private gAlpha:I

.field private gDraw:Z

.field private halfMaxRadius:F

.field private mAnimScale:F

.field private mBluePaint:Landroid/graphics/Paint;

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mIsAnimRun:Z

.field private mOrangePaint:Landroid/graphics/Paint;

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStopFromUser:Z

.field private maxRadius:F

.field private oAlpha:I

.field private oDraw:Z

.field private po1:F

.field private po2:F

.field private po3:F

.field private po4:F

.field private final positionProperty:[Ljava/lang/String;

.field private rAlpha:I

.field private rDraw:Z

.field private final radiusProperty:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0xff

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 89
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 90
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 91
    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "crPosition"

    aput-object v1, v0, v2

    const-string v1, "cbPosition"

    aput-object v1, v0, v3

    const-string v1, "cgPosition"

    aput-object v1, v0, v4

    const-string v1, "coPosition"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rAlpha"

    aput-object v1, v0, v2

    const-string v1, "bAlpha"

    aput-object v1, v0, v3

    const-string v1, "gAlpha"

    aput-object v1, v0, v4

    const-string v1, "oAlpha"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "crRadius"

    aput-object v1, v0, v2

    const-string v1, "cbRadius"

    aput-object v1, v0, v3

    const-string v1, "cgRadius"

    aput-object v1, v0, v4

    const-string v1, "coRadius"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 115
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 116
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 117
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 126
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 127
    iput-boolean v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 141
    sget-object v0, Lcom/meizu/common/R$styleable;->ApplyingAnimationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    sget v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView_mcApplyingAnimationScale:I

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->init(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ApplyingAnimationView;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    return p1
.end method

.method private createAlphaAnimator(I)Landroid/animation/Animator;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 314
    .line 315
    new-array v0, v11, [Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v1, v1, p1

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v9

    .line 317
    aget-object v1, v0, v9

    const-wide/16 v2, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    iget-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v1, v1, p1

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v10

    .line 319
    aget-object v1, v0, v10

    const-wide/16 v2, 0x2c0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    iget-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v1, v1, p1

    new-array v2, v11, [I

    fill-array-data v2, :array_2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v7

    .line 321
    aget-object v1, v0, v7

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 322
    aget-object v1, v0, v7

    const-wide/16 v2, 0x2c0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    iget-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v1, v1, p1

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v8

    .line 324
    aget-object v1, v0, v8

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    aget-object v1, v0, v8

    const-wide/16 v2, 0x2b0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 327
    new-array v2, v11, [Landroid/animation/Animator;

    rem-int v3, p1, v11

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, v11

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x2

    rem-int/2addr v3, v11

    aget-object v3, v0, v3

    aput-object v3, v2, v7

    add-int/lit8 v3, p1, 0x3

    rem-int/2addr v3, v11

    aget-object v0, v0, v3

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 328
    return-object v1

    .line 316
    nop

    :array_0
    .array-data 4
        0xff
        0xff
    .end array-data

    .line 318
    :array_1
    .array-data 4
        0xff
        0xff
    .end array-data

    .line 320
    :array_2
    .array-data 4
        0xff
        0x0
        0x0
        0x0
    .end array-data

    .line 323
    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data
.end method

.method private createCommonPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    return-object v0
.end method

.method private createPositionAnimator(I)Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 274
    const/4 v0, 0x4

    .line 275
    new-array v1, v0, [Landroid/animation/ObjectAnimator;

    .line 276
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    aput v12, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 277
    aget-object v2, v1, v8

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    aget-object v2, v1, v8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e570a3d    # 0.21f

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3ef126e9    # 0.471f

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    .line 280
    aget-object v2, v1, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    aget-object v2, v1, v9

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3eae978d    # 0.341f

    const v6, 0x3ed1eb85    # 0.41f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    .line 283
    aget-object v2, v1, v10

    const-wide/16 v4, 0x2a0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    aget-object v2, v1, v10

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e851eb8    # 0.26f

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3f420c4a    # 0.758f

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    .line 286
    aget-object v2, v1, v11

    const-wide/16 v4, 0x2e0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    aget-object v2, v1, v11

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3ede353f    # 0.434f

    const v6, 0x3f170a3d    # 0.59f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    rem-int v4, p1, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v8

    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v9

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v10

    add-int/lit8 v4, p1, 0x3

    rem-int v0, v4, v0

    aget-object v0, v1, v0

    aput-object v0, v3, v11

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 290
    return-object v2
.end method

.method private createRadiusAnimator(I)Landroid/animation/Animator;
    .locals 13

    .prologue
    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 294
    const/4 v0, 0x4

    .line 295
    new-array v1, v0, [Landroid/animation/ObjectAnimator;

    .line 296
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 297
    aget-object v2, v1, v8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3e560419    # 0.209f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v12, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    aget-object v2, v1, v8

    const-wide/16 v4, 0x2d0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    .line 300
    aget-object v2, v1, v9

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e947ae1    # 0.29f

    const/4 v5, 0x0

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3f218937    # 0.631f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    aget-object v2, v1, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v4, v12

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    .line 303
    aget-object v2, v1, v10

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3eac8b44    # 0.337f

    const v6, 0x3e2e147b    # 0.17f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 304
    aget-object v2, v1, v10

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v4, v12

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    .line 306
    aget-object v2, v1, v11

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e428f5c    # 0.19f

    const/4 v5, 0x0

    const v6, 0x3ebd70a4    # 0.37f

    const v7, 0x3e9eb852    # 0.31f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    aget-object v2, v1, v11

    const-wide/16 v4, 0x2b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    rem-int v4, p1, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v8

    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v9

    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v3, v10

    add-int/lit8 v4, p1, 0x3

    rem-int v0, v4, v0

    aget-object v0, v1, v0

    aput-object v0, v3, v11

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 310
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->initData(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    const v1, -0x14b5b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    const v1, -0xff6624

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    const v1, 0x1af8b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    const v1, -0x977cd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->getDensity(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    mul-float/2addr v0, v1

    .line 167
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    .line 168
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    .line 170
    const v1, 0x4144cccd    # 12.3f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    .line 171
    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    .line 172
    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getX()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    .line 175
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    .line 176
    return-void
.end method

.method private setBAlpha(I)V
    .locals 2

    .prologue
    .line 338
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 339
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 340
    return-void
.end method

.method private setCbPosition(F)V
    .locals 0

    .prologue
    .line 373
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    .line 374
    return-void
.end method

.method private setCbRadius(F)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    .line 358
    return-void
.end method

.method private setCgPosition(F)V
    .locals 0

    .prologue
    .line 377
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    .line 378
    return-void
.end method

.method private setCgRadius(F)V
    .locals 0

    .prologue
    .line 361
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    .line 362
    return-void
.end method

.method private setCoPosition(F)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    .line 382
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->invalidate()V

    .line 383
    return-void
.end method

.method private setCoRadius(F)V
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    .line 366
    return-void
.end method

.method private setCrPosition(F)V
    .locals 0

    .prologue
    .line 369
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    .line 370
    return-void
.end method

.method private setCrRadius(F)V
    .locals 0

    .prologue
    .line 353
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    .line 354
    return-void
.end method

.method private setGAlpha(I)V
    .locals 2

    .prologue
    .line 343
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 344
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 345
    return-void
.end method

.method private setOAlpha(I)V
    .locals 2

    .prologue
    .line 348
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    .line 349
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    return-void
.end method

.method private setRAlpha(I)V
    .locals 2

    .prologue
    .line 333
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 334
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    return-void
.end method

.method private startAnimator()V
    .locals 12

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 226
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    .line 230
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 231
    invoke-direct {p0, v10}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .line 232
    invoke-direct {p0, v11}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 233
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v8

    aput-object v2, v5, v10

    aput-object v3, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    .line 237
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 238
    invoke-direct {p0, v10}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .line 239
    invoke-direct {p0, v11}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 240
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 241
    new-array v6, v7, [Landroid/animation/Animator;

    aput-object v0, v6, v9

    aput-object v1, v6, v8

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    .line 244
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 245
    invoke-direct {p0, v10}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .line 246
    invoke-direct {p0, v11}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .line 247
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v9

    aput-object v1, v7, v8

    aput-object v2, v7, v10

    aput-object v3, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    new-array v1, v11, [Landroid/animation/Animator;

    aput-object v4, v1, v9

    aput-object v5, v1, v8

    aput-object v6, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/meizu/common/widget/ApplyingAnimationView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ApplyingAnimationView$1;-><init>(Lcom/meizu/common/widget/ApplyingAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    iput-boolean v8, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private stopRunAnimator()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    .line 429
    :cond_0
    return-void
.end method


# virtual methods
.method public getDensity(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 452
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 183
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 186
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 187
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 190
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 191
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 194
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 195
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 198
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    if-nez v0, :cond_4

    .line 199
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    if-nez v0, :cond_5

    .line 202
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    if-nez v0, :cond_6

    .line 205
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    :cond_6
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    if-nez v0, :cond_7

    .line 208
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 210
    :cond_7
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 211
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 212
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 213
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 214
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 458
    const-class v0, Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 435
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 436
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 438
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 439
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 441
    invoke-static {v0, p1, v4}, Lcom/meizu/common/widget/ApplyingAnimationView;->resolveSizeAndState(III)I

    move-result v0

    .line 442
    invoke-static {v1, p2, v4}, Lcom/meizu/common/widget/ApplyingAnimationView;->resolveSizeAndState(III)I

    move-result v1

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->setMeasuredDimension(II)V

    .line 443
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 388
    if-eqz p2, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 399
    if-eqz p1, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    if-nez p1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    goto :goto_0
.end method
