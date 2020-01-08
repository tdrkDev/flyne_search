.class Lcom/inveno/basics/main/ui/ListFlowView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/nxadsdk/b/a;


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
    .line 577
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 581
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load config onSuccess   adConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 585
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/c/d;->a(Landroid/content/Context;)Lcom/inveno/basics/c/d;

    move-result-object v0

    const-string v1, "0x010100"

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v2}, Lcom/inveno/basics/main/ui/ListFlowView;->l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v3}, Lcom/inveno/basics/main/ui/ListFlowView;->n(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/nxadsdk/b/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inveno/basics/c/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    .line 588
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 593
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$2;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 594
    return-void
.end method
