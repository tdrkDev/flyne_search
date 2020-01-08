.class Lcom/inveno/basics/main/ui/ListFlowView$8;
.super Lcom/inveno/se/callback/ZZReuqestListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/ui/ListFlowView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/callback/ZZReuqestListener",
        "<",
        "Lcom/inveno/se/model/ZZNews",
        "<",
        "Lcom/inveno/se/model/ZZNewsinfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/basics/main/ui/ListFlowView;


# direct methods
.method constructor <init>(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Lcom/inveno/se/callback/ZZReuqestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inveno/se/model/ZZNews;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    return-void
.end method

.method public a(Lcom/inveno/se/model/ZZNews;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 511
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, p1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNews;)Lcom/inveno/se/model/ZZNews;

    .line 513
    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNews;->getUpack()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    const-string v1, "regular_ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNews;->getUpack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   newAdConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1, v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->m(Lcom/inveno/basics/main/ui/ListFlowView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 524
    const-string v0, "RegularAdBiz"

    const-string v1, "load  news  onSuccess  start load ad"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/c/d;->a(Landroid/content/Context;)Lcom/inveno/basics/c/d;

    move-result-object v0

    const-string v1, "0x010100"

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v3}, Lcom/inveno/basics/main/ui/ListFlowView;->n(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/nxadsdk/b/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inveno/basics/c/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 529
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const-string v1, "defalut"

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62c9\u53d6\u6570\u636e\u5931\u8d25 \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 504
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 505
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$8;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 506
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Lcom/inveno/se/model/ZZNews;

    invoke-virtual {p0, p1}, Lcom/inveno/basics/main/ui/ListFlowView$8;->a(Lcom/inveno/se/model/ZZNews;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Lcom/inveno/se/model/ZZNews;

    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/ui/ListFlowView$8;->a(Lcom/inveno/se/model/ZZNews;Z)V

    return-void
.end method
