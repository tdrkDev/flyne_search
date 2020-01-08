.class Lcom/meizu/flyme/media/news/lite/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/l;->a(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/l;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/l;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 66
    if-nez p2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v2, "articleId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v2, "cpId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->b(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v2, "entityUniqId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->c(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v3, "contentType"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;I)I

    .line 71
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v3, "categoryId"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->b(Lcom/meizu/flyme/media/news/lite/l;I)I

    .line 72
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->e(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v2, "extend"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->f(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$2;->a:Landroid/net/Uri;

    const-string v3, "sdkChannelId"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/l;->c(Lcom/meizu/flyme/media/news/lite/l;I)I

    .line 76
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/l;->b(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/l;->c(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v0, v2, v3}, Lcom/meizu/flyme/media/news/lite/l;->a(Lcom/meizu/flyme/media/news/lite/l;D)D

    .line 80
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$2;->b:Lcom/meizu/flyme/media/news/lite/l;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/l;->d(Lcom/meizu/flyme/media/news/lite/l;)Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;)V

    .line 82
    :cond_1
    return-void
.end method
