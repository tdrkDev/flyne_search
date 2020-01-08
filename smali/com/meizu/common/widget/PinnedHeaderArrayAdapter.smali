.class public abstract Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.super Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/MultiArrayPartitionAdapter",
        "<TT;>;",
        "Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;"
    }
.end annotation


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 0
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
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v0, :cond_1

    .line 162
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionCount()I

    move-result v5

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    array-length v0, v0

    if-eq v0, v5, :cond_3

    .line 99
    :cond_2
    new-array v0, v5, [Z

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    :cond_3
    move v0, v4

    .line 101
    :goto_0
    if-ge v0, v5, :cond_5

    .line 102
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aput-boolean v1, v2, v0

    .line 104
    if-nez v1, :cond_4

    .line 105
    invoke-virtual {p1, v0, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v8

    move v2, v4

    move v0, v4

    move v1, v7

    .line 114
    :goto_1
    if-ge v2, v5, :cond_6

    .line 115
    iget-object v6, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_a

    .line 116
    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v6

    sub-int/2addr v6, v8

    .line 117
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 118
    if-le v2, v6, :cond_9

    .line 131
    :cond_6
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v9

    move v0, v5

    move v6, v5

    move v5, v4

    .line 132
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-le v2, v1, :cond_7

    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_d

    .line 134
    sub-int v0, v9, v5

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v0

    sub-int/2addr v0, v8

    .line 136
    if-gez v0, :cond_b

    .line 157
    :cond_7
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-ge v0, v6, :cond_0

    .line 158
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_8

    .line 159
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPartitionEmpty(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 157
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 122
    :cond_9
    invoke-virtual {p1, v2, v0, v4}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 123
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 114
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    :cond_b
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 141
    if-eq v10, v7, :cond_7

    if-le v2, v10, :cond_7

    .line 145
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v6

    .line 146
    add-int/2addr v5, v6

    .line 149
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 150
    if-ge v0, v6, :cond_c

    move v0, v3

    .line 151
    :goto_4
    sub-int v6, v9, v5

    invoke-virtual {p1, v2, v6, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    move v0, v2

    move v6, v2

    .line 153
    goto :goto_2

    :cond_c
    move v0, v4

    .line 150
    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_2
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionCount()I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 85
    :goto_1
    return-object p2

    :cond_1
    move-object p2, v1

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPartitionEmpty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 45
    return-void
.end method
