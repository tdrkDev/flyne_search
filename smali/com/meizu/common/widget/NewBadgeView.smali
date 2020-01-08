.class public Lcom/meizu/common/widget/NewBadgeView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static BADGE_VIEW_MODE_AVATAR:I

.field public static BADGE_VIEW_MODE_ICON_LAUNCH:I

.field public static BADGE_VIEW_MODE_ICON_SYSTEM:I

.field public static BADGE_VIEW_MODE_TEXTVIEW:I

.field private static CONTENT_VIEW_TYPE_DEFAULT:I

.field public static CONTENT_VIEW_TYPE_ICON:I

.field public static CONTENT_VIEW_TYPE_STRING:I

.field public static POINT_CENTER_AT_BOTH_INSIDE:I

.field public static POINT_CENTER_AT_BOTH_OUTSIDE:I

.field public static POINT_CENTER_AT_BOTH_OUTSIDE_BOTTOM_RIGHT:I

.field public static POINT_CENTER_AT_BOTH_OUTSIDE_TOP_LEFT:I

.field private static POINT_CENTER_AT_DEFAULT:I

.field public static POINT_CENTER_AT_INSIDE_RIGHT_BOTTOM:I

.field public static POINT_CENTER_AT_INSIDE_TOP_LEFT:I

.field public static POINT_CENTER_AT_OUTSIDE_RIGHT_TOP:I

.field public static POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

.field public static POINT_CENTER_AT_TOP_RIGHT:I

.field private static SHOW_POINT_VIEW_BORDER_DEFAULT:Ljava/lang/Boolean;


# instance fields
.field private mContainerDrawable:Landroid/graphics/drawable/Drawable;

.field private mContainerDrawableId:I

.field private mContainerText:Ljava/lang/String;

.field private mContentViewType:I

.field private mIconContent:Landroid/widget/ImageView;

.field private mLaunchIconNumPadding:I

.field private mLaunchIconPadding:I

.field private mModeType:I

.field private mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

.field private mPointCenterLocation:I

.field private mPointMaxHeight:I

.field private mPointMaxWidth:I

.field private mPointView:Landroid/view/View;

.field private mPointViewBorder:I

.field private mPointViewTextSize:F

.field private mShowPointViewBorder:Ljava/lang/Boolean;

.field private mStringContent:Landroid/widget/TextView;

.field private mSystemIconNumLeftPadding:I

.field private mSystemIconNumTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_INSIDE:I

    .line 33
    sput v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE:I

    .line 38
    sput v3, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_TOP_RIGHT:I

    .line 43
    sput v4, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    .line 49
    const/4 v0, 0x4

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_TOP_LEFT:I

    .line 54
    const/4 v0, 0x5

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_RIGHT_TOP:I

    .line 60
    const/4 v0, 0x6

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_RIGHT_BOTTOM:I

    .line 66
    const/4 v0, 0x7

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_TOP_LEFT:I

    .line 71
    const/16 v0, 0x8

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_BOTTOM_RIGHT:I

    .line 73
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_TOP_RIGHT:I

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_DEFAULT:I

    .line 78
    sput v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    .line 79
    sput v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    .line 80
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    sput v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_DEFAULT:I

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/NewBadgeView;->SHOW_POINT_VIEW_BORDER_DEFAULT:Ljava/lang/Boolean;

    .line 84
    sput v1, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_TEXTVIEW:I

    .line 85
    sput v2, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_AVATAR:I

    .line 86
    sput v3, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    .line 87
    sput v4, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_SYSTEM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/NewBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/NewBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    .line 97
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_DEFAULT:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    .line 98
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_DEFAULT:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/NewBadgeView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/NewBadgeView;->initView(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    sget-object v0, Lcom/meizu/common/R$styleable;->mzNewBadgeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    .line 165
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-ne v1, v2, :cond_1

    .line 167
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 174
    :goto_0
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcPointViewBorderShow:I

    sget-object v2, Lcom/meizu/common/widget/NewBadgeView;->SHOW_POINT_VIEW_BORDER_DEFAULT:Ljava/lang/Boolean;

    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mShowPointViewBorder:Ljava/lang/Boolean;

    .line 177
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcPointViewBorder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    .line 180
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    if-lez v1, :cond_0

    .line 181
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mShowPointViewBorder:Ljava/lang/Boolean;

    .line 184
    :cond_0
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcContentTextViewText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    .line 187
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcContentImageViewSrc:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawableId:I

    .line 190
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcPointViewTextSize:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewTextSize:F

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_badge_view_launch_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mLaunchIconPadding:I

    .line 196
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_badge_view_launch_icon_num_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mLaunchIconNumPadding:I

    .line 197
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_badge_view_system_icon_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mSystemIconNumLeftPadding:I

    .line 198
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_badge_view_system_icon_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mSystemIconNumTopPadding:I

    .line 199
    return-void

    .line 171
    :cond_1
    sget v1, Lcom/meizu/common/R$styleable;->mzNewBadgeView_mcPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    goto/16 :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    sget v0, Lcom/meizu/common/R$layout;->mc_badge_view_image_item:I

    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcom/meizu/common/R$layout;->mc_badge_view_text_item:I

    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    .line 138
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-ne v0, v2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;)V

    .line 150
    :cond_1
    :goto_0
    sget v0, Lcom/meizu/common/R$layout;->mc_badge_view_point_view_item:I

    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;)V

    .line 152
    sget v0, Lcom/meizu/common/R$id;->mz_new_message_view:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/NewMessageView;

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/NewMessageView;->getViewMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/NewMessageView;->getViewMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mShowPointViewBorder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setShowPointViewBorder(Z)V

    .line 157
    return-void

    .line 143
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-ne v0, v2, :cond_1

    .line 144
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawableId:I

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getBadgeNumber()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/NewMessageView;->getNewMessageNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBadgeViewBorder()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    return v0
.end method

