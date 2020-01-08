.class public Lcom/meizu/flyme/media/news/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/bumptech/glide/d/d;


# direct methods
.method public static a()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/meizu/flyme/media/news/a/f;->a:Lcom/bumptech/glide/d/d;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_color_placeholder:I

    .line 30
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(I)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/f;->a:Lcom/bumptech/glide/d/d;

    .line 33
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/f;->a:Lcom/bumptech/glide/d/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->f()V

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/flyme/media/news/a/f$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/a/f$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p2}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/meizu/flyme/media/news/a/f;->a()Lcom/bumptech/glide/d/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->b(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/i;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/i;->a(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;

    .line 45
    return-void
.end method
