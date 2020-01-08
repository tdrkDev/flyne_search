.class Lcom/meizu/flyme/media/news/lite/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Landroid/content/Intent;
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
    .line 979
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$3;->c:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$3;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iput p3, p0, Lcom/meizu/flyme/media/news/lite/f$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 983
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$3;->c:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$3;->c:Lcom/meizu/flyme/media/news/lite/f;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/f;->d(Lcom/meizu/flyme/media/news/lite/f;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$3;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-static {v0, v2, v3, v1}, Lcom/meizu/flyme/media/news/lite/f;->c(Lcom/meizu/flyme/media/news/lite/f;JLcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    .line 985
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f$3;->b:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$3;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/lite/d;->b(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V

    .line 986
    return-void
.end method
