.class public abstract Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


# instance fields
.field protected mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;[I)V"
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 40
    invoke-direct {p0, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartitions([I)V

    .line 41
    return-void

    .line 38
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private addPartitions([I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    move v0, v1

    .line 49
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 50
    aget v2, p1, v0

    invoke-virtual {p0, v1, v3, v2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(ZZI)I

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getPartitionForItemIndex(I)I

    move-result v0

    .line 80
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 81
    const-string v0, "lijinqian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException,object size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current item index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "![SingleArrayPartitionAdapter$addItem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 89
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 90
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 92
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 93
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZI)I
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;-><init>(ZZI)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "IITT;II)V"
        }
    .end annotation
.end method

.method public varargs changePartitions(Ljava/util/List;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[I)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 146
    iput-object p1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 148
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 150
    if-nez p2, :cond_0

    move v0, v1

    .line 151
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    :goto_1
    move v3, v1

    .line 153
    :goto_2
    if-ge v3, v2, :cond_2

    .line 154
    iget-object v4, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v3

    aget v5, p2, v3

    iput v5, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 150
    :cond_0
    array-length v0, p2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 151
    goto :goto_1

    .line 157
    :cond_2
    iget v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-le v3, v2, :cond_4

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 160
    iput v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 170
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 171
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 172
    return-void

    .line 161
    :cond_4
    if-le v0, v2, :cond_3

    .line 163
    sub-int v3, v0, v2

    move v0, v1

    .line 164
    :goto_3
    if-ge v0, v3, :cond_3

    .line 165
    add-int v4, v2, v0

    aget v4, p2, v4

    invoke-virtual {p0, v1, v6, v4}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(ZZI)I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public varargs changePartitions(Ljava/util/List;[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[",
            "Lcom/meizu/common/widget/BasePartitionAdapter$Partition;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 129
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->clearPartitions()V

    .line 131
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 132
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 133
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 137
    return-void
.end method

.method public getDataPosition(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->ensureCacheValid()V

    move v1, v0

    move v3, v0

    .line 189
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    .line 191
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 192
    sub-int v1, p1, v1

    .line 193
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_0

    .line 194
    add-int/lit8 v1, v1, -0x1

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v4, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v2, v4

    .line 198
    iget-object v4, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v1, v4, :cond_1

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v2, v0

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, v1, v0

    add-int/2addr v0, v3

    .line 204
    :goto_1
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v1, v3

    .line 189
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected getDataPosition(II)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    move v1, v0

    .line 216
    :goto_0
    if-ge v0, p1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v1, v2

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p2, v0

    add-int/2addr v0, v1

    .line 221
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 223
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different data source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "mObjects null"

    .line 224
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 225
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mObjects.size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 224
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 229
    :cond_2
    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getItemId(II)J
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 251
    const-wide/16 v0, 0x0

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getPartitionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    .prologue
    .line 260
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v2, :cond_0

    .line 261
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "the list is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v2

    .line 265
    iget-object v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 268
    if-nez p5, :cond_1

    .line 269
    iget-object v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 274
    :goto_0
    iget-object v9, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object v7, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v6

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v7 .. v14}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    .line 275
    return-object v8

    :cond_1
    move-object/from16 v8, p5

    .line 271
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;II",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public removeItem(I)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getPartitionForItemIndex(I)I

    move-result v0

    .line 104
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 105
    const-string v0, "lijinqian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException,object size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current item index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "![SingleArrayPartitionAdapter$removeItem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 113
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 114
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 116
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 117
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method
