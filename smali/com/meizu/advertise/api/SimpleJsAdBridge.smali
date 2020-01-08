.class public Lcom/meizu/advertise/api/SimpleJsAdBridge;
.super Lcom/meizu/advertise/api/JsAdBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/api/SimpleJsAdBridge$a;
    }
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/meizu/advertise/api/SimpleJsAdBridge$a;

    invoke-direct {v0, p2}, Lcom/meizu/advertise/api/SimpleJsAdBridge$a;-><init>(Landroid/webkit/WebView;)V

    invoke-direct {p0, p1, v0}, Lcom/meizu/advertise/api/JsAdBridge;-><init>(Landroid/content/Context;Lcom/meizu/advertise/api/i;)V

    .line 17
    const-string v0, "mzAd"

    invoke-virtual {p2, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/meizu/advertise/api/SimpleJsAdBridge;->mWebView:Landroid/webkit/WebView;

    .line 19
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/advertise/api/JsAdBridge;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public mzAdCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/meizu/advertise/api/JsAdBridge;->mzAdCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public mzAdCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/meizu/advertise/api/JsAdBridge;->mzAdCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/meizu/advertise/api/JsAdBridge;->release()V

    .line 42
    iget-object v0, p0, Lcom/meizu/advertise/api/SimpleJsAdBridge;->mWebView:Landroid/webkit/WebView;

    const-string v1, "mzAd"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/advertise/api/SimpleJsAdBridge;->mWebView:Landroid/webkit/WebView;

    .line 44
    return-void
.end method
