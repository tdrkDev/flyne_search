.class final Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;
.super Lcom/meizu/flyme/media/news/widget/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/widget/b;

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
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/b;Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V
    .locals 1
    .param p1    # Lcom/meizu/flyme/media/news/widget/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/widget/b;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->b:Ljava/lang/ref/WeakReference;

    .line 267
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    .line 272
    if-eqz v0, :cond_0

    const/16 v1, 0x50

    if-le p2, v1, :cond_0

    .line 273
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;I)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;->a:Lcom/meizu/flyme/media/news/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
