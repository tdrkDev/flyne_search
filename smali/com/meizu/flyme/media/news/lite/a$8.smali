.class Lcom/meizu/flyme/media/news/lite/a$8;
.super Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 407
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/a$8;->a:I

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    .line 408
    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/lite/a;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    .line 409
    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    .line 410
    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->e(Lcom/meizu/flyme/media/news/lite/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    iget-object v2, v2, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->c(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 413
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->e(Lcom/meizu/flyme/media/news/lite/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    :cond_0
    return-void
.end method

.method public onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 420
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->b:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->j(Lcom/meizu/flyme/media/news/lite/a;)Lflyme/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/a$8;->a:I

    .line 421
    return-void
.end method
