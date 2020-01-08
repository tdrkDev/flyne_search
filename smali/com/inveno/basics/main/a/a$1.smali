.class Lcom/inveno/basics/main/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/basics/main/a/a;->a(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inveno/basics/main/a/a;


# direct methods
.method constructor <init>(Lcom/inveno/basics/main/a/a;I)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/inveno/basics/main/a/a$1;->b:Lcom/inveno/basics/main/a/a;

    iput p2, p0, Lcom/inveno/basics/main/a/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/inveno/basics/main/a/a$1;->b:Lcom/inveno/basics/main/a/a;

    invoke-static {v0}, Lcom/inveno/basics/main/a/a;->a(Lcom/inveno/basics/main/a/a;)Lcom/inveno/basics/main/a/a$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/inveno/basics/main/a/a$1;->b:Lcom/inveno/basics/main/a/a;

    invoke-static {v0}, Lcom/inveno/basics/main/a/a;->a(Lcom/inveno/basics/main/a/a;)Lcom/inveno/basics/main/a/a$g;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/a/a$1;->a:I

    invoke-interface {v0, p1, v1}, Lcom/inveno/basics/main/a/a$g;->a(Landroid/view/View;I)V

    .line 369
    :cond_0
    return-void
.end method
