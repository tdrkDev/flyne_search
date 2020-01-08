.class public Lcom/inveno/basics/main/a/a$b;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/basics/main/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Lcom/inveno/basics/main/a/a;


# direct methods
.method public constructor <init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/inveno/basics/main/a/a$b;->f:Lcom/inveno/basics/main/a/a;

    .line 253
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 254
    sget v0, Lcom/inveno/basics/R$id;->item_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$b;->a:Landroid/widget/RelativeLayout;

    .line 255
    sget v0, Lcom/inveno/basics/R$id;->item_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$b;->b:Landroid/widget/ImageView;

    .line 256
    sget v0, Lcom/inveno/basics/R$id;->item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$b;->c:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/inveno/basics/R$id;->item_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$b;->e:Landroid/widget/TextView;

    .line 258
    sget v0, Lcom/inveno/basics/R$id;->item_source:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$b;->d:Landroid/widget/TextView;

    .line 259
    return-void
.end method
