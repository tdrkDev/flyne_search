.class public abstract Lcom/meizu/common/widget/BasePartitionAdapter;
.super Lcom/meizu/common/widget/AbsBasePartitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;,
        Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    }
.end annotation


# static fields
.field private static final CAPACITY_INCREMENT:I = 0xa

.field protected static final INITIAL_CAPACITY:I = 0xa

.field public static final ITEM_VIEW_TYPE_PARTITION_HEADER:I = 0x0

.field public static final PARTITION_FIRST_ITEM_BG_TYPE:I = 0x1

.field public static final PARTITION_HEADER_ITEM_BG_TYPE:I = 0x0

.field public static final PARTITION_LAST_ITEM_BG_TYPE:I = 0x3

.field public static final PARTITION_MIDDLE_ITEM_BG_TYPE:I = 0x2

.field public static final PARTITION_SINGLE_ITEM_BG_TYPE:I = 0x4


# instance fields
.field protected mCacheValid:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mItemCounts:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field protected mPartitionCount:I

.field protected mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 154
    iput-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 155
    new-array v0, p2, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 156
    return-void
.end method

.method private areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 694
    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 698
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 490
    :goto_0
    if-ge v2, v3, :cond_1

    .line 491
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 492
    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 493
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 495
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 496
    const/4 v0, 0x1

    .line 499
    :goto_1
    return v0

    .line 490
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 499
    goto :goto_1
.end method


