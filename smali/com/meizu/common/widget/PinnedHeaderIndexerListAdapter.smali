.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderListAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mHeaderMap:Landroid/util/SparseIntArray;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLastSection:I

.field private mLastSectionOverScrollDistance:I

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 65
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 259
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 72
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 74
    return-void
.end method

.method private ensureSectionHeaders()V
    .locals 5

    .prologue
    .line 485
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 486
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 489
    const/4 v1, -0x1

    .line 490
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-ge v0, v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 492
    if-eq v1, v2, :cond_0

    .line 494
    add-int v1, v0, v3

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 495
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 502
    if-eq v0, v1, :cond_0

    move v0, v1

    move v1, v2

    .line 507
    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 511
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 512
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    .line 514
    :cond_1
    return-void
.end method

.method private getSectionPosition(I)I
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 360
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureCacheValid()V

    .line 536
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 633
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 634
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    if-nez p3, :cond_0

    .line 637
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_pinned_top_header_minHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_pinned_interval_header_minHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method protected canSelect(II)Z
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 555
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->canSelect(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 266
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v4

    .line 276
    if-gtz v4, :cond_4

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 278
    :goto_1
    if-eqz v0, :cond_2

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v5, :cond_2

    .line 280
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 279
    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 282
    :cond_2
    iput v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 284
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 285
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_5

    .line 286
    :cond_3
    invoke-virtual {p1, v5, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 287
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 276
    goto :goto_1

    .line 289
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v4

    .line 290
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, v4, v0

    .line 293
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 294
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getDividerHeight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v7

    if-gt v0, v7, :cond_d

    .line 295
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 296
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, v7, :cond_d

    .line 297
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 298
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v8, v0

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v7, v0, :cond_d

    .line 299
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 304
    :goto_2
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ne v7, v0, :cond_6

    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v7

    if-ne v7, v6, :cond_6

    .line 305
    invoke-virtual {p0, p1, v4, v0, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 316
    :cond_6
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-le v4, v0, :cond_7

    .line 318
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    :goto_3
    if-le v4, v0, :cond_8

    .line 320
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 319
    invoke-virtual {p0, p1, v7, v4, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 318
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 322
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ge v4, v0, :cond_8

    .line 324
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    add-int/lit8 v4, v4, 0x1

    :goto_4
    if-gt v4, v0, :cond_8

    .line 326
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 325
    invoke-virtual {p0, p1, v7, v4, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 329
    :cond_8
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 331
    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 332
    :cond_9
    invoke-virtual {p1, v5, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_0

    .line 335
    :cond_a
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v0

    .line 339
    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_b

    move v0, v3

    .line 342
    :goto_5
    if-eqz v0, :cond_c

    .line 343
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 344
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 347
    :goto_6
    invoke-virtual {p1, v5, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setTranslateHeader(II)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 339
    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    sget v1, Lcom/meizu/common/R$layout;->mc_pinned_header_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :cond_0
    return-object v1
.end method

.method protected ensureCacheValid()V
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCacheValid:Z

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->ensureCacheValid()V

    .line 481
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureSectionHeaders()V

    goto :goto_0
.end method

.method protected getDataPosition(II)I
    .locals 3

    .prologue
    .line 563
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 566
    const/4 v1, -0x1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p2, v0

    .line 570
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 574
    add-int/lit8 v1, v1, -0x1

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 579
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getDataPosition(II)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method protected getItemBackgroundType(II)I
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 413
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_e

    .line 415
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isHeaderView(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v0, v0, v5

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 417
    if-ne v0, v2, :cond_0

    move v0, v1

    .line 470
    :goto_0
    return v0

    .line 419
    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    .line 420
    goto :goto_0

    .line 421
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    move v0, v3

    .line 422
    goto :goto_0

    :cond_2
    move v0, v4

    .line 424
    goto :goto_0

    .line 429
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v0, v0, v5

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 431
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int/2addr v5, v0

    .line 432
    if-ne v0, v2, :cond_4

    move v0, v1

    .line 433
    goto :goto_0

    .line 434
    :cond_4
    if-ne p2, v5, :cond_5

    move v0, v2

    .line 435
    goto :goto_0

    .line 436
    :cond_5
    sub-int v1, p2, v5

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_6

    move v0, v3

    .line 437
    goto :goto_0

    :cond_6
    move v0, v4

    .line 439
    goto :goto_0

    .line 443
    :cond_7
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 444
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v5

    .line 446
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_8

    .line 447
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCountForPartition(I)I

    move-result v0

    .line 452
    :goto_1
    iget-boolean v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v6, :cond_a

    .line 454
    if-ne p2, v5, :cond_9

    .line 455
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v0

    goto :goto_1

    .line 457
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 460
    :cond_a
    if-ne p2, v5, :cond_b

    sub-int v6, v0, v5

    if-ne v6, v2, :cond_b

    move v0, v1

    .line 461
    goto :goto_0

    .line 462
    :cond_b
    if-ne p2, v5, :cond_c

    move v0, v2

    .line 463
    goto :goto_0

    .line 464
    :cond_c
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_d

    move v0, v3

    .line 465
    goto :goto_0

    :cond_d
    move v0, v4

    .line 467
    goto :goto_0

    .line 470
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemBackgroundType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-static {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 408
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;I)I

    .line 392
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v3

    .line 394
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 396
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 402
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 408
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 399
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 402
    goto :goto_2

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 405
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 406
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method protected getItemViewType(II)I
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 524
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 530
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 254
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_1

    .line 182
    const/4 v0, -0x1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    if-gez p1, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 190
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v0, v2

    .line 191
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 192
    :goto_1
    if-ge v1, p1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 208
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p1, v1

    .line 219
    if-ltz v1, :cond_0

    .line 224
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_4

    .line 225
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt v2, p1, :cond_5

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0

    .line 229
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 602
    if-eqz p3, :cond_0

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 606
    return-object p3

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    .line 604
    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 586
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 588
    if-ltz v0, :cond_0

    .line 589
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 590
    invoke-virtual {p0, p3, v0, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 546
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isEnabled(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 619
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 620
    sget v1, Lcom/meizu/common/R$layout;->mc_pinned_group_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIndexedPartition(I)V
    .locals 1

    .prologue
    .line 136
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 140
    :cond_0
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->invalidate()V

    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 160
    :cond_0
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 121
    return-void
.end method

.method public showSectionHeaders(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    .line 81
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 82
    return-void
.end method
