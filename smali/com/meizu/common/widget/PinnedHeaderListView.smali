.class public Lcom/meizu/common/widget/PinnedHeaderListView;
.super Lcom/meizu/common/widget/AutoScrollListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderPaddingLeft:I

.field private mHeaderPaddingTop:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 124
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 111
    const/16 v0, 0x14

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 564
    iget-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v0, :cond_0

    .line 565
    iget-wide v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v0, p3

    long-to-int v0, v0

    .line 566
    if-gtz v0, :cond_4

    .line 567
    iget v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 568
    iget-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 575
    :cond_0
    :goto_0
    iget-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 578
    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v2, v6, :cond_5

    .line 579
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v2, v2

    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 583
    :goto_1
    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v2, v6, :cond_2

    .line 584
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 587
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 588
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 590
    :cond_3
    return-void

    .line 571
    :cond_4
    iget v1, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v2, v3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 581
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v2, v2

    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 390
    if-nez v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    if-nez v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 397
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 399
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    .line 401
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 405
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 406
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 407
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, p1

    iput v0, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 408
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 403
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 502
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 505
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    .line 509
    :cond_0
    return-void

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v2

    .line 484
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 497
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 489
    :goto_1
    if-ge v1, p1, :cond_2

    .line 490
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 491
    iget-boolean v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 492
    iget v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v0, v3

    .line 489
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 497
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 513
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 516
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v2

    move v4, v3

    move v5, v2

    move v6, v3

    move v2, v3

    .line 518
    :goto_1
    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v8, :cond_4

    .line 519
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v8, v8, v2

    .line 520
    iget-boolean v9, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v9, :cond_0

    .line 522
    iget v4, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v7, :cond_2

    iget v4, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v4, v5, :cond_2

    .line 523
    iget v5, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    move v4, v7

    .line 518
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 524
    :cond_2
    iget v4, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v4, :cond_3

    iget v4, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v10, :cond_b

    .line 525
    :cond_3
    iget v4, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v8, v8, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v4, v8

    .line 526
    if-le v4, v6, :cond_b

    move v6, v4

    move v4, v7

    .line 527
    goto :goto_2

    .line 533
    :cond_4
    if-eqz v4, :cond_5

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 535
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getWidth()I

    move-result v6

    invoke-virtual {v2, v3, v3, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 539
    :cond_5
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 541
    if-eqz v4, :cond_a

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 545
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_8

    .line 546
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v2

    .line 547
    iget-boolean v5, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_6

    iget v5, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v5, v10, :cond_6

    .line 548
    :cond_7
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 552
    :cond_8
    :goto_4
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v2, :cond_a

    .line 553
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, v3

    .line 554
    iget-boolean v4, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_9

    iget v4, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v7, :cond_9

    .line 555
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 552
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 560
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 561
    return-void

    :cond_b
    move v4, v7

    goto :goto_2
.end method

.method public getCurrentOverScrollDistance()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 613
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPaddingTop()I

    move-result v1

    sub-int v0, v1, v0

    .line 616
    :cond_0
    return v0
.end method

.method public getHeaderPaddingTop()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    return v0
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getPositionAt(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v2

    .line 441
    if-lez v2, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->isStackFromBottom()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 444
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, v1

    .line 460
    :cond_0
    :goto_1
    return v0

    .line 443
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 451
    :goto_2
    if-ge v1, v2, :cond_0

    .line 452
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 451
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 3

    .prologue
    .line 416
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 417
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    .line 418
    iget-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 419
    iget v0, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v0, v1

    .line 422
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 645
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 646
    const-class v0, Lcom/meizu/common/widget/PinnedHeaderListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v2

    move v1, v0

    .line 222
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v3, :cond_5

    .line 223
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v0

    .line 224
    iget-boolean v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_0

    .line 225
    iget v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v4, :cond_1

    .line 226
    iget v1, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v3

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iget v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 228
    iget v0, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v1, :cond_4

    .line 237
    invoke-virtual {p0, p3, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 243
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 246
    :cond_3
    return-void

    .line 238
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AutoScrollListView;->onLayout(ZIIII)V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 137
    sub-int v0, p4, p2

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 138
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v1

    .line 167
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-eq v1, v2, :cond_0

    .line 168
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .line 169
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v1, :cond_3

    .line 170
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v1, v1, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 178
    :cond_0
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/meizu/common/widget/PinnedHeaderListView$1;)V

    aput-object v2, v1, v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v2, v0, v3, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v1, v1

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 173
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v2, v2, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 174
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 189
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 195
    :cond_6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 205
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mScrollState:I

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 209
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 146
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 147
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 330
    const/4 v1, 0x2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 331
    const/16 v1, 0xff

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 332
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 334
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v1

    .line 335
    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 630
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 637
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 638
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->requestLayout()V

    .line 639
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    .line 641
    :cond_1
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    .line 373
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 374
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 375
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 376
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 377
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 379
    :cond_1
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 380
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 381
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_2
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPaddingTop(I)V
    .locals 0

    .prologue
    .line 620
    if-ltz p1, :cond_0

    .line 621
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    .line 623
    :cond_0
    return-void
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 292
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    .line 294
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 295
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 296
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 297
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 298
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 314
    :goto_0
    return-void

    .line 299
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 300
    :cond_1
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 301
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 306
    :goto_1
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 307
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 308
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 309
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 303
    :cond_2
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 304
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 311
    :cond_3
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 312
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 275
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 277
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 278
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 281
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 282
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 159
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 153
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 142
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    instance-of v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    .line 596
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    move-result-object v1

    .line 597
    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v1, :cond_1

    .line 599
    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 609
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 608
    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    goto :goto_0
.end method

.method public setTranslateHeader(II)V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 357
    const/4 v1, 0x2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 358
    const/16 v1, 0xff

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v1

    .line 362
    add-int/2addr v1, p2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 363
    return-void
.end method
