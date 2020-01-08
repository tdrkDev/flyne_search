.class Lcom/inveno/basics/main/ui/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inveno/basics/main/ui/b;


# direct methods
.method constructor <init>(Lcom/inveno/basics/main/ui/b;I)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/inveno/basics/main/ui/b$1;->b:Lcom/inveno/basics/main/ui/b;

    iput p2, p0, Lcom/inveno/basics/main/ui/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b$1;->b:Lcom/inveno/basics/main/ui/b;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b;)Lcom/inveno/basics/main/ui/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b$1;->b:Lcom/inveno/basics/main/ui/b;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b;)Lcom/inveno/basics/main/ui/b$e;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/ui/b$1;->a:I

    invoke-interface {v0, p1, v1}, Lcom/inveno/basics/main/ui/b$e;->a(Landroid/view/View;I)V

    .line 326
    :cond_0
    return-void
.end method
