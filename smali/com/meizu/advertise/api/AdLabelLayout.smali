.class public Lcom/meizu/advertise/api/AdLabelLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/advertise/c/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdLabelLayout;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdLabelLayout;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdLabelLayout;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/meizu/advertise/c/e;

    invoke-direct {v0, p1}, Lcom/meizu/advertise/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/advertise/api/AdLabelLayout;->a:Lcom/meizu/advertise/c/e;

    .line 42
    iget-object v0, p0, Lcom/meizu/advertise/api/AdLabelLayout;->a:Lcom/meizu/advertise/c/e;

    invoke-virtual {v0, p1, p0}, Lcom/meizu/advertise/c/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCloseView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/advertise/api/AdLabelLayout;->a:Lcom/meizu/advertise/c/e;

    invoke-virtual {v0}, Lcom/meizu/advertise/c/e;->b()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/advertise/api/AdLabelLayout;->a:Lcom/meizu/advertise/c/e;

    invoke-virtual {v0}, Lcom/meizu/advertise/c/e;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setOnCloseListener(Lcom/meizu/advertise/api/m;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/advertise/api/AdLabelLayout;->a:Lcom/meizu/advertise/c/e;

    invoke-virtual {v0, p1}, Lcom/meizu/advertise/c/e;->a(Lcom/meizu/advertise/api/m;)V

    .line 51
    return-void
.end method
