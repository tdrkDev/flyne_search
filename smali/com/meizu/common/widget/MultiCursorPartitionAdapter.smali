.class public abstract Lcom/meizu/common/widget/MultiCursorPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;)I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZLandroid/database/Cursor;)I
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;-><init>(ZZLandroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->addPartition(Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;)I

    move-result v0

    return v0
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->swapCursor(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_0
    return-void
.end method

.method public clearCursors()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v2

    .line 100
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 101
    iput v1, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->invalidate()V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public clearPartitions()V
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-ge v0, v1, :cond_1

    .line 84
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v1

    .line 85
    iget-object v2, v1, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 86
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-super {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->clearPartitions()V

    .line 92
    return-void
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPosition(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->ensureCacheValid()V

    move v1, v0

    .line 128
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 130
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 131
    sub-int v1, p1, v1

    .line 132
    iget-object v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v4, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v2, v4

    .line 137
    iget-object v4, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v1, v4, :cond_1

    if-ge v1, v2, :cond_1

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 148
    :goto_1
    return v0

    :cond_1
    move v0, v3

    .line 142
    goto :goto_1

    .line 128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v3

    .line 148
    goto :goto_1
.end method

.method protected getDataPosition(II)I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p2, v0

    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 253
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 262
    :cond_1
    :goto_0
    return-object v0

    .line 257
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v2

    .line 258
    if-ltz v2, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 259
    goto :goto_0
.end method

.method protected getItemId(II)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v2

    .line 270
    iget v3, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-wide v0

    .line 274
    :cond_1
    iget-object v3, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 275
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v4

    .line 280
    if-ltz v4, :cond_0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    iget v0, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    return-object v0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    .prologue
    .line 197
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v2

    iget-object v6, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 198
    if-nez v6, :cond_0

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the partition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cursor is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v2

    .line 203
    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_1
    if-nez p5, :cond_2

    .line 209
    iget-object v3, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mContext:Landroid/content/Context;

    move-object v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 214
    :goto_0
    iget-object v9, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mContext:Landroid/content/Context;

    move-object v7, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v6

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v7 .. v14}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V

    .line 215
    return-object v8

    :cond_2
    move-object/from16 v8, p5

    .line 211
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public removePartition(I)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 70
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 71
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->removePartition(I)V

    .line 76
    return-void
.end method

.method public swapCursor(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v2

    .line 177
    iget-object v1, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 178
    if-ne v1, p2, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iput-object p2, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 182
    if-eqz p2, :cond_2

    .line 183
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    .line 184
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_1
    iput v0, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    .line 188
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->invalidate()V

    .line 189
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->notifyDataSetChanged()V

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 186
    :cond_2
    iput v0, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    goto :goto_1
.end method
