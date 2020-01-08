.class Lcom/meizu/flyme/media/news/lite/f$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)V
    .locals 0

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$19;->e:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/flyme/media/news/lite/f$19;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iput p4, p0, Lcom/meizu/flyme/media/news/lite/f$19;->c:I

    iput p5, p0, Lcom/meizu/flyme/media/news/lite/f$19;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2298
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$19;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$19;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f$19;->c:I

    iget v3, p0, Lcom/meizu/flyme/media/news/lite/f$19;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/lite/j;->a(Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Lcom/meizu/flyme/media/news/lite/e;

    move-result-object v0

    .line 2299
    invoke-static {v0}, Lcom/meizu/flyme/media/news/base/c;->a(Lcom/meizu/flyme/media/news/base/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :goto_0
    return-void

    .line 2300
    :catch_0
    move-exception v0

    .line 2301
    const-string v1, "NewsFullManager"

    const-string v2, "onReportNgFeedback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
