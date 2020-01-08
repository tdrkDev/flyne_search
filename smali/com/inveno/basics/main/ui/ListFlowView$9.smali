.class Lcom/inveno/basics/main/ui/ListFlowView$9;
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
    .line 537
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Lcom/inveno/se/callback/ZZReuqestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inveno/se/model/ZZNews;Z)V
    .locals 2
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
    .line 548
    const-string v0, "\u641c\u7d22\u76f8\u5173\u8d44\u8baf\u6210\u529f"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 550
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, p1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNews;)Lcom/inveno/se/model/ZZNews;

    .line 551
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 552
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 540
    const-string v0, "\u641c\u7d22\u76f8\u5173\u8d44\u8baf\u5931\u8d25"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 543
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$9;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->k(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 544
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 537
    check-cast p1, Lcom/inveno/se/model/ZZNews;

    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/ui/ListFlowView$9;->a(Lcom/inveno/se/model/ZZNews;Z)V

    return-void
.end method
