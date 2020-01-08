.class public Lcom/meizu/common/widget/ContentToastLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field public static final TOAST_TYPE_ERROR:I = 0x1

.field public static final TOAST_TYPE_NORMAL:I = 0x0

.field public static final TOAST_TYPE_TEXT:I = 0x2


# instance fields
.field private mActionIconView:Landroid/widget/ImageView;

.field private mActionTextAppearance:I

.field private mActionTextView:Landroid/widget/TextView;

.field private mActionViewBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mLayoutBackground:Landroid/graphics/drawable/Drawable;

.field private mMaxIconSize:I

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mSeparatorView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTitleTextAppearance:I

.field private mTitleView:Landroid/widget/TextView;

.field private mToastType:I

.field private mWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mWarningView:Landroid/widget/ImageView;

.field private mWidgetLayout:Landroid/widget/LinearLayout;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/meizu/common/R$attr;->mzContentToastLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    .line 62
    sget-object v0, Lcom/meizu/common/R$styleable;->mzContentToastLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    sget v1, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextAppearance:I

    .line 64
    sget v1, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzTitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    .line 65
    sget v1, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzContentToastBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v1, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    sget v1, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionViewBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 70
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    sget v1, Lcom/meizu/common/R$layout;->mc_content_toast_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v0, Lcom/meizu/common/R$id;->mc_content_toast_parent:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/meizu/common/R$id;->mc_toast_separator:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    .line 81
    sget v0, Lcom/meizu/common/R$id;->mc_content_toast_container:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/meizu/common/R$id;->mz_action_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/meizu/common/R$id;->mz_action_icon:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    .line 86
    return-void
.end method

.method private ensureActionView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 166
    iget v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 183
    const-class v0, Lcom/meizu/common/widget/ContentToastLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 125
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 126
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 129
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-le v1, v2, :cond_0

    .line 130
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 131
    iget v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 132
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 134
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-le v0, v2, :cond_1

    .line 135
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 136
    iget v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 137
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 139
    :cond_1
    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public setActionText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void
.end method

.method public setContainerLayoutPadding(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    return-void
.end method

.method public setIsShowSeparator(Z)V
    .locals 2

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method public setParentLayoutPadding(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 229
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    return-void
.end method

.method public setTitleGravity(I)V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 271
    and-int/lit8 v1, p1, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 282
    :goto_0
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_1
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void

    .line 273
    :sswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 276
    :sswitch_1
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 279
    :sswitch_2
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 284
    :pswitch_1
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 287
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 290
    :pswitch_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setTitleTextMaxLine(I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 107
    return-void
.end method

.method public setToastType(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iput p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :goto_0
    return-void

    .line 247
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_ic_content_toast_warning:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_arrow_next_right_warning:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_content_toast_text_color_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_content_toast_bg_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setWarningIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method
