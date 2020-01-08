.class public Lcom/meizu/advertise/widget/ProgressWebView$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/widget/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/widget/ProgressWebView;


# direct methods
.method public constructor <init>(Lcom/meizu/advertise/widget/ProgressWebView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 53
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-static {v0}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-static {v0}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 63
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-static {v0}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-static {v0}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/meizu/advertise/widget/ProgressWebView$b;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-static {v0}, Lcom/meizu/advertise/widget/ProgressWebView;->a(Lcom/meizu/advertise/widget/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
