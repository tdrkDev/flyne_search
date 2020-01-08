.class public Lcom/meizu/flyme/media/news/lite/h;
.super Lcom/meizu/flyme/media/news/base/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

.field private b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 27
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/base/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_full_activity_more_list:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/j;->a(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    const-string v1, "requestData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/i;

    .line 34
    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/i;->a(Z)V

    .line 39
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_content_container:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/flyme/media/news/lite/h;->b:Landroid/widget/FrameLayout;

    .line 40
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/h;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 41
    new-instance v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    invoke-direct {v1, p1, v0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;-><init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;)V

    iput-object v1, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    .line 42
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/h$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/h$1;-><init>(Lcom/meizu/flyme/media/news/lite/h;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a(Lcom/meizu/flyme/media/news/protocol/a;)V

    .line 48
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/h;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public f(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/b;->f(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/h;->a:Lcom/meizu/flyme/media/news/lite/NewsFlowView;

    .line 59
    :cond_0
    return-void
.end method