# virtual methods
.method public addFooterView(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 537
    return-void
.end method

.method public addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 517
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 518
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 519
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 520
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 521
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 524
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 525
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 460
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 441
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 442
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 443
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 444
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 445
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 448
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 449
    return-void
.end method

.method protected addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 167
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v0, v0, 0xa

    .line 168
    new-array v0, v0, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 169
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    aput-object p1, v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 175
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 703
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_1

    .line 713
    :cond_0
    :goto_1
    return v1

    .line 708
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 709
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method protected canSelect(II)Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    return v0
.end method

.method public clearPartitions()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    .line 202
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 203
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 273
    iget-boolean v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    if-eqz v1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 277
    :cond_0
    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 278
    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 279
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 281
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 282
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 285
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 286
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    if-eqz v2, :cond_2

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 290
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 291
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method protected getBackgroundResource(I)I
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 846
    packed-switch p1, :pswitch_data_0

    .line 864
    :goto_0
    return v0

    .line 848
    :pswitch_0
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_top_shade_light:I

    goto :goto_0

    .line 852
    :pswitch_1
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_middle_shade_light:I

    goto :goto_0

    .line 856
    :pswitch_2
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_bottom_shade_light:I

    goto :goto_0

    .line 860
    :pswitch_3
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_full_shade_light:I

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 302
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    return v0
.end method

.method public getCountForPartition(I)I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    return v0
.end method

.method public getFooterViewsCount(I)I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 547
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    return v0
.end method

.method protected getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 927
    if-eqz p3, :cond_0

    .line 930
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 931
    return-object p3

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 929
    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/meizu/common/widget/BasePartitionAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public getHeaderViewsCount(I)I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 471
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 762
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_5

    .line 763
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 764
    if-lt p1, v1, :cond_4

    if-ge p1, v2, :cond_4

    .line 765
    sub-int v1, p1, v1

    .line 766
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 767
    add-int/lit8 v1, v1, -0x1

    .line 770
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v0, v3

    .line 784
    :goto_1
    return-object v0

    .line 772
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_1

    .line 774
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 775
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v2, v3

    .line 776
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_1

    .line 778
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 762
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 784
    goto :goto_1
.end method

.method protected abstract getItem(II)Ljava/lang/Object;
.end method

.method protected getItemBackgroundType(II)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 679
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 680
    const/4 v0, 0x0

    .line 688
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-ne v1, v0, :cond_2

    .line 682
    const/4 v0, 0x4

    goto :goto_0

    .line 683
    :cond_2
    if-eqz p2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_3

    .line 686
    const/4 v0, 0x3

    goto :goto_0

    .line 688
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 310
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    return v0
.end method

.method public getItemId(I)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 793
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_5

    .line 794
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 795
    if-lt p1, v1, :cond_4

    if-ge p1, v2, :cond_4

    .line 796
    sub-int v1, p1, v1

    .line 797
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 798
    add-int/lit8 v1, v1, -0x1

    .line 801
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-wide v0, v4

    .line 811
    :goto_1
    return-wide v0

    .line 803
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 804
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 806
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemId(II)J

    move-result-wide v0

    goto :goto_1

    .line 793
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_5
    move-wide v0, v4

    .line 811
    goto :goto_1
.end method

.method protected abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v0, v1

    move v2, v1

    .line 644
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v3, :cond_5

    .line 645
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v3, v2

    .line 646
    if-lt p1, v2, :cond_4

    if-ge p1, v3, :cond_4

    .line 647
    sub-int v2, p1, v2

    .line 648
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v3, :cond_0

    .line 649
    add-int/lit8 v2, v2, -0x1

    .line 652
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 657
    :goto_1
    return v1

    .line 654
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    :cond_2
    const/4 v1, -0x2

    goto :goto_1

    .line 657
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewType(II)I

    move-result v1

    goto :goto_1

    .line 644
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 663
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected getItemViewType(II)I
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 391
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 393
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 394
    sub-int v1, p1, v1

    .line 395
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v2, v0

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v0, :cond_2

    .line 396
    add-int/lit8 v0, v1, -0x1

    .line 398
    :goto_1
    return v0

    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 403
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    return v0
.end method

.method public getPartitionForItemIndex(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 354
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v2, v1

    .line 356
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 361
    :goto_1
    return v0

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getPartitionForPosition(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 372
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 374
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 379
    :goto_1
    return v0

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 379
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 414
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v1, :cond_0

    .line 415
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 420
    :goto_0
    if-ge v0, p1, :cond_1

    .line 421
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v1, v2

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return v1
.end method

.method protected abstract getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 879
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v0, v2

    .line 881
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v2, v1, :cond_5

    .line 882
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v1, v0

    .line 883
    if-lt p1, v0, :cond_4

    if-ge p1, v1, :cond_4

    .line 884
    sub-int v3, p1, v0

    .line 885
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v0, :cond_0

    .line 886
    add-int/lit8 v3, v3, -0x1

    .line 889
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemBackgroundType(II)I

    move-result v4

    .line 891
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 892
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 902
    :goto_1
    if-nez v0, :cond_6

    .line 903
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View should not be null, partition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    goto :goto_1

    .line 895
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, v1

    .line 897
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 899
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/BasePartitionAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 881
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto/16 :goto_0

    .line 919
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 914
    :cond_6
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    .line 266
    return-void
.end method

.method public isEnabled(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v0, v1

    move v2, v1

    .line 723
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v3, :cond_1

    .line 724
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v3, v2

    .line 725
    if-lt p1, v2, :cond_5

    if-ge p1, v3, :cond_5

    .line 726
    sub-int v2, p1, v2

    .line 727
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v3, :cond_0

    .line 728
    add-int/lit8 v2, v2, -0x1

    .line 731
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 747
    :cond_1
    :goto_1
    return v1

    .line 733
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 734
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    goto :goto_1

    .line 735
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 736
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v1, v3

    .line 737
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    goto :goto_1

    .line 738
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->canSelect(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isEnabled(II)Z

    move-result v1

    goto :goto_1

    .line 723
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    return v0
.end method

.method public isFooterView(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 603
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_2

    .line 604
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 605
    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 606
    sub-int v1, p1, v1

    .line 607
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 608
    add-int/lit8 v1, v1, -0x1

    .line 610
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    return v0

    .line 603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 615
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected isFooterView(II)Z
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderView(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 572
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 574
    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 575
    sub-int v1, p1, v1

    .line 576
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 577
    add-int/lit8 v1, v1, -0x1

    .line 579
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    return v0

    .line 572
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected isHeaderView(II)Z
    .locals 1

    .prologue
    .line 592
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartitionEmpty(I)Z
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 343
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowIfEmpty(I)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    return v0
.end method

.method public isTopHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 253
    if-gez v1, :cond_0

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    .line 835
    invoke-super {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;->notifyDataSetChanged()V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removeFooterView(ILandroid/view/View;)Z
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removeHeaderView(ILandroid/view/View;)Z
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removePartition(I)V
    .locals 4

    .prologue
    .line 185
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 193
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    .line 247
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 248
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 826
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 829
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    .line 232
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 233
    return-void
.end method

.method protected setViewBackground(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 874
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getBackgroundResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 875
    return-void
.end method
