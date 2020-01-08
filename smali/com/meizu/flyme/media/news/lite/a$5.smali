.class Lcom/meizu/flyme/media/news/lite/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/flyme/media/news/protocol/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->d(Lcom/meizu/flyme/media/news/lite/a;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-ne p1, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/lite/a;)V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->b(I)V

    .line 233
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;II)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/flyme/media/news/lite/a$5;->a(Ljava/util/List;Ljava/lang/Throwable;II)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Throwable;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;",
            "Ljava/lang/Throwable;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->d(Lcom/meizu/flyme/media/news/lite/a;)I

    move-result v0

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->e(Lcom/meizu/flyme/media/news/lite/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/meizu/flyme/media/news/lite/b;->b(I)V

    .line 247
    if-ne p3, v4, :cond_2

    .line 248
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->f(Lcom/meizu/flyme/media/news/lite/a;)V

    .line 249
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->g(Lcom/meizu/flyme/media/news/lite/a;)V

    .line 250
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "NewsFlowViewDelegate"

    const-string v1, "registerNightModeChangeReceiver"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/b;->b(Landroid/content/Context;)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0, v4}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/lite/a;Z)V

    .line 257
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_9

    .line 258
    :cond_3
    if-eq p3, v6, :cond_4

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->h(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->h(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/protocol/a;

    move-result-object v0

    invoke-interface {v0, v3, p3}, Lcom/meizu/flyme/media/news/protocol/a;->a(II)V

    .line 262
    :cond_4
    if-ne p3, v5, :cond_7

    .line 263
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->i(Lcom/meizu/flyme/media/news/lite/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/meizu/flyme/media/news/lite/b;->b(I)V

    .line 265
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0, v4}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;Z)Z

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 266
    :cond_5
    if-eqz p2, :cond_6

    check-cast p2, Lcom/meizu/flyme/media/news/helper/NewsException;

    iget v0, p2, Lcom/meizu/flyme/media/news/helper/NewsException;->code:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_6

    .line 267
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/meizu/flyme/media/news/lite/b;->b(I)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/meizu/flyme/media/news/lite/b;->b(I)V

    goto :goto_1

    .line 273
    :cond_7
    if-ne p3, v7, :cond_0

    .line 274
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->i(Lcom/meizu/flyme/media/news/lite/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 275
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 277
    :cond_8
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0, v3}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;Z)Z

    .line 287
    if-eq p3, v6, :cond_a

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->h(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->h(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/protocol/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/meizu/flyme/media/news/protocol/a;->a(II)V

    .line 292
    :cond_a
    if-ne p3, v5, :cond_b

    .line 293
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/meizu/flyme/media/news/lite/b;->b(Z)V

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/media/news/lite/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 295
    :cond_b
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$5;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/lite/b;->b(Z)V

    goto :goto_2
.end method
