.class Lcom/inveno/basics/main/ui/ListFlowView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/basics/ui/RefreshHintView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/ui/ListFlowView;->i()V
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
    .line 453
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$6;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$6;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$6;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    .line 458
    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$6;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$6;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
