.class Lcom/inveno/basics/main/ui/ListFlowView$3;
.super Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/ui/ListFlowView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/basics/main/ui/ListFlowView;


# direct methods
.method constructor <init>(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 316
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 318
    if-nez p2, :cond_0

    .line 320
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 321
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    .line 324
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->f(Lcom/inveno/basics/main/ui/ListFlowView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 331
    :cond_0
    return-void
.end method

.method public onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 337
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 340
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 341
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    .line 343
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    if-lez p3, :cond_4

    .line 345
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->f(Lcom/inveno/basics/main/ui/ListFlowView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 356
    :cond_0
    :goto_0
    if-lez p3, :cond_3

    .line 357
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 358
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 359
    const/4 v1, 0x0

    .line 360
    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v4}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v4}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inveno/basics/main/ui/a;->b()I

    move-result v4

    if-lez v4, :cond_1

    .line 361
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/basics/main/ui/a;->b()I

    move-result v1

    .line 363
    :cond_1
    sub-int v1, v2, v1

    .line 364
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    if-ltz v1, :cond_3

    .line 365
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/ZZNewsinfo;

    .line 366
    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v3

    .line 367
    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    :cond_2
    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_3

    .line 372
    check-cast v1, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 374
    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->m()Z

    move-result v3

    if-nez v3, :cond_3

    .line 376
    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/nxadsdk/model/NativeAd;->b(Landroid/content/Context;)V

    .line 390
    :cond_3
    return-void

    .line 348
    :cond_4
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->g(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$3;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->g(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/inveno/basics/main/a;->b(Z)V

    goto/16 :goto_0
.end method
