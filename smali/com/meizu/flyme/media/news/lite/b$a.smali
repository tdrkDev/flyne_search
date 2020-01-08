.class public Lcom/meizu/flyme/media/news/lite/b$a;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Landroid/widget/TextView;

.field final c:Lcom/meizu/common/widget/LoadingView;

.field d:Landroid/widget/ImageView;

.field e:I

.field final synthetic f:Lcom/meizu/flyme/media/news/lite/b;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/media/news/lite/b;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 533
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b$a;->f:Lcom/meizu/flyme/media/news/lite/b;

    .line 534
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 535
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b$a$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/lite/b$a$1;-><init>(Lcom/meizu/flyme/media/news/lite/b$a;Lcom/meizu/flyme/media/news/lite/b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_loading_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    .line 553
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_loading_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->b:Landroid/widget/TextView;

    .line 554
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_loading_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LoadingView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    .line 555
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    .line 557
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getLoadingColor()I

    move-result v0

    .line 558
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->mz_theme_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/LoadingView;->setBarColor(I)V

    .line 562
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$color;->mc_loading_view_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingView;->setBarBackgroundColor(I)V

    .line 563
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 568
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/b$a;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/b$a;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_error_click_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 573
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$drawable;->ic_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 577
    return-void
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/b$a;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/b$a;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 582
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 585
    return-void
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/b$a;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/b$a;->b()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_tip_dialog_wifi_not_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 590
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$drawable;->ic_forword:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 594
    return-void
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/b$a;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/b$a;->d()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 597
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->c:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_error_no_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 599
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b$a;->e:I

    .line 602
    return-void
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/b$a;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/b$a;->e()V

    return-void
.end method
