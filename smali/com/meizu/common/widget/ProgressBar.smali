.class public Lcom/meizu/common/widget/ProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ProgressBar$SavedState;,
        Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mBreakPoint:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVertical:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 224
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_ProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 213
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    .line 237
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->initProgressBar()V

    .line 239
    sget-object v2, Lcom/meizu/common/R$styleable;->ProgressBar:[I

    .line 240
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 242
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 244
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgressDrawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_0

    .line 246
    invoke-direct {p0, v3, v0}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 249
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_0
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDuration:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    .line 255
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinWidth:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    .line 256
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxWidth:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 257
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinHeight:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 258
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxHeight:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 260
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateBehavior:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    .line 262
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcInterpolator:I

    const v4, 0x10a000b

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 265
    if-lez v3, :cond_1

    .line 266
    invoke-virtual {p0, p1, v3}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 269
    :cond_1
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcMax:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 271
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgress:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 273
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcSecondaryProgress:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 274
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 273
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 276
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDrawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_2

    .line 278
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 279
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_2
    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateOnly:I

    iget-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 285
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 287
    iget-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v3, :cond_3

    sget v3, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminate:I

    iget-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminate(Z)V

    .line 290
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ProgressBar;IIZZ)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/ProgressBar;Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;)Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 5

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-lez v1, :cond_3

    int-to-float v1, p2

    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v3, v1

    .line 555
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 556
    if-eqz v2, :cond_4

    .line 557
    const/4 v1, 0x0

    .line 559
    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    .line 560
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    :cond_0
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 564
    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 569
    :goto_1
    if-eqz p4, :cond_2

    const v1, 0x102000d

    if-ne p1, v1, :cond_2

    .line 570
    invoke-virtual {p0, v3, p3}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_2
    monitor-exit p0

    return-void

    .line 554
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 566
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 363
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 364
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 365
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 366
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    .line 367
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 368
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    .line 370
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    .line 371
    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 372
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 373
    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 374
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 4

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 585
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 586
    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 591
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_1
    :try_start_2
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/meizu/common/widget/ProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 299
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 300
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 302
    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    move v2, v1

    .line 304
    :goto_0
    if-ge v2, v3, :cond_2

    .line 305
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 306
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000d

    if-eq v0, v6, :cond_0

    const v6, 0x102000f

    if-ne v0, v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v5, v0}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v2

    .line 304
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 306
    goto :goto_1

    .line 310
    :cond_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 312
    :goto_2
    if-ge v1, v3, :cond_3

    .line 313
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 319
    :cond_4
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/16 v5, 0x2710

    .line 333
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 334
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 336
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 339
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 340
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 341
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 342
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v0

    .line 347
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int v3, v0, v2

    .line 878
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    .line 882
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 884
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 888
    iget-object v4, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 889
    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 890
    int-to-float v4, p1

    int-to-float v5, p2

    div-float/2addr v4, v5

    .line 891
    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    .line 892
    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    .line 894
    int-to-float v3, p2

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 895
    sub-int v0, p1, v3

    div-int/lit8 v0, v0, 0x2

    .line 896
    add-int/2addr v3, v0

    move v4, v3

    move v3, v2

    move v2, v1

    .line 905
    :goto_0
    iget-object v5, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 911
    :cond_0
    return-void

    .line 899
    :cond_1
    int-to-float v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 900
    sub-int v0, p2, v2

    div-int/lit8 v0, v0, 0x2

    .line 901
    add-int/2addr v2, v0

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_3
    move v4, v3

    move v3, v2

    goto :goto_1
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1012
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 998
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 999
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 1000
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 324
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 323
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    monitor-exit p0

    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    monitor-exit p0

    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    if-nez v0, :cond_0

    .line 857
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 860
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 862
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/meizu/common/widget/ProgressBar;->invalidate(IIII)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isIsVertical()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 515
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 517
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1076
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1077
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    .line 1080
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1095
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1096
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 925
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 926
    if-eqz v0, :cond_1

    .line 930
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v3, v1

    .line 932
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v2

    div-int v4, v1, v2

    .line 935
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-eqz v1, :cond_3

    .line 936
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v6

    sub-int v7, v3, v4

    invoke-direct {v2, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    new-instance v1, Landroid/graphics/Rect;

    const/4 v5, 0x0

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v6

    invoke-direct {v1, v5, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 942
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 943
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 944
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 945
    iget-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 946
    iget-object v3, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 947
    iget-object v3, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 949
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 950
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 954
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 956
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v4

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    if-eqz v3, :cond_4

    .line 957
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 958
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 959
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 962
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 963
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 964
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 971
    :goto_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 972
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 976
    :cond_1
    monitor-exit p0

    return-void

    .line 931
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v3, v1

    goto/16 :goto_0

    .line 939
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v6

    invoke-direct {v2, v1, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 940
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v4, v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v6

    invoke-direct {v1, v4, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 952
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    throw v0

    .line 967
    :cond_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1100
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1101
    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1102
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1103
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1104
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1140
    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1141
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 980
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 984
    if-eqz v2, :cond_0

    .line 985
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 986
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 988
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 989
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 990
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 992
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    .line 993
    invoke-static {v0, p2, v2}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v0

    .line 992
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit p0

    return-void

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method onProgressRefresh(FZ)V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1067
    check-cast p1, Lcom/meizu/common/widget/ProgressBar$SavedState;

    .line 1068
    invoke-virtual {p1}, Lcom/meizu/common/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1070
    iget v0, p1, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 1071
    iget v0, p1, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1072
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1056
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1057
    new-instance v1, Lcom/meizu/common/widget/ProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1059
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    iput v0, v1, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    .line 1060
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    iput v0, v1, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1062
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 873
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 842
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 844
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 846
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 852
    :cond_1
    :goto_0
    return-void

    .line 849
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 522
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 524
    :cond_0
    return-void
.end method

.method public setBreakPoint(I)V
    .locals 0

    .prologue
    .line 917
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 918
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->invalidate()V

    .line 919
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 398
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    .line 400
    if-eqz p1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 437
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 439
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 442
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 802
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 803
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 813
    return-void
.end method

.method protected setIsVertical(Z)V
    .locals 0

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    .line 1135
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 718
    monitor-enter p0

    if-gez p1, :cond_0

    move p1, v0

    .line 721
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 722
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 723
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 725
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 726
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 728
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :cond_2
    monitor-exit p0

    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    .prologue
    .line 607
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 615
    :cond_1
    if-gez p1, :cond_3

    .line 616
    const/4 v0, 0x0

    .line 619
    :goto_1
    :try_start_1
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le v0, v1, :cond_2

    .line 620
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 623
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 624
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 625
    const v0, 0x102000d

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 470
    const/4 v0, 0x1

    .line 475
    :goto_0
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 480
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    if-ge v3, v2, :cond_0

    .line 481
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 482
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->requestLayout()V

    .line 485
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    iget-boolean v2, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    .line 487
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 491
    :cond_1
    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 493
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 494
    const v0, 0x102000d

    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 495
    const v0, 0x102000f

    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 497
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 472
    goto :goto_0
.end method

.method public setProgressDrawableResource(I)V
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1115
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1116
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1117
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-lez v0, :cond_0

    .line 1121
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1124
    :cond_0
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 642
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 646
    :cond_1
    if-gez p1, :cond_3

    .line 650
    :goto_1
    :try_start_1
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le v0, v1, :cond_2

    .line 651
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 654
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    if-eq v0, v1, :cond_0

    .line 655
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 656
    const v0, 0x102000f

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 827
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 831
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 778
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 767
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 770
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 771
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 773
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 775
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 786
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 787
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 792
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 509
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 508
    :goto_0
    return v0

    .line 509
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
