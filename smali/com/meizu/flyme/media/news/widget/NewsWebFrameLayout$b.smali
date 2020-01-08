.class final Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;
.super Lcom/meizu/flyme/media/news/widget/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/widget/c;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/c;Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V
    .locals 1
    .param p1    # Lcom/meizu/flyme/media/news/widget/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/widget/c;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->b:Ljava/lang/ref/WeakReference;

    .line 184
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    .line 197
    if-eqz v0, :cond_0

    .line 198
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V

    .line 199
    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->a(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;->a:Lcom/meizu/flyme/media/news/widget/c;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/c;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 227
    return-void
.end method
