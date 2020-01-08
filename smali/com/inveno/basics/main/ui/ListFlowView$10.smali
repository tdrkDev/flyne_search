.class Lcom/inveno/basics/main/ui/ListFlowView$10;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/nxadsdk/b/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/basics/main/ui/ListFlowView;


# direct methods
.method constructor <init>(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 555
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/inveno/basics/main/ui/ListFlowView$10;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 570
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad  onFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 573
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 574
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    const-string v0, "RegularAdBiz"

    const-string v1, "load ad    onSuccess"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, p1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 563
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 564
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$10;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 565
    return-void
.end method
