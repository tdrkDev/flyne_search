.class public abstract Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;
    }
.end annotation


# instance fields
.field private mCurrentfirstVisibleItem:I

.field private mRecordSp:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mRecordSp:Landroid/util/SparseArray;

    return-void
.end method

.method private getScrollY()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    move v1, v0

    move v2, v0

    .line 47
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mCurrentfirstVisibleItem:I

    if-ge v1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mRecordSp:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget v0, v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;->height:I

    add-int/2addr v2, v0

    .line 47
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mRecordSp:Landroid/util/SparseArray;

    iget v1, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mCurrentfirstVisibleItem:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;

    .line 54
    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;-><init>(Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$1;)V

    .line 57
    :cond_2
    iget v0, v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;->top:I

    sub-int v0, v2, v0

    return v0
.end method


# virtual methods
.method public abstract onHideBackTopButton()V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 23
    iput p2, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mCurrentfirstVisibleItem:I

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mRecordSp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;-><init>(Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$1;)V

    .line 31
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;->height:I

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener$ItemRecod;->top:I

    .line 33
    iget-object v1, p0, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->mRecordSp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->getScrollY()I

    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 37
    if-lt v0, v1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->onShowBackTopButton()V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/listeners/MzListViewDefaultScrollListener;->onHideBackTopButton()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public abstract onShowBackTopButton()V
.end method
