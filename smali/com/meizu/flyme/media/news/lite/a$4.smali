.class Lcom/meizu/flyme/media/news/lite/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$4;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$4;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/meizu/flyme/media/news/lite/b;->a(I)Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_0

    .line 184
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a$4;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/a;->b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$4;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v2

    add-int/lit8 v4, p3, 0x1

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/a$4;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v5}, Lcom/meizu/flyme/media/news/lite/a;->d(Lcom/meizu/flyme/media/news/lite/a;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f;->b(ILandroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)Z

    .line 186
    :cond_0
    return-void
.end method
