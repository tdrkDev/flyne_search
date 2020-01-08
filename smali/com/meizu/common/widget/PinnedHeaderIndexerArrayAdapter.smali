.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/PinnedHeaderArrayAdapter",
        "<TT;>;",
        "Landroid/widget/SectionIndexer;"
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

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 253
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 59
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 61
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    .line 28
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 253
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 65
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 67
    return-void
.end method

.method private ensureSectionHeaders()V
    .locals 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 475
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 478
    const/4 v1, -0x1

    .line 479
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-ge v0, v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 483
    if-eq v1, v2, :cond_0

    if-le v2, v1, :cond_0

    .line 485
    add-int v1, v0, v3

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 486
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 493
    if-eq v0, v1, :cond_0

    move v0, v1

    move v1, v2

    .line 498
    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 502
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 503
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCount:I

    .line 505
    :cond_1
    return-void
.end method

.method private getSectionPosition(I)I
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 349
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureCacheValid()V

    .line 527
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 624
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    if-nez p3, :cond_0

    .line 628
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_pinned_top_header_minHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 634
    :goto_0
    return-void

    .line 631
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
    .line 545
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

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
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->canSelect(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v4

    .line 265
    if-gtz v4, :cond_3

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 267
    :goto_1
    if-eqz v0, :cond_1

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v5, :cond_1

    .line 269
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 268
    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 271
    :cond_1
    iput v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 273
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 274
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_4

    .line 275
    :cond_2
    invoke-virtual {p1, v5, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 276
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 265
    goto :goto_1

    .line 278
    :cond_4
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v4

    .line 279
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, v4, v0

    .line 281
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 282
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getDividerHeight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v7

    if-gt v0, v7, :cond_c

    .line 283
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 284
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, v7, :cond_c

    .line 285
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 286
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v8, v0

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v7, v0, :cond_c

    .line 287
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 292
    :goto_2
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-ne v7, v0, :cond_5

    if-eq v0, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 293
    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 304
    :cond_5
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-le v4, v0, :cond_6

    .line 306
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    :goto_3
    if-le v4, v0, :cond_7

    .line 308
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 307
    invoke-virtual {p0, p1, v7, v4, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 306
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 310
    :cond_6
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-ge v4, v0, :cond_7

    .line 312
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    add-int/lit8 v4, v4, 0x1

    :goto_4
    if-gt v4, v0, :cond_7

    .line 314
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 313
    invoke-virtual {p0, p1, v7, v4, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 317
    :cond_7
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 319
    if-eq v0, v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 320
    :cond_8
    invoke-virtual {p1, v5, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_0

    .line 323
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v0

    .line 327
    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_a

    move v0, v3

    .line 332
    :goto_5
    if-eqz v0, :cond_b

    .line 333
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 334
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 337
    :goto_6
    invoke-virtual {p1, v5, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setTranslateHeader(II)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 327
    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    sget v1, Lcom/meizu/common/R$layout;->mc_pinned_header_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_0
    return-object v1
.end method

.method protected ensureCacheValid()V
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCacheValid:Z

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->ensureCacheValid()V

    .line 470
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureSectionHeaders()V

    goto :goto_0
.end method

.method protected getDataPosition(II)I
    .locals 3

    .prologue
    .line 554
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 557
    const/4 v1, -0x1

    .line 570
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p2, v0

    .line 561
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 565
    add-int/lit8 v1, v1, -0x1

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getDataPosition(II)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method protected getItemBackgroundType(II)I
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 402
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_e

    .line 404
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isHeaderView(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, v0, v5

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 406
    if-ne v0, v2, :cond_0

    move v0, v1

    .line 459
    :goto_0
    return v0

    .line 408
    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    .line 409
    goto :goto_0

    .line 410
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    move v0, v3

    .line 411
    goto :goto_0

    :cond_2
    move v0, v4

    .line 413
    goto :goto_0

    .line 418
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, v0, v5

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 420
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int/2addr v5, v0

    .line 421
    if-ne v0, v2, :cond_4

    move v0, v1

    .line 422
    goto :goto_0

    .line 423
    :cond_4
    if-ne p2, v5, :cond_5

    move v0, v2

    .line 424
    goto :goto_0

    .line 425
    :cond_5
    sub-int v1, p2, v5

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_6

    move v0, v3

    .line 426
    goto :goto_0

    :cond_6
    move v0, v4

    .line 428
    goto :goto_0

    .line 432
    :cond_7
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 433
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v5

    .line 435
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_8

    .line 436
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getCountForPartition(I)I

    move-result v0

    .line 441
    :goto_1
    iget-boolean v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v6, :cond_a

    .line 443
    if-ne p2, v5, :cond_9

    .line 444
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v0

    goto :goto_1

    .line 446
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 449
    :cond_a
    if-ne p2, v5, :cond_b

    sub-int v6, v0, v5

    if-ne v6, v2, :cond_b

    move v0, v1

    .line 450
    goto :goto_0

    .line 451
    :cond_b
    if-ne p2, v5, :cond_c

    move v0, v2

    .line 452
    goto :goto_0

    .line 453
    :cond_c
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_d

    move v0, v3

    .line 454
    goto :goto_0

    :cond_d
    move v0, v4

    .line 456
    goto :goto_0

    .line 459
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getItemBackgroundType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-static {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 397
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;I)I

    .line 381
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v3

    .line 383
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 385
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 391
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->lastInSection:Z

    .line 397
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-object v4, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 391
    goto :goto_2

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 394
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->lastInSection:Z

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-object v4, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method protected getItemViewType(II)I
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 515
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 521
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    .line 248
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_1

    .line 176
    const/4 v0, -0x1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    if-gez p1, :cond_2

    move v0, v1

    .line 180
    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 184
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v0, v2

    .line 185
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 186
    :goto_1
    if-ge v1, p1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 202
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isFooterView(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p1, v1

    .line 213
    if-ltz v1, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt v2, p1, :cond_5

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0

    .line 223
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 593
    if-eqz p3, :cond_0

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 597
    return-object p3

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 579
    if-ltz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 581
    invoke-virtual {p0, p3, v0, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 537
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isEnabled(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 610
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 611
    sget v1, Lcom/meizu/common/R$layout;->mc_pinned_group_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIndexedPartition(I)V
    .locals 1

    .prologue
    .line 130
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 131
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->invalidate()V

    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 115
    return-void
.end method

.method public showSectionHeaders(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    .line 74
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 75
    return-void
.end method
