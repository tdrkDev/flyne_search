.class public Lcom/inveno/basics/ui/NoNetWorkView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/inveno/basics/ui/NoNetWorkView;->a:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/inveno/basics/ui/NoNetWorkView;->a()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/inveno/basics/ui/NoNetWorkView;->a:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/inveno/basics/ui/NoNetWorkView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lcom/inveno/basics/ui/NoNetWorkView;->a:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/inveno/basics/ui/NoNetWorkView;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inveno/basics/ui/NoNetWorkView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_nonetwork:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/basics/ui/NoNetWorkView;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method
