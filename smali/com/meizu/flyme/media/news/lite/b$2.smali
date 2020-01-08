.class Lcom/meizu/flyme/media/news/lite/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/api/a;

.field final synthetic b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/b;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/b;Lcom/meizu/advertise/api/a;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/b$2;->a:Lcom/meizu/advertise/api/a;

    iput-object p3, p0, Lcom/meizu/flyme/media/news/lite/b$2;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iput-object p4, p0, Lcom/meizu/flyme/media/news/lite/b$2;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 624
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b$2;->a:Lcom/meizu/advertise/api/a;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/b$2;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/advertise/api/a;I)V

    .line 625
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 629
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b$2;->a:Lcom/meizu/advertise/api/a;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/b$2;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/lite/f;->b(ILcom/meizu/advertise/api/a;I)V

    .line 630
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 634
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v0

    .line 635
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 637
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/b;->d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->e(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 640
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 641
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->e(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 647
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->notifyDataSetChanged()V

    .line 655
    :cond_0
    :goto_1
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/b;->e(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/lite/b;->d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$2;->b:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 650
    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 652
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$2;->d:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/b;->notifyDataSetChanged()V

    goto :goto_1
.end method