.method public getContentViewType()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getModeType()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    return v0
.end method

.method public getPointCenterLocation()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    return-object v0
.end method

.method protected measureChildView(Landroid/view/View;II)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 203
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 204
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    iget-object v5, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    .line 286
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-ne v1, v2, :cond_2

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    .line 292
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 294
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 295
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 297
    const/4 v4, 0x0

    .line 298
    const/4 v3, 0x0

    .line 300
    const/4 v2, 0x0

    .line 301
    const/4 v1, 0x0

    .line 303
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_INSIDE:I

    if-ne v10, v11, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 305
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v3

    .line 307
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    if-ne v1, v2, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    sub-int/2addr v1, v8

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mLaunchIconPadding:I

    sub-int v2, v1, v2

    .line 309
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mLaunchIconPadding:I

    add-int/2addr v1, v10

    .line 374
    :cond_1
    :goto_1
    add-int/2addr v6, v4

    add-int/2addr v7, v3

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 375
    add-int v0, v2, v8

    add-int v3, v1, v9

    invoke-virtual {v5, v2, v1, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 376
    return-void

    .line 288
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-ne v1, v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    sub-int v2, v1, v8

    .line 312
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    goto :goto_1

    .line 314
    :cond_4
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE:I

    if-ne v10, v11, :cond_5

    .line 315
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int v3, v1, v2

    .line 318
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int v2, v1, v6

    .line 319
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int/2addr v1, v10

    sub-int/2addr v1, v9

    goto :goto_1

    .line 320
    :cond_5
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_TOP_RIGHT:I

    if-ne v10, v11, :cond_7

    .line 321
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 322
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    .line 324
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_SYSTEM:I

    if-ne v1, v2, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    div-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mSystemIconNumLeftPadding:I

    sub-int v2, v1, v2

    .line 326
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mSystemIconNumTopPadding:I

    add-int/2addr v1, v10

    goto :goto_1

    .line 328
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    div-int/lit8 v2, v8, 0x2

    sub-int v2, v1, v2

    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    goto/16 :goto_1

    .line 331
    :cond_7
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    if-ne v10, v11, :cond_8

    .line 332
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 333
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    .line 335
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int v2, v1, v6

    .line 336
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    goto/16 :goto_1

    .line 337
    :cond_8
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_TOP_LEFT:I

    if-ne v10, v11, :cond_9

    .line 338
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 339
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    .line 341
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    sub-int v2, v1, v8

    .line 342
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    goto/16 :goto_1

    .line 343
    :cond_9
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_RIGHT_TOP:I

    if-ne v10, v11, :cond_a

    .line 344
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 345
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int v3, v1, v2

    .line 347
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    div-int/lit8 v2, v8, 0x2

    sub-int v2, v1, v2

    .line 348
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int/2addr v1, v10

    sub-int/2addr v1, v9

    goto/16 :goto_1

    .line 349
    :cond_a
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_RIGHT_BOTTOM:I

    if-ne v10, v11, :cond_c

    .line 350
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 351
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v3

    .line 353
    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    if-ne v1, v2, :cond_b

    .line 354
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    div-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mLaunchIconNumPadding:I

    sub-int v2, v1, v2

    .line 355
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    goto/16 :goto_1

    .line 357
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    div-int/lit8 v2, v8, 0x2

    sub-int v2, v1, v2

    .line 358
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    goto/16 :goto_1

    .line 360
    :cond_c
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_TOP_LEFT:I

    if-ne v10, v11, :cond_d

    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 362
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int v3, v1, v2

    .line 364
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v6

    sub-int v2, v1, v8

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    add-int/2addr v1, v10

    sub-int/2addr v1, v9

    goto/16 :goto_1

    .line 366
    :cond_d
    iget v10, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v11, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_BOTTOM_RIGHT:I

    if-ne v10, v11, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v4

    .line 368
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v3

    .line 370
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v1

    add-int v2, v1, v6

    .line 371
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingRight()I

    move-result v3

    add-int v6, v2, v3

    .line 212
    sub-int/2addr v0, v6

    .line 214
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 215
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getPaddingBottom()I

    move-result v4

    add-int v7, v3, v4

    .line 216
    sub-int/2addr v2, v7

    .line 218
    iget v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v4, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-ne v3, v4, :cond_2

    .line 219
    iget-object v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->measureChildView(Landroid/view/View;II)V

    .line 224
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->measureChildView(Landroid/view/View;II)V

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getChildCount()I

    move-result v8

    move v5, v1

    move v3, v1

    move v4, v1

    .line 236
    :goto_1
    if-ge v5, v8, :cond_c

    .line 237
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/NewBadgeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 240
    if-nez v5, :cond_3

    .line 236
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v0

    goto :goto_1

    .line 220
    :cond_2
    iget v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v4, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-ne v3, v4, :cond_0

    .line 221
    iget-object v3, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->measureChildView(Landroid/view/View;II)V

    goto :goto_0

    .line 243
    :cond_3
    const/4 v0, 0x1

    if-ne v5, v0, :cond_e

    .line 246
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_INSIDE:I

    if-ne v0, v2, :cond_4

    move v0, v1

    move v2, v1

    .line 274
    :goto_3
    add-int/2addr v2, v6

    add-int/2addr v2, v4

    .line 275
    add-int/2addr v0, v7

    add-int/2addr v0, v3

    goto :goto_2

    .line 249
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE:I

    if-ne v0, v2, :cond_5

    .line 250
    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    .line 251
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    goto :goto_3

    .line 252
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_TOP_RIGHT:I

    if-ne v0, v2, :cond_6

    .line 253
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    div-int/lit8 v2, v0, 0x2

    .line 254
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 255
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    if-ne v0, v2, :cond_7

    .line 256
    iget v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    .line 257
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 258
    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_TOP_LEFT:I

    if-ne v0, v2, :cond_8

    .line 260
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    goto :goto_3

    .line 261
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_RIGHT_TOP:I

    if-ne v0, v2, :cond_9

    .line 262
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    div-int/lit8 v2, v0, 0x2

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    goto :goto_3

    .line 264
    :cond_9
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_RIGHT_BOTTOM:I

    if-ne v0, v2, :cond_a

    .line 265
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    move v0, v1

    .line 266
    goto :goto_3

    .line 267
    :cond_a
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_TOP_LEFT:I

    if-ne v0, v2, :cond_b

    .line 269
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxHeight:I

    move v2, v1

    goto :goto_3

    .line 270
    :cond_b
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    sget v2, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_OUTSIDE_BOTTOM_RIGHT:I

    if-ne v0, v2, :cond_d

    .line 271
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointMaxWidth:I

    move v2, v0

    move v0, v1

    .line 272
    goto :goto_3

    .line 278
    :cond_c
    invoke-virtual {p0, v4, v3}, Lcom/meizu/common/widget/NewBadgeView;->setMeasuredDimension(II)V

    .line 279
    return-void

    :cond_d
    move v0, v1

    move v2, v1

    goto :goto_3

    :cond_e
    move v0, v3

    move v2, v4

    goto/16 :goto_2
.end method

.method public setBadgeNumber(I)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/NewMessageView;->setNewMessageNum(I)V

    .line 410
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_TEXTVIEW:I

    if-ne v0, v1, :cond_1

    .line 411
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 417
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewTextSize:F

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setPointViewTextSize(F)V

    .line 418
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->requestLayout()V

    .line 419
    return-void

    .line 412
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_AVATAR:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    if-ne v0, v1, :cond_3

    .line 413
    :cond_2
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_INSIDE_RIGHT_BOTTOM:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    goto :goto_0

    .line 414
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_SYSTEM:I

    if-ne v0, v1, :cond_0

    .line 415
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_TOP_RIGHT:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    goto :goto_0
.end method

.method public setBadgeViewBorder(I)V
    .locals 1

    .prologue
    .line 396
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setShowPointViewBorder(Z)V

    .line 398
    return-void
.end method

.method public setBadgeViewVisibility(I)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    return-void
.end method

.method public setContentViewType(I)V
    .locals 0

    .prologue
    .line 383
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    .line 384
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    iput-object p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    iput v2, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawableId:I

    .line 442
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-eq v0, v1, :cond_0

    .line 443
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setContentViewType(I)V

    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;I)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    return-void
