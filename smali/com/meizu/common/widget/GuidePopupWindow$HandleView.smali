.class Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# instance fields
.field private layoutResourceId:I

.field private mArrowLeft:I

.field private mArrowPadding:I

.field private mBgLeft:Landroid/view/View;

.field private mBgMiddle:Landroid/view/View;

.field private mBgPadding:Landroid/graphics/Rect;

.field private mBgRight:Landroid/view/View;

.field private mBgVertical:Landroid/widget/LinearLayout;

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftMinWidth:I

.field private mMarging:I

.field private mMessageTextView:Landroid/widget/TextView;

.field private mMidMinWidth:I

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mResources:Landroid/content/res/Resources;

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightMinWidth:I

.field private mWithArrow:Z

.field final synthetic this$0:Lcom/meizu/common/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 578
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->this$0:Lcom/meizu/common/widget/GuidePopupWindow;

    .line 579
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 554
    sget v0, Lcom/meizu/common/R$layout;->mc_guide_popup_window:I

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->layoutResourceId:I

    .line 559
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    .line 575
    iput-boolean v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    .line 582
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 583
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->layoutResourceId:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 584
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    .line 586
    sget v0, Lcom/meizu/common/R$id;->guide_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    .line 587
    sget v0, Lcom/meizu/common/R$id;->guide_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    .line 588
    sget v0, Lcom/meizu/common/R$id;->guide_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    .line 590
    sget v0, Lcom/meizu/common/R$id;->guide_bg_left:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    .line 591
    sget v0, Lcom/meizu/common/R$id;->guide_bg_middle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    .line 592
    sget v0, Lcom/meizu/common/R$id;->guide_bg_right:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    .line 593
    sget v0, Lcom/meizu/common/R$id;->guide_bg_vertical:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgVertical:Landroid/widget/LinearLayout;

    .line 595
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/meizu/common/R$dimen;->mc_guide_popup_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinHeight:I

    .line 597
    iput-object p3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    iput-object p4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    iput-object p5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

    .line 600
    iput-object p6, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/meizu/common/R$dimen;->mc_guide_popup_arrow_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowPadding:I

    .line 606
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/meizu/common/R$dimen;->mc_guide_popup_marging:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMarging:I

    .line 608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 609
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 610
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 611
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 612
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 614
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 615
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 616
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 618
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 619
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 621
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 623
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    .line 624
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    .line 625
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    .line 627
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    .line 628
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinHeight:I

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 630
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;-><init>(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Lcom/meizu/common/widget/GuidePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageWidth(I)V

    return-void
.end method

.method private getPopMarging()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMarging:I

    return v0
.end method

.method private setMessageWidth(I)V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 725
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 726
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    return-void
.end method


# virtual methods
.method public disableArrow(Z)V
    .locals 1

    .prologue
    .line 762
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    .line 763
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArrowPadding()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowPadding:I

    return v0
.end method

.method public getArrowWidth()I
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getBackgroundLeftMinWidth()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    return v0
.end method

.method public getBackgroundMidMinWidth()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    return v0
.end method

.method public getBackgroundMinWidth()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    return v0
.end method

.method public getBackgroundRightMinWidth()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    return v0
.end method

.method public getCloseIconWidth()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 664
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 665
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 666
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 667
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 668
    invoke-virtual {p0, v2, v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 670
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 673
    iget-boolean v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 675
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 676
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 677
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 680
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 681
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 682
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 685
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 686
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 687
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    :goto_0
    return-void

    .line 688
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    if-lez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 690
    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 691
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 692
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 695
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 696
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 697
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 700
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 701
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 702
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 706
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 707
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 708
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgLeft:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 711
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 712
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 713
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 716
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 717
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 718
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setArrowDown()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    return-void
.end method

.method public setArrowPosition(I)V
    .locals 0

    .prologue
    .line 758
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    .line 759
    return-void
.end method

.method public setArrowUp()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBgMiddle:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 660
    return-void
.end method
