.class Lcom/meizu/flyme/media/news/lite/f$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/i;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/f$b;

.field final synthetic c:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    iput-object p3, p0, Lcom/meizu/flyme/media/news/lite/f$24;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 540
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;)V

    .line 542
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;ILcom/meizu/flyme/media/news/lite/i;)V

    .line 544
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/f;)I

    move-result v2

    .line 549
    :goto_0
    const-string v0, "NewsFullManager"

    const-string v3, "firstCardArticles size=%d articleChannelId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v5}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    invoke-static {v3}, Lcom/meizu/flyme/media/news/lite/f;->c(Lcom/meizu/flyme/media/news/lite/f;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$24;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 551
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$24;->c:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$24;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v2

    goto :goto_0
.end method
