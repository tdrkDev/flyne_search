.class public Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;
.super Lcom/meizu/common/widget/LabelLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

.field private final e:Landroid/view/LayoutInflater;

.field private f:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->d:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

    .line 34
    iput-boolean v1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->g:Z

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->e:Landroid/view/LayoutInflater;

    .line 47
    sget-object v0, Lcom/meizu/common/R$styleable;->LabelLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    sget v1, Lcom/meizu/common/R$styleable;->LabelLayout_labelHeight:I

    .line 49
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->label_layout_label_height_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 50
    sget v2, Lcom/meizu/common/R$styleable;->LabelLayout_lineMargin:I

    .line 51
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_line_margin_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 52
    sget v3, Lcom/meizu/common/R$styleable;->LabelLayout_itemMargin:I

    .line 53
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->label_layout_item_margin_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 52
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    const/4 v0, -0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->f:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 56
    invoke-static {p1}, Lcom/meizu/flyme/media/news/helper/b;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->g:Z

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/support/v7/widget/AppCompatTextView;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_feedback_reason_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatTextView;

    .line 76
    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->setTipItemStyle(Landroid/support/v7/widget/AppCompatTextView;)V

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_report_tip_item_text_long_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 83
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setWidth(I)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v1, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;

    invoke-direct {v1, p0, p2}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$1;-><init>(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_report_tip_item_text_short_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method private a(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v0, v1, v1, v1, p3}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    invoke-virtual {v0, p4}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->setMarginEnd(I)V

    .line 163
    const/16 v1, 0x50

    iput v1, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    .line 164
    return-object v0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;)Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->d:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

    return-object v0
.end method

.method private setTipItemStyle(Landroid/support/v7/widget/AppCompatTextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatTextView;->setSingleLine()V

    .line 112
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    const-string v0, "SFDIN-Regular"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_report_tip_item_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    .line 116
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setGravity(I)V

    .line 117
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->g:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_feedback_report_tip_item_text_color_night:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 119
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_feedback_report_tip_item_selector_bg_night:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/meizu/flyme/media/news/helper/b;->a(Landroid/view/View;I)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->news_lite_feedback_report_tip_item_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$drawable;->news_lite_feedback_report_tip_item_selector_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->removeAllViews()V

    .line 157
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->b:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->a(Ljava/lang/String;I)Landroid/support/v7/widget/AppCompatTextView;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->f:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public setOnTipItemChooseListener(Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView;->d:Lcom/meizu/flyme/media/news/widget/NewsFeedbackReportWallView$a;

    .line 133
    return-void
.end method
