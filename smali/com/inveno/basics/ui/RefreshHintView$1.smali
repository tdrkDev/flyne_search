.class Lcom/inveno/basics/ui/RefreshHintView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/ui/RefreshHintView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/basics/ui/RefreshHintView;


# direct methods
.method constructor <init>(Lcom/inveno/basics/ui/RefreshHintView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/inveno/basics/ui/RefreshHintView$1;->a:Lcom/inveno/basics/ui/RefreshHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView$1;->a:Lcom/inveno/basics/ui/RefreshHintView;

    iget v0, v0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView$1;->a:Lcom/inveno/basics/ui/RefreshHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 126
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView$1;->a:Lcom/inveno/basics/ui/RefreshHintView;

    invoke-static {v0}, Lcom/inveno/basics/ui/RefreshHintView;->a(Lcom/inveno/basics/ui/RefreshHintView;)Lcom/inveno/basics/ui/RefreshHintView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView$1;->a:Lcom/inveno/basics/ui/RefreshHintView;

    invoke-static {v0}, Lcom/inveno/basics/ui/RefreshHintView;->a(Lcom/inveno/basics/ui/RefreshHintView;)Lcom/inveno/basics/ui/RefreshHintView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inveno/basics/ui/RefreshHintView$a;->a()V

    .line 130
    :cond_0
    return-void
.end method
