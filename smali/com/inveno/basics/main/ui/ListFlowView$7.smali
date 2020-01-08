.class Lcom/inveno/basics/main/ui/ListFlowView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/basics/main/a/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/ui/ListFlowView;->j()V
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
    .line 472
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->h(Lcom/inveno/basics/main/ui/ListFlowView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 481
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 482
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 483
    new-instance v1, Lcom/inveno/basics/c/a;

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v3}, Lcom/inveno/basics/main/ui/ListFlowView;->g(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/inveno/basics/c/a;-><init>(Lcom/inveno/nxadsdk/model/NativeAd;Landroid/content/Context;Lcom/inveno/basics/main/a;)V

    .line 484
    invoke-virtual {v1}, Lcom/inveno/basics/c/a;->a()V

    .line 490
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;J)J

    goto :goto_0

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$7;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1, v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNewsinfo;)V

    goto :goto_1
.end method
