.class Lcom/inveno/basics/main/ui/ListFlowView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 261
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/LinearLayoutManager;

    .line 267
    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 270
    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/basics/main/ui/a;->b()I

    move-result v2

    if-lez v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/basics/main/ui/a;->b()I

    move-result v2

    move v3, v2

    .line 273
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 274
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    move v2, v1

    .line 275
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 276
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/ZZNewsinfo;

    .line 277
    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v6

    .line 278
    const-string v7, "-1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    add-int v7, v2, v3

    if-le v6, v7, :cond_1

    .line 280
    :cond_0
    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_1

    .line 282
    check-cast v1, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 284
    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->m()Z

    move-result v6

    if-nez v6, :cond_1

    .line 286
    add-int v6, v2, v3

    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 288
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v8}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    if-ge v7, v6, :cond_1

    .line 290
    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView$1;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v6}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/inveno/nxadsdk/model/NativeAd;->b(Landroid/content/Context;)V

    .line 292
    const-string v6, "zte_listflowview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onGlobalLayout      i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nativeAd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    sub-int v1, v5, v3

    if-ne v2, v1, :cond_3

    .line 307
    :cond_2
    return-void

    .line 275
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_4
    move v3, v1

    goto/16 :goto_0
.end method