.end method

.method public setDrawableId(I)V
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 452
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerDrawableId:I

    .line 453
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-eq v0, v1, :cond_0

    .line 454
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setContentViewType(I)V

    .line 455
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->removeView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    return-void
.end method

.method public setModeType(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mModeType:I

    .line 481
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_TEXTVIEW:I

    if-ne p1, v0, :cond_2

    .line 482
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-eq v0, v1, :cond_0

    .line 483
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setContentViewType(I)V

    .line 484
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;I)V

    .line 488
    :cond_0
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_OUTSIDE_TOP_RIGHT:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 511
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->requestLayout()V

    .line 512
    return-void

    .line 489
    :cond_2
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_AVATAR:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_SYSTEM:I

    if-ne p1, v0, :cond_1

    .line 493
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    if-eq v0, v1, :cond_4

    .line 494
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_ICON:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setContentViewType(I)V

    .line 495
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->removeView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;I)V

    .line 499
    :cond_4
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->POINT_CENTER_AT_BOTH_INSIDE:I

    iput v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 500
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_AVATAR:I

    if-ne p1, v0, :cond_5

    .line 501
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/NewBadgeView;->setBadgeViewBorder(I)V

    .line 502
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/NewBadgeView;->setShowPointViewBorder(Z)V

    goto :goto_0

    .line 503
    :cond_5
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_LAUNCH:I

    if-ne p1, v0, :cond_6

    .line 504
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_new_message_view_space_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/NewMessageView;->setNewMessageSpace(I)V

    .line 505
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_launch_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setBadgeViewBorder(I)V

    goto :goto_0

    .line 506
    :cond_6
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->BADGE_VIEW_MODE_ICON_SYSTEM:I

    if-ne p1, v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_new_message_view_space_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/NewMessageView;->setNewMessageSpace(I)V

    .line 508
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setBadgeViewBorder(I)V

    goto :goto_0
