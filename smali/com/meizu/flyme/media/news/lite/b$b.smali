.class public Lcom/meizu/flyme/media/news/lite/b$b;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/TextView;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final h:Landroid/widget/ImageView;

.field final i:Landroid/widget/LinearLayout;

.field final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    .line 472
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 473
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_author:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    .line 474
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    .line 475
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    .line 476
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    .line 477
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_play_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    .line 478
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_text_video_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->f:Landroid/widget/TextView;

    .line 479
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    .line 480
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/ImageView;

    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_image_0:I

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v9

    const/4 v2, 0x1

    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_image_1:I

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_image_2:I

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 480
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->g:Ljava/util/List;

    .line 484
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_ad_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->i:Landroid/widget/LinearLayout;

    .line 485
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_list_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    .line 487
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTitleTextSize()I

    move-result v0

    .line 488
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTitleFontTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 489
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTitleLineSpacingExtra()F

    move-result v2

    .line 490
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTitleLineSpacingMultiplier()F

    move-result v3

    .line 491
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getSubTitleTextSize()I

    move-result v4

    .line 492
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getSubTitleFontTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    .line 493
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getSubTitleLineSpacingExtra()F

    move-result v6

    .line 494
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getSubTitleLineSpacingMultiplier()F

    move-result v7

    .line 496
    if-eq v0, v11, :cond_0

    .line 497
    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 499
    :cond_0
    if-eqz v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    :cond_1
    cmpl-float v0, v2, v10

    if-eqz v0, :cond_2

    cmpl-float v0, v3, v10

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 505
    :cond_2
    if-eq v4, v11, :cond_5

    .line 506
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    int-to-float v1, v4

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    int-to-float v1, v4

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    int-to-float v1, v4

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 510
    :cond_5
    if-eqz v5, :cond_8

    .line 511
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 512
    :cond_6
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 513
    :cond_7
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 515
    :cond_8
    cmpl-float v0, v6, v10

    if-eqz v0, :cond_b

    cmpl-float v0, v7, v10

    if-eqz v0, :cond_b

    .line 516
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 518
    :cond_a
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 520
    :cond_b
    return-void
.end method
