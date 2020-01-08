.class Lcom/meizu/flyme/media/news/lite/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/b;->a(Lcom/meizu/flyme/media/news/lite/b$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/b$b;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

.field final synthetic c:I

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/b;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/b;Lcom/meizu/flyme/media/news/lite/b$b;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/b$1;->a:Lcom/meizu/flyme/media/news/lite/b$b;

    iput-object p3, p0, Lcom/meizu/flyme/media/news/lite/b$1;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iput p4, p0, Lcom/meizu/flyme/media/news/lite/b$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 334
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/b;->a(Lcom/meizu/flyme/media/news/lite/b;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/b$1;->a:Lcom/meizu/flyme/media/news/lite/b$b;

    iget-object v3, v3, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/b$1;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v4}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/b$1;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iget v6, p0, Lcom/meizu/flyme/media/news/lite/b$1;->c:I

    new-instance v7, Lcom/meizu/flyme/media/news/lite/b$1$1;

    invoke-direct {v7, p0}, Lcom/meizu/flyme/media/news/lite/b$1$1;-><init>(Lcom/meizu/flyme/media/news/lite/b$1;)V

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/flyme/media/news/lite/f;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;ILcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;)V

    .line 344
    return-void
.end method
