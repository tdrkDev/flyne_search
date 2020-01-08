.class Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FlymeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollItemManager"
.end annotation


# instance fields
.field private mBaseDuration:I

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsParallaxAnimationComplete:Z

.field private mOffsetState:I

.field private mScrollItemCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/FlymeListView$ScrollItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/meizu/common/widget/FlymeListView$ScrollItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollProportion:F

.field private mSensitivity:I

.field private mSmoothBackAnimationDuration:I

.field private mSmoothBackAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/meizu/common/widget/FlymeListView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FlymeListView;)V
    .locals 1

    .prologue
    .line 268
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 273
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mBaseDuration:I

    .line 277
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollProportion:F

    .line 280
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;Z)Z
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;I)I
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    return p1
.end method

.method private calculateOffset(Lcom/meizu/common/widget/FlymeListView$ScrollItem;F)F
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getCurrentOffset()F

    move-result v0

    .line 354
    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    .line 355
    cmpl-float v0, p2, v1

    if-lez v0, :cond_4

    .line 356
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v1

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    .line 360
    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 361
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v1

    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownScrollOffsetRatio()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    int-to-float v2, v2

    div-float v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 364
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 365
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v0

    :cond_3
    move v1, v0

    .line 367
    goto :goto_0

    .line 369
    :cond_4
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    .line 373
    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 374
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v1

    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 376
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpScrollOffsetRatio()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    int-to-float v2, v2

    div-float v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 377
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 378
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v0

    :cond_6
    move v1, v0

    .line 380
    goto :goto_0

    .line 383
    :cond_7
    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 384
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    .line 388
    cmpg-float v2, v0, v1

    if-gez v2, :cond_8

    .line 389
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 391
    :cond_8
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownScrollOffsetRatio()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    int-to-float v3, v3

    div-float v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 392
    cmpg-float v2, v0, v1

    if-gez v2, :cond_9

    move v0, v1

    .line 396
    :cond_9
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_a

    .line 397
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v0

    :cond_a
    move v1, v0

    .line 399
    goto/16 :goto_0

    .line 401
    :cond_b
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    .line 405
    cmpl-float v2, v0, v1

    if-lez v2, :cond_c

    .line 406
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 408
    :cond_c
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpScrollOffsetRatio()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    int-to-float v3, v3

    div-float v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 409
    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    .line 412
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v1

    goto/16 :goto_0

    :cond_d
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public addScrollItem(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->addScrollItem(Landroid/view/View;Landroid/view/View;FF)V

    .line 287
    return-void
.end method

.method public addScrollItem(Landroid/view/View;Landroid/view/View;FF)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->getScrollItemFromCache()Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setTranslateView(Landroid/view/View;)V

    .line 300
    invoke-virtual {v0, p3, p4}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setScrollOffsetRatio(FF)V

    .line 301
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setViewHolder(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;-><init>(Lcom/meizu/common/widget/FlymeListView;)V

    .line 305
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setTranslateView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v0, p3, p4}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setScrollOffsetRatio(FF)V

    .line 307
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setViewHolder(Landroid/view/View;)V

    .line 308
    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addScrollItemToCache(Lcom/meizu/common/widget/FlymeListView$ScrollItem;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public cancleSmoothBackToOriginalPosition()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 504
    :cond_0
    return-void
.end method

.method public getScrollItemFromCache()Lcom/meizu/common/widget/FlymeListView$ScrollItem;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 320
    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollItemHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/meizu/common/widget/FlymeListView$ScrollItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public isParallaxAnimationComplete()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return v0
.end method

.method public resetOriginalTransilationY()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 558
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setOriginalTransilationY(F)V

    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method

.method public setBaseDuration(I)V
    .locals 0

    .prologue
    .line 549
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mBaseDuration:I

    .line 550
    return-void
.end method

.method public setParallaxAnimationComplete(Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    .line 495
    return-void
.end method

.method public setSensitivity(I)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSensitivity:I

    .line 513
    return-void
.end method

.method public setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 541
    return-void
.end method

.method public startSmoothBackToOriginalPosition()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 424
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    if-ne v0, v2, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->resetOriginalTransilationY()V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    .line 427
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-static {v0}, Lcom/meizu/common/widget/FlymeListView;->access$000(Lcom/meizu/common/widget/FlymeListView;)Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-static {v0}, Lcom/meizu/common/widget/FlymeListView;->access$000(Lcom/meizu/common/widget/FlymeListView;)Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/FlymeListView;->getViewHoldSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onAnimationStateChange(ILjava/util/HashSet;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mBaseDuration:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollProportion:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimationDuration:I

    .line 433
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 435
    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getCurrentOffset()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setOffsetBeforeSmoothBack(F)V

    goto :goto_1

    .line 438
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    .line 439
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;-><init>(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$2;-><init>(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 438
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public translateItemY(F)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 332
    cmpl-float v0, p1, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    if-ne v0, v1, :cond_1

    .line 349
    :cond_0
    return-void

    .line 335
    :cond_1
    iput v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    .line 336
    iput v4, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollProportion:F

    .line 337
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->calculateOffset(Lcom/meizu/common/widget/FlymeListView$ScrollItem;F)F

    move-result v2

    .line 340
    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    .line 341
    const/4 v3, 0x1

    iput v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    .line 342
    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getDownThreshold()F

    move-result v3

    div-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollProportion:F

    .line 347
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->translateItemY(F)V

    goto :goto_0

    .line 343
    :cond_3
    cmpg-float v3, v2, v4

    if-gez v3, :cond_2

    .line 344
    const/4 v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mOffsetState:I

    .line 345
    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getUpThreshold()F

    move-result v3

    div-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->mScrollProportion:F

    goto :goto_1
.end method
