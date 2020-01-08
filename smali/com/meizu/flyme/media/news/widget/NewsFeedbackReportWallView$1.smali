.class Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Ljava/lang/String;I)Landroid/support/v7/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    iput p2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    .line 89
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 90
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 105
    :cond_1
    return-void

    .line 89
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->b:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
