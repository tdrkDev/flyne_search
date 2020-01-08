.class public Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;
    }
.end annotation


# static fields
.field private static F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

.field private B:I

.field private C:I

.field private D:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;

.field private E:Z

.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/AnimatorSet;

.field private d:Landroid/animation/AnimatorSet;

.field private e:Landroid/animation/AnimatorSet;

.field private f:Landroid/view/animation/Interpolator;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ViewFlipper;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Z

.field private y:Landroid/view/View;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->F:Ljava/util/List;

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->G:Ljava/util/List;

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v4

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v7

    const-string v2, "5"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v6

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "4"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 614
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    new-instance v3, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;

    invoke-direct {v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;-><init>()V

    .line 616
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setCode(I)V

    .line 617
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setType(I)V

    .line 618
    invoke-virtual {v3, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setMsg(Ljava/lang/String;)V

    .line 619
    new-instance v4, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;

    invoke-direct {v4}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;-><init>()V

    .line 620
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;->setData(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v4, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;->setText(Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->F:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    new-instance v2, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;

    invoke-direct {v2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;-><init>()V

    .line 627
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setCode(I)V

    .line 628
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setType(I)V

    .line 629
    invoke-virtual {v2, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$a;->setMsg(Ljava/lang/String;)V

    .line 630
    new-instance v3, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;

    invoke-direct {v3}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;-><init>()V

    .line 631
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;->setData(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$c;->setText(Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->G:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 635
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const v2, 0x3eb851ec    # 0.36f

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const v0, 0x3d75c28f    # 0.06f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v2, v1}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->f:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->s:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->u:Ljava/util/List;

    .line 91
    iput-boolean v3, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    .line 104
    invoke-static {p1}, Lcom/meizu/flyme/media/news/helper/f;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 105
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_feedback_delete_reason_select_layout:I

    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_view_flipper:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    .line 107
    invoke-static {p1}, Lcom/meizu/flyme/media/news/helper/b;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    .line 108
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_feedback_bg_night:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_superscript:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_popwindow_content_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    .line 113
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_feedback_flipper_page_one:I

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_feedback_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->n:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_dislike_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->o:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_report_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->p:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 119
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_feedback_flipper_page_two:I

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_report_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->q:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_ic_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->k:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_label_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    .line 123
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_commit_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->setOnTipItemChooseListener(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->C:I

    .line 132
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/meizu/flyme/media/news/helper/b;->a(Landroid/view/View;I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    invoke-static {v0, v4, v3}, Lcom/meizu/flyme/media/news/helper/b;->a(Landroid/view/View;IZ)V

    .line 136
    :cond_0
    return-void

    .line 108
    :cond_1
    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_feedback_bg:I

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;ILandroid/widget/ImageView;)I
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    new-array v4, v5, [I

    .line 331
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 332
    aget v0, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 335
    new-array v0, v5, [I

    .line 336
    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 338
    iget-object v6, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 339
    aget v0, v0, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v0

    .line 341
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/g;->a(Landroid/app/Activity;)I

    move-result v0

    .line 342
    sub-int/2addr v6, v3

    sub-int v0, v6, v0

    .line 343
    if-ge v0, p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->x:Z

    .line 346
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->x:Z

    if-eqz v0, :cond_4

    .line 347
    aget v0, v4, v1

    sub-int v1, v0, p2

    .line 349
    iget v0, v5, Landroid/graphics/Rect;->top:I

    if-ge v1, v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 351
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :goto_2
    return v2

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 343
    goto :goto_1

    .line 356
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_ic_superscript_down_night:I

    :goto_3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 357
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_popwindow_superscript_down_y:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 363
    :goto_4
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 364
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    aget v2, v4, v2

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 366
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_popwindow_superscript_x_landscape:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 365
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setX(F)V

    :goto_5
    move v2, v1

    .line 370
    goto :goto_2

    .line 356
    :cond_3
    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_ic_superscript_down:I

    goto :goto_3

    .line 360
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_ic_superscript_up_night:I

    :goto_6
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 361
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_popwindow_superscript_up_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setY(F)V

    move v1, v3

    goto :goto_4

    .line 360
    :cond_5
    sget v0, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_ic_superscript_up:I

    goto :goto_6

    .line 368
    :cond_6
    aget v0, v4, v2

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_popwindow_superscript_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_5
.end method

.method private a(Landroid/view/View;FF)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 374
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 381
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 383
    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v7, v1, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    const v0, 0x3f0a3d71    # 0.54f

    const v2, 0x3de147ae    # 0.11f

    invoke-static {v7, v0, v2, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 389
    const-string v2, "scaleX"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 390
    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 391
    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v9

    aput-object v3, v4, v10

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x180

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 392
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    const v0, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    invoke-static {v0, v7, v3, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 395
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x40

    .line 396
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 397
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    .line 400
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 401
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 384
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 389
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 390
    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 395
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    if-nez v0, :cond_1

    .line 247
    const-string v0, "NewsNgFeedBackLayout"

    const-string v1, "reportNgFeedBack: article is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 251
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->B:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/meizu/flyme/media/news/lite/k;->a(IJI)V

    .line 255
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->B:I

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(Ljava/lang/String;Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;II)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->D:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->D:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->z:I

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;->a(I)V

    goto :goto_0

    .line 252
    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 253
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->B:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/meizu/flyme/media/news/lite/k;->a(IJILjava/lang/String;)V

    goto :goto_1
.end method

.method private b(Landroid/view/View;FF)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 454
    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 461
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 463
    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v7, v1, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    .line 465
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 466
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    const v0, 0x3da3d70a    # 0.08f

    const v2, 0x3f547ae1    # 0.83f

    invoke-static {v0, v7, v2, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 469
    const-string v2, "scaleX"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 470
    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 471
    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v9

    aput-object v3, v4, v10

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 472
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    const v0, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    invoke-static {v0, v7, v3, v8}, Lcom/meizu/flyme/media/news/helper/f;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 475
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x80

    .line 476
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 477
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 479
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    .line 480
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$1;

    invoke-direct {v4, p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$1;-><init>(Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 487
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 464
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 469
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 470
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 475
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private c()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/media/news/a/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_feedback_popwindow_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 153
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_2
    invoke-static {v1}, Lcom/meizu/flyme/media/news/a/g;->a(Landroid/app/Activity;)I

    move-result v1

    .line 150
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 149
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 159
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/h;->d(Landroid/content/Context;)V

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->t:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 221
    :cond_3
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "NewsNgFeedBackLayout"

    const-string v1, "dealDislikeData: article is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$d;->setId(Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;

    invoke-direct {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;-><init>()V

    .line 233
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->setData(Ljava/lang/String;)V

    .line 234
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$b;->setText(Ljava/lang/String;)V

    .line 235
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 412
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->w:I

    .line 413
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b()V

    .line 426
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$string;->news_reduce_recommendation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/meizu/flyme/media/news/helper/f;->a(Landroid/content/Context;Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 429
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b:Landroid/animation/AnimatorSet;

    .line 444
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c:Landroid/animation/AnimatorSet;

    .line 451
    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->n:Landroid/widget/LinearLayout;

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xf0

    .line 539
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 542
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e:Landroid/animation/AnimatorSet;

    .line 544
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 545
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 538
    :array_0
    .array-data 4
        -0x3c860000    # -250.0f
        0x0
    .end array-data
.end method

.method private m()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->q:Landroid/view/View;

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xf0

    .line 556
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    .line 560
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$2;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$2;-><init>(Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 568
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 555
    :array_0
    .array-data 4
        0x437a0000    # 250.0f
        0x0
    .end array-data
.end method

.method private setReportData(Z)V
    .locals 2

    .prologue
    .line 405
    if-eqz p1, :cond_0

    sget v0, Lcom/meizu/flyme/media/news/lite/R$array;->news_tip_report_video_array:I

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->s:Ljava/util/List;

    .line 407
    if-eqz p1, :cond_1

    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->G:Ljava/util/List;

    :goto_1
    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->t:Ljava/util/List;

    .line 408
    return-void

    .line 405
    :cond_0
    sget v0, Lcom/meizu/flyme/media/news/lite/R$array;->news_tip_report_article_array:I

    goto :goto_0

    .line 407
    :cond_1
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->F:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 266
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->u:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/meizu/flyme/media/news/a/i;->a(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/i;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 270
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 277
    :cond_2
    :goto_1
    return-void

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 313
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 315
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->j()V

    .line 433
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b(Landroid/view/View;FF)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->removeView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 166
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_dislike_popwindow_bg:I

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_dislike_layout:I

    if-ne v0, v1, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i()V

    .line 171
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->f()V

    goto :goto_0

    .line 172
    :cond_2
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_report_layout:I

    if-ne v0, v1, :cond_4

    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->setData(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->E:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 180
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g()V

    .line 181
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m()V

    .line 182
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    if-eqz v0, :cond_0

    .line 183
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->B:I

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getContentId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/meizu/flyme/media/news/lite/k;->b(IJI)V

    goto :goto_0

    .line 185
    :cond_4
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_ic_back:I

    if-ne v0, v1, :cond_5

    .line 186
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->m:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a()V

    .line 187
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 188
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->l()V

    goto :goto_0

    .line 189
    :cond_5
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_commit_btn:I

    if-ne v0, v1, :cond_6

    .line 190
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i()V

    .line 191
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->e()V

    goto :goto_0

    .line 192
    :cond_6
    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_report_list:I

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 587
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 588
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->C:I

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public setData(Landroid/view/View;Landroid/view/View;ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 291
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->y:Landroid/view/View;

    .line 292
    iput p5, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->z:I

    .line 293
    iput-object p4, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->A:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    .line 294
    iput p3, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->B:I

    .line 295
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->c()V

    .line 296
    invoke-virtual {p4}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->setReportData(Z)V

    .line 297
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h()V

    .line 298
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 299
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 300
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->v:I

    .line 302
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v0, v2}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a(Landroid/view/View;ILandroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 303
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->k()V

    .line 304
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->a(Landroid/view/View;FF)V

    .line 305
    return-void

    :cond_0
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public setFeedBackListener(Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->D:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$a;

    .line 309
    return-void
.end method
