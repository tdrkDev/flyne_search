.class Lcom/meizu/flyme/media/news/lite/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

.field final synthetic b:I

.field final synthetic c:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$2;->c:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$2;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iput p3, p0, Lcom/meizu/flyme/media/news/lite/f$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 804
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$2;->c:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$2;->c:Lcom/meizu/flyme/media/news/lite/f;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/f;->d(Lcom/meizu/flyme/media/news/lite/f;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$2;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-static {v0, v2, v3, v1}, Lcom/meizu/flyme/media/news/lite/f;->b(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    .line 805
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$2;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->setExposed(Z)V

    .line 806
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f$2;->b:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$2;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/d;->a(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    .line 807
    return-void
.end method
