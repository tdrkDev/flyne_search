.class Lcom/meizu/flyme/media/news/lite/f$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/i;

.field final synthetic e:Lcom/meizu/flyme/media/news/lite/f$b;

.field final synthetic f:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Ljava/util/List;JILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 1

    .prologue
    .line 607
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$25;->f:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$25;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/meizu/flyme/media/news/lite/f$25;->b:J

    iput p5, p0, Lcom/meizu/flyme/media/news/lite/f$25;->c:I

    iput-object p6, p0, Lcom/meizu/flyme/media/news/lite/f$25;->d:Lcom/meizu/flyme/media/news/lite/i;

    iput-object p7, p0, Lcom/meizu/flyme/media/news/lite/f$25;->e:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 610
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$25;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$25;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 612
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$25;->f:Lcom/meizu/flyme/media/news/lite/f;

    iget-wide v4, p0, Lcom/meizu/flyme/media/news/lite/f$25;->b:J

    invoke-static {v2, v4, v5, v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$25;->f:Lcom/meizu/flyme/media/news/lite/f;

    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f$25;->c:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/f$25;->d:Lcom/meizu/flyme/media/news/lite/i;

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$25;->e:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 616
    return-void
.end method
