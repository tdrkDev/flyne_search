.class final Lcom/meizu/flyme/media/news/widget/a$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/widget/b;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/b;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/a$b;->a:Lcom/meizu/flyme/media/news/widget/b;

    .line 248
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$b;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;I)V

    .line 253
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$b;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 263
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$b;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 258
    return-void
.end method