.end method

.method public setPointCenterLocation(I)V
    .locals 0

    .prologue
    .line 466
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointCenterLocation:I

    .line 467
    return-void
.end method

.method public setPointViewTextSize(F)V
    .locals 2

    .prologue
    .line 515
    iput p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewTextSize:F

    .line 516
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewTextSize:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/NewMessageView;->setTextSize(F)V

    .line 517
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewBadgeView;->requestLayout()V

    .line 518
    return-void
.end method

.method public setShowPointViewBorder(Z)V
    .locals 2

    .prologue
    .line 387
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mShowPointViewBorder:Ljava/lang/Boolean;

    .line 388
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    if-lez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    iget v1, p0, Lcom/meizu/common/widget/NewBadgeView;->mPointViewBorder:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/NewMessageView;->setBorderWidth(I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/NewMessageView;->setShowBorder(Z)V

    .line 392
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mNewMessageView:Lcom/meizu/common/widget/NewMessageView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/NewMessageView;->requestLayout()V

    .line 393
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/meizu/common/widget/NewBadgeView;->mContainerText:Ljava/lang/String;

    .line 427
    iget v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mContentViewType:I

    sget v1, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    if-eq v0, v1, :cond_0

    .line 428
    sget v0, Lcom/meizu/common/widget/NewBadgeView;->CONTENT_VIEW_TYPE_STRING:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->setContentViewType(I)V

    .line 429
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mIconContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewBadgeView;->removeView(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/NewBadgeView;->addView(Landroid/view/View;I)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewBadgeView;->mStringContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method
