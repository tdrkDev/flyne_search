.class public Lcom/meizu/common/widget/AuraSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuraSeekBar"

.field private static final THUMB_HIDE_ANIM_TIME:I = 0xc8

.field private static final THUMB_SCALE_BASELINE:F = 1.0f

.field private static final THUMB_SCALE_TARGET:F = 0.5f

.field private static final THUMB_SHOW_ANIM_TIME:I = 0xb4

.field private static final mMaxHeight:I = 0x30

.field private static final mMinHeight:I = 0x7


# instance fields
.field private isAuraShow:Z

.field private isDrag:Z

.field private mAuraBorderDistance:I

.field private mAuraDrawble:Landroid/graphics/drawable/Drawable;

.field private mAuraHeight:I

.field private mAuraHideAnimator:Landroid/animation/ValueAnimator;

.field private mAuraHideInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraRadius:I

.field private mAuraShowAnimator:Landroid/animation/ValueAnimator;

.field private mAuraShowInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraWidth:I

.field private mInitialTouchX:F

.field private mScaledTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_AuraSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 62
    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    .line 70
    iput-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    .line 84
    sget-object v0, Lcom/meizu/common/R$styleable;->AuraSeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    sget v1, Lcom/meizu/common/R$styleable;->AuraSeekBar_mcAuraThumbDrawble:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AuraSeekBar;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadius:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/AuraSeekBar;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadius:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AuraSeekBar;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AuraSeekBar;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/AuraSeekBar;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    return p1
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/AuraSeekBar;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    return p1
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3edc28f6    # 0.43f

    invoke-direct {v0, v3, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private onProgressChanged()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 196
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->startAuraShowAnim()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 202
    :cond_1
    return-void
.end method

.method private onStopTrackTouch()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->startAuraHideAnim()V

    .line 209
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 211
    :cond_0
    return-void
.end method

.method private startAuraHideAnim()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$2;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$3;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 272
    return-void

    .line 247
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private startAuraShowAnim()V
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 218
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$1;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    return-void

    .line 219
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopAuraHideAnim()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 278
    :cond_0
    return-void
.end method

.method private stopAuraShowAnim()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 131
    const/4 v0, 0x0

    .line 132
    iget v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    if-le v1, v3, :cond_0

    .line 133
    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_2

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    :goto_0
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 145
    iget v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    add-int/lit8 v4, v4, 0x0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    iget v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    sub-int/2addr v2, v5

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    const-string v0, "AuraSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auraBounds y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "AuraSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auraBounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 140
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 283
    const-class v0, Lcom/meizu/common/widget/AuraSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 104
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I

    .line 113
    :goto_0
    if-eqz v2, :cond_1

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 115
    const/4 v0, 0x7

    const/16 v3, 0x30

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 119
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 120
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, p2, v2}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v0

    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/AuraSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 191
    goto :goto_0

    .line 165
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    .line 166
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 167
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->stopAuraShowAnim()V

    .line 168
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->stopAuraHideAnim()V

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 173
    iput-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 174
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onProgressChanged()V

    goto :goto_1

    .line 179
    :pswitch_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_1

    .line 185
    :pswitch_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
