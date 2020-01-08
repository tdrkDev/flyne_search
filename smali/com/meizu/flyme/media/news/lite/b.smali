.class public Lcom/meizu/flyme/media/news/lite/b;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/b$c;,
        Lcom/meizu/flyme/media/news/lite/b$a;,
        Lcom/meizu/flyme/media/news/lite/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Lcom/meizu/flyme/media/news/lite/i;

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:Lcom/meizu/flyme/media/news/lite/b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->c:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->d:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/b;->g:Z

    .line 61
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/b;->h:Z

    .line 62
    iput v1, p0, Lcom/meizu/flyme/media/news/lite/b;->i:I

    .line 64
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/lite/b;->j:Z

    .line 71
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->l:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;Landroid/widget/LinearLayout;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 606
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getAdData()Lcom/meizu/advertise/api/a;

    move-result-object v1

    .line 607
    if-nez v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-static {p1}, Lcom/meizu/advertise/api/AdView;->a(Landroid/content/Context;)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/a;)Lcom/meizu/advertise/api/AdView;

    move-result-object v2

    .line 611
    if-eqz v2, :cond_0

    .line 612
    invoke-virtual {v2}, Lcom/meizu/advertise/api/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {v2}, Lcom/meizu/advertise/api/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 615
    :cond_2
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b$2;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/meizu/flyme/media/news/lite/b$2;-><init>(Lcom/meizu/flyme/media/news/lite/b;Lcom/meizu/advertise/api/a;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v0}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/c;)Lcom/meizu/advertise/api/AdView;

    .line 657
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 658
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 660
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 661
    invoke-virtual {p3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/meizu/flyme/media/news/a/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/meizu/flyme/media/news/lite/b$b;I)V
    .locals 12

    .prologue
    const/16 v11, 0xb

    const/4 v5, 0x3

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 235
    if-nez v6, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/meizu/flyme/media/news/lite/b$b;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v6, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/b;->g:Z

    if-eqz v0, :cond_3

    .line 241
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->c(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->e:I

    .line 242
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->f:I

    .line 243
    iput-boolean v3, p0, Lcom/meizu/flyme/media/news/lite/b;->g:Z

    .line 245
    :cond_3
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v0

    if-nez v0, :cond_e

    .line 248
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 261
    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    if-ne v0, v11, :cond_11

    .line 262
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getVideoPlayCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 263
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getVideoPlayCount()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p1, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/meizu/flyme/media/news/lite/R$string;->news_play_count:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 268
    :goto_2
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getVideoDuration()I

    move-result v1

    invoke-static {v1}, Lcom/meizu/flyme/media/news/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 269
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/b;->b(Landroid/view/View;)V

    .line 282
    :cond_5
    :goto_3
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/b;->e:I

    if-ne v0, v7, :cond_6

    .line 283
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 287
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_color_text_secondary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 288
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTitleTextColor()I

    move-result v0

    .line 289
    if-ne v0, v10, :cond_7

    .line 290
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_color_text_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 292
    :cond_7
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getSubTitleTextColor()I

    move-result v1

    .line 293
    if-ne v1, v10, :cond_8

    .line 294
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_color_text_secondary:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 296
    :cond_8
    iget-object v4, p1, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    .line 297
    iget-object v4, p1, Lcom/meizu/flyme/media/news/lite/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v7

    if-eqz v7, :cond_9

    move v0, v2

    :cond_9
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    :cond_a
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 300
    iget-object v4, p1, Lcom/meizu/flyme/media/news/lite/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    :cond_b
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 303
    iget-object v4, p1, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    :cond_c
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 306
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isRead()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    :cond_d
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v4

    .line 310
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 311
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    if-ne v0, v11, :cond_16

    .line 312
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_list_item_video_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->m:I

    .line 313
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_list_item_video_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->n:I

    :goto_7
    move v2, v3

    .line 318
    :goto_8
    if-ge v2, v7, :cond_17

    .line 319
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 320
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 318
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 250
    :cond_e
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 252
    if-ltz v1, :cond_f

    .line 253
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_f
    iget-object v1, p1, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 256
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_color_label_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 266
    :cond_10
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/b;->b(Landroid/view/View;)V

    goto/16 :goto_2

    .line 271
    :cond_11
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/b;->f:I

    if-ne v0, v7, :cond_5

    .line 273
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/i;->f()I

    move-result v0

    if-lez v0, :cond_12

    .line 275
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getPublishTimeMillis()J

    .line 279
    :goto_9
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getPublishTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getTimeDisplayType()I

    move-result v2

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v4}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v4

    invoke-static {v4}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a(I)Z

    move-result v4

    invoke-static {v8, v9, v1, v2, v4}, Lcom/meizu/flyme/media/news/a/l;->a(JLandroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 277
    :cond_12
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCreateTimeMillis()J

    goto :goto_9

    :cond_13
    move v0, v1

    .line 300
    goto/16 :goto_4

    :cond_14
    move v0, v1

    .line 303
    goto/16 :goto_5

    :cond_15
    move v2, v1

    .line 306
    goto/16 :goto_6

    .line 315
    :cond_16
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_list_item_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->m:I

    .line 316
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_list_item_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/b;->n:I

    goto/16 :goto_7

    .line 323
    :cond_17
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->b(IZ)Z

    move-result v0

    if-nez v0, :cond_19

    .line 325
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/b;->b(Landroid/view/View;)V

    .line 348
    :cond_18
    :goto_a
    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isExposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v6, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V

    goto/16 :goto_0

    .line 327
    :cond_19
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    .line 329
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_close_expand_bounds:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 330
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/media/news/helper/f;->a(Landroid/view/View;IIIII)V

    .line 331
    iget-object v0, p1, Lcom/meizu/flyme/media/news/lite/b$b;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/b$1;

    invoke-direct {v1, p0, p1, v6, p2}, Lcom/meizu/flyme/media/news/lite/b$1;-><init>(Lcom/meizu/flyme/media/news/lite/b;Lcom/meizu/flyme/media/news/lite/b$b;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/b;)Lcom/meizu/flyme/media/news/lite/b$c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->o:Lcom/meizu/flyme/media/news/lite/b$c;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-void
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b;->l:Landroid/view/View;

    .line 698
    return-void
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/b$c;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/b;->o:Lcom/meizu/flyme/media/news/lite/b$c;

    .line 690
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit v1

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/b;->k:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(I)I

    move-result v0

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 91
    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/b;->j:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/b;->b(Ljava/util/List;)V

    .line 100
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->notifyDataSetChanged()V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/b;->c(Ljava/util/List;)V

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/b;->h:Z

    .line 667
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 670
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/b;->i:I

    .line 671
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/b;->j:Z

    .line 675
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 683
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/b;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/b;->h:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/b;->h:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->getItemCount()I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 396
    const/4 v3, 0x7

    .line 450
    :cond_0
    :goto_0
    return v3

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getType()I

    move-result v5

    .line 404
    if-eqz v5, :cond_2

    if-ne v5, v4, :cond_4

    .line 406
    :cond_2
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getManualShowType()I

    move-result v5

    .line 407
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v0, v3

    :goto_1
    move v3, v0

    .line 437
    goto :goto_0

    :pswitch_1
    move v0, v3

    .line 411
    goto :goto_1

    .line 413
    :pswitch_2
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    .line 414
    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 415
    goto :goto_1

    :cond_3
    move v0, v2

    .line 417
    goto :goto_1

    :pswitch_3
    move v0, v4

    .line 424
    goto :goto_1

    .line 426
    :pswitch_4
    const/4 v0, 0x4

    .line 428
    goto :goto_1

    .line 430
    :pswitch_5
    const/4 v0, 0x5

    .line 432
    goto :goto_1

    .line 437
    :cond_4
    if-ne v5, v2, :cond_6

    .line 438
    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getImages()Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 441
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_5

    move v3, v2

    .line 443
    goto :goto_0

    :cond_5
    move v3, v4

    .line 445
    goto :goto_0

    .line 447
    :cond_6
    if-ne v5, v1, :cond_0

    .line 448
    const/4 v3, 0x6

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 210
    instance-of v0, p1, Lcom/meizu/flyme/media/news/lite/b$a;

    if-eqz v0, :cond_0

    .line 211
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/b;->i:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 213
    :pswitch_0
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/b$a;->a(Lcom/meizu/flyme/media/news/lite/b$a;)V

    goto :goto_0

    .line 216
    :pswitch_1
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/b$a;->b(Lcom/meizu/flyme/media/news/lite/b$a;)V

    goto :goto_0

    .line 219
    :pswitch_2
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/b$a;->c(Lcom/meizu/flyme/media/news/lite/b$a;)V

    goto :goto_0

    .line 222
    :pswitch_3
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/b$a;->d(Lcom/meizu/flyme/media/news/lite/b$a;)V

    goto :goto_0

    .line 225
    :pswitch_4
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/b$a;->e(Lcom/meizu/flyme/media/news/lite/b$a;)V

    goto :goto_0

    .line 229
    :cond_0
    check-cast p1, Lcom/meizu/flyme/media/news/lite/b$b;

    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/b;->a(Lcom/meizu/flyme/media/news/lite/b$b;I)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 122
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_footer_loading_more:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b$a;

    invoke-direct {v0, p0, v1}, Lcom/meizu/flyme/media/news/lite/b$a;-><init>(Lcom/meizu/flyme/media/news/lite/b;Landroid/view/View;)V

    .line 205
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 127
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_ad:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 128
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b$b;

    invoke-direct {v0, v1}, Lcom/meizu/flyme/media/news/lite/b$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getListItemLayoutMap()Ljava/util/HashMap;

    move-result-object v0

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b$b;

    invoke-direct {v0, v1}, Lcom/meizu/flyme/media/news/lite/b$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 167
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_only:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 170
    :goto_1
    new-instance v3, Lcom/meizu/flyme/media/news/lite/b$b;

    invoke-direct {v3, v0}, Lcom/meizu/flyme/media/news/lite/b$b;-><init>(Landroid/view/View;)V

    .line 172
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getListItemHeightMap()Ljava/util/HashMap;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getImageWidthAndHeightMap()Ljava/util/HashMap;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getListItemStartEndMargin()I

    move-result v2

    .line 176
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getListItemWidth()I

    move-result v4

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    iget-object v0, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_3
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    iget-object v0, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    iget-object v4, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, v3, Lcom/meizu/flyme/media/news/lite/b$b;->j:Landroid/view/View;

    .line 188
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 185
    invoke-virtual {v0, v2, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 194
    iget-object v1, v3, Lcom/meizu/flyme/media/news/lite/b$b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 195
    if-eqz v1, :cond_5

    .line 196
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 197
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 143
    :pswitch_0
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_only:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 147
    :pswitch_1
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_left_image_right:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 151
    :pswitch_2
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_top_image_3:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 155
    :pswitch_3
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_left_video_right:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 159
    :pswitch_4
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_text_top_video_bottom:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 163
    :pswitch_5
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_list_item_image_left_text_right:I

    invoke-virtual {v1, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    .line 205
    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
