.class final Lcom/meizu/flyme/media/news/widget/a$d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/widget/c;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/c;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    .line 200
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 211
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 234
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 240
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$d;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0
.end method
