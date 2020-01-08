.class public Lcom/meizu/common/widget/EmptyView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private ignoreSoftInput:Z

.field private mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsShowDot:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryTextColor:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mThemeColor:I

.field private mTips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsPanle:Landroid/widget/LinearLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleLayoutHeight:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_empty_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 216
    sget v0, Lcom/meizu/common/R$id;->empty_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    .line 218
    sget v0, Lcom/meizu/common/R$id;->empty_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/meizu/common/R$id;->empty_summary:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    .line 220
    sget v0, Lcom/meizu/common/R$id;->empty_tips_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    .line 221
    sget v0, Lcom/meizu/common/R$id;->titleDivider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    .line 222
    sget v0, Lcom/meizu/common/R$id;->content_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    .line 223
    sget v0, Lcom/meizu/common/R$id;->layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    .line 224
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EmptyView;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    .line 226
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 227
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    .line 228
    invoke-virtual {v1}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 230
    sget-object v2, Lcom/meizu/common/R$styleable;->EmptyView:[I

    sget v3, Lcom/meizu/common/R$attr;->MeizuCommon_EmptyViewStyle:I

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 231
    sget v3, Lcom/meizu/common/R$styleable;->EmptyView_mcTopMarginOfImage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 233
    sget v0, Lcom/meizu/common/R$styleable;->EmptyView_mcTopMarginOfTips:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/meizu/common/R$dimen;->mc_empty_content_panel_max_width:I

    .line 237
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 236
    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 239
    sget v0, Lcom/meizu/common/R$styleable;->EmptyView_mcSrcOfImage:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_0
    sget v0, Lcom/meizu/common/R$styleable;->EmptyView_mcTitle:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 245
    sget v0, Lcom/meizu/common/R$styleable;->EmptyView_mcSummary:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 246
    sget v0, Lcom/meizu/common/R$styleable;->EmptyView_mcTextOfTips:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/meizu/common/R$styleable;->EmptyView_mcTips:I

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/ResourceUtils;->getStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 248
    sget v1, Lcom/meizu/common/R$styleable;->EmptyView_mcIsShowDot:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 249
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 254
    sget v2, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    .line 255
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/meizu/common/R$styleable;->EmptyView:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$styleable;->EmptyView_mcSummaryTextAppearance:I

    sget v5, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView_Summary:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 259
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$styleable;->EmptyView_mcTitleTextAppearance:I

    sget v5, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView_Title:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 260
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EmptyView;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 268
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    invoke-direct {p0}, Lcom/meizu/common/widget/EmptyView;->viewControl()V

    .line 271
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method private viewControl()V
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_empty_tip_line_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 289
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_empty_title_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 359
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 323
    const-class v0, Lcom/meizu/common/widget/EmptyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 280
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayoutHeight:I

    .line 281
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 282
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    iget v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayoutHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 284
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setContentPanelMaxWidth(I)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 554
    return-void
.end method

.method public setEmptyMarginBottom(I)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 473
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 474
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 475
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    return-void
.end method

.method public setEmptyMarginTop(I)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 462
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 463
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 464
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    return-void
.end method

.method public setIgnoreSoftInput(Z)V
    .locals 3

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->ignoreSoftInput:Z

    .line 503
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 504
    if-nez p1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_keyboard_approximate_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 506
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public setIsShowDot(Z)V
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 541
    :goto_0
    if-eqz v0, :cond_0

    .line 542
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 543
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 545
    :cond_0
    return-void

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 422
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 424
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_2

    .line 431
    new-instance v1, Lcom/meizu/common/widget/EmptyView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EmptyView$1;-><init>(Lcom/meizu/common/widget/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 449
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public setSummaryColor(I)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    return-void
.end method

.method public setTextOfTips(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 337
    return-void
.end method

.method public setTextOfTips(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x2

    .line 367
    if-nez p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 368
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p1

    .line 367
    goto :goto_0

    .line 374
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$dimen;->mc_empty_tip_margin_Bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 382
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$dimen;->mc_empty_dot_margin_top:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$dimen;->mc_empty_dot_margin_right:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 385
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$dimen;->mc_empty_tip_line_space:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 386
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$drawable;->mc_default_word_point:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 387
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 392
    iget-boolean v8, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-eqz v8, :cond_4

    .line 393
    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    :cond_4
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView:I

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 401
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 403
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 489
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 532
    return-void
.end method
