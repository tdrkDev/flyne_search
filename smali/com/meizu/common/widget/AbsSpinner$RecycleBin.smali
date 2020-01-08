.class Lcom/meizu/common/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/common/widget/AbsSpinner;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AbsSpinner;)V
    .locals 1

    .prologue
    .line 440
    iput-object p1, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->this$0:Lcom/meizu/common/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    .line 460
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 461
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 462
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 463
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iget-object v4, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->this$0:Lcom/meizu/common/widget/AbsSpinner;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/meizu/common/widget/AbsSpinner;->access$100(Lcom/meizu/common/widget/AbsSpinner;Landroid/view/View;Z)V

    .line 462
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 469
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 450
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 456
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    return-void
.end method
