.class public Lcom/meizu/common/widget/SkipPosSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;,
        Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;,
        Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mInitialTouchX:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrag:Z

.field private mOffset:F

.field private mProcess:I

.field private mScaledTouchSlop:I

.field private mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

.field protected rate:I

.field protected realMax:I

.field protected realProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    .line 270
    iput-boolean v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SkipPosSeekBar;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SkipPosSeekBar;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/SkipPosSeekBar;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SkipPosSeekBar;)Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e9eb852    # 0.31f

    const v3, 0x3eae147b    # 0.34f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mScaledTouchSlop:I

    .line 112
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private startAnimation(IFFI)V
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$1;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;FFI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SkipPosSeekBar$2;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 212
    return-void

    .line 176
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 309
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getWidth()I

    move-result v4

    .line 310
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 315
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    if-le v2, v4, :cond_1

    move v0, v1

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v2, v4

    .line 336
    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    .line 337
    if-eqz v2, :cond_4

    move v0, v2

    .line 338
    :goto_1
    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(F)V

    .line 339
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 321
    sub-int v0, v5, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v2, v5

    div-float/2addr v0, v2

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v6

    if-ge v2, v6, :cond_3

    move v0, v1

    .line 326
    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    if-gt v2, v4, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v2, v5

    div-float/2addr v0, v2

    .line 331
    goto :goto_0

    :cond_4
    move v0, v3

    .line 337
    goto :goto_1
.end method


# virtual methods
.method public getRealProgress()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 249
    const-class v0, Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 343
    check-cast p1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    .line 344
    invoke-virtual {p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    iget v0, p1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;->realProgress:I

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    .line 346
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 347
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 352
    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 353
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    iput v0, v1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;->realProgress:I

    .line 354
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 124
    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    .line 126
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 302
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 303
    goto :goto_0

    .line 280
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInitialTouchX:F

    goto :goto_1

    .line 284
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInitialTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 285
    iput-boolean v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_1

    .line 290
    :pswitch_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    if-nez v2, :cond_2

    .line 291
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 293
    :cond_2
    iput-boolean v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_1

    .line 297
    :pswitch_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    if-eqz v2, :cond_1

    .line 298
    iput-boolean v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_1

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAntiAlias(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eq v0, v1, :cond_0

    .line 136
    iput v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    .line 137
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    .line 138
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    .line 143
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 255
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 261
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 260
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSkipAnimationListener(Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    .line 221
    return-void
.end method

.method public setSkipPosMax(I)V
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    if-eq v0, p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 236
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    .line 237
    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 241
    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    .line 244
    :cond_0
    return-void
.end method

.method public setSkipProgress(F)V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(I)V

    .line 173
    return-void
.end method

.method public setSkipProgress(I)V
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 156
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    :cond_0
    const v3, 0x3ee38e39

    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 162
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->startAnimation(IFFI)V

    .line 163
    return-void
.end method
