.class Lcom/inveno/basics/main/ui/ListFlowView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 399
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$4;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$4;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method
