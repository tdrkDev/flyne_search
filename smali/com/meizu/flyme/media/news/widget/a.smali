.class Lcom/meizu/flyme/media/news/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/widget/a$b;,
        Lcom/meizu/flyme/media/news/widget/a$d;,
        Lcom/meizu/flyme/media/news/widget/a$a;,
        Lcom/meizu/flyme/media/news/widget/a$c;
    }
.end annotation


# static fields
.field static final a:Lcom/meizu/flyme/media/news/protocol/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/meizu/flyme/media/news/widget/a;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/widget/a;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/widget/a;->a:Lcom/meizu/flyme/media/news/protocol/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    instance-of v0, p1, Lcom/meizu/flyme/media/news/widget/a$c;

    if-eqz v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expect AndroidWebView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/View;JLcom/meizu/flyme/media/news/protocol/e;)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/widget/a;->a(Landroid/view/View;)V

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 151
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    new-instance v0, Lcom/meizu/flyme/media/news/widget/a$a;

    invoke-direct {v0, p4}, Lcom/meizu/flyme/media/news/widget/a$a;-><init>(Lcom/meizu/flyme/media/news/protocol/e;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    .line 153
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/meizu/flyme/media/news/widget/b;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/widget/a;->a(Landroid/view/View;)V

    .line 139
    if-nez p2, :cond_0

    .line 140
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    new-instance v0, Lcom/meizu/flyme/media/news/widget/a$b;

    invoke-direct {v0, p2}, Lcom/meizu/flyme/media/news/widget/a$b;-><init>(Lcom/meizu/flyme/media/news/widget/b;)V

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/meizu/flyme/media/news/widget/c;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/widget/a;->a(Landroid/view/View;)V

    .line 128
    if-nez p2, :cond_0

    .line 129
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    new-instance v0, Lcom/meizu/flyme/media/news/widget/a$d;

    invoke-direct {v0, p2}, Lcom/meizu/flyme/media/news/widget/a$d;-><init>(Lcom/meizu/flyme/media/news/widget/c;)V

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/widget/a;->a(Landroid/view/View;)V

    .line 110
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    invoke-virtual {p1, p2}, Lcom/meizu/flyme/media/news/widget/a$c;->loadUrl(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 40
    new-instance v0, Lcom/meizu/flyme/media/news/widget/a$c;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/media/news/widget/a$c;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, v6}, Lcom/meizu/flyme/media/news/widget/a$c;->setWillNotDraw(Z)V

    .line 42
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/widget/a$c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 46
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/widget/a$c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "webCache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 50
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 52
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 53
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 55
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 57
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 60
    :cond_0
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 61
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 62
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 65
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 68
    :cond_1
    invoke-virtual {v0, v5}, Lcom/meizu/flyme/media/news/widget/a$c;->setOverScrollMode(I)V

    .line 69
    invoke-virtual {v0, v6}, Lcom/meizu/flyme/media/news/widget/a$c;->setScrollBarStyle(I)V

    .line 70
    invoke-virtual {v0, v5}, Lcom/meizu/flyme/media/news/widget/a$c;->setScrollbarFadingEnabled(Z)V

    .line 71
    invoke-virtual {v0, v5}, Lcom/meizu/flyme/media/news/widget/a$c;->setFocusableInTouchMode(Z)V

    .line 73
    return-object v0
.end method

.method public onDestroyView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    check-cast p1, Lcom/meizu/flyme/media/news/widget/a$c;

    .line 79
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 81
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-virtual {p1, v2}, Lcom/meizu/flyme/media/news/widget/a$c;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    invoke-virtual {p1, v2}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    invoke-virtual {p1, v2}, Lcom/meizu/flyme/media/news/widget/a$c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 89
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->clearHistory()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->clearCache(Z)V

    .line 96
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Lcom/meizu/flyme/media/news/widget/a$c;->loadUrl(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->onPause()V

    .line 99
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->removeAllViews()V

    .line 100
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->destroyDrawingCache()V

    .line 103
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/widget/a$c;->destroy()V

    .line 104
    return-void
.end method
