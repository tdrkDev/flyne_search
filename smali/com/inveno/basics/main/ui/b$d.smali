.class public Lcom/inveno/basics/main/ui/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/basics/main/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lcom/inveno/basics/main/ui/b;


# direct methods
.method public constructor <init>(Lcom/inveno/basics/main/ui/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lcom/inveno/basics/main/ui/b$d;->e:Lcom/inveno/basics/main/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    sget v0, Lcom/inveno/basics/R$id;->item_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b$d;->a:Landroid/widget/RelativeLayout;

    .line 256
    sget v0, Lcom/inveno/basics/R$id;->item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b$d;->b:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/inveno/basics/R$id;->item_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b$d;->d:Landroid/widget/TextView;

    .line 258
    sget v0, Lcom/inveno/basics/R$id;->item_source:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b$d;->c:Landroid/widget/TextView;

    .line 259
    return-void
.end method
