.class public Lcom/meizu/advertise/widget/ProgressWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/widget/ProgressWebView$a;,
        Lcom/meizu/advertise/widget/ProgressWebView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setFocusable(Z)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setFocusableInTouchMode(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setVerticalScrollBarEnabled(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 39
    invoke-static {p1}, Lcom/meizu/advertise/c/g;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Landroid/widget/ProgressBar;

    const v2, 0x1010078

    invoke-direct {v1, p1, v6, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    .line 42
    iget-object v1, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v1, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    new-instance v0, Lcom/meizu/advertise/widget/ProgressWebView$b;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/widget/ProgressWebView$b;-><init>(Lcom/meizu/advertise/widget/ProgressWebView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 47
    new-instance v0, Lcom/meizu/advertise/widget/ProgressWebView$a;

    invoke-direct {v0, p0, v6}, Lcom/meizu/advertise/widget/ProgressWebView$a;-><init>(Lcom/meizu/advertise/widget/ProgressWebView;Lcom/meizu/advertise/widget/ProgressWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/meizu/advertise/widget/ProgressWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 78
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 79
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 80
    iget-object v1, p0, Lcom/meizu/advertise/widget/ProgressWebView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 83
    return-void
.end method
