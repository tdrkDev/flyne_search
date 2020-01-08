.class Lcom/meizu/flyme/media/news/lite/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/b$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/b$1;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/b$1;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/lite/b$1;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/media/news/lite/b;->notifyItemRemoved(I)V

    .line 340
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$1$1;->a:Lcom/meizu/flyme/media/news/lite/b$1;

    iget-object v1, v1, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/meizu/flyme/media/news/lite/b;->notifyItemRangeChanged(II)V

    .line 342
    :cond_0
    return-void
.end method
