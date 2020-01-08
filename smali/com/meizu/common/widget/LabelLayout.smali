.class public Lcom/meizu/common/widget/LabelLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/LabelLayout$LayoutParams;,
        Lcom/meizu/common/widget/LabelLayout$ImagePlayer;,
        Lcom/meizu/common/widget/LabelLayout$DrawableImagePlayer;,
        Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;,
        Lcom/meizu/common/widget/LabelLayout$LabelColor;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_LINES:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private mHotWordsHeight:I

.field private mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mHotWordsTextSize:F

.field private mIconMarginBottom:I

.field private mIconMarginLeft:I

.field private mIconMaxHeight:I

.field private mIconMaxWidth:I

.field private mItemMargin:I

.field private mLabelInnerSpace:I

.field private mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mLabelRadiusCorner:I

.field private mLabelTextSize:F

.field private final mLineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLineMargin:I

.field private final mLineMargins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxLine:I

.field private mMediumTypeface:Landroid/graphics/Typeface;

.field private mMiniLabelInnerSpace:I

.field private mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private mMiniLabelTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x2

    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800003

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    .line 132
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    .line 212
    iput-object p1, p0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    .line 213
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMediumTypeface:Landroid/graphics/Typeface;

    .line 215
    sget-object v0, Lcom/meizu/common/R$styleable;->LabelLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    sget v1, Lcom/meizu/common/R$styleable;->LabelLayout_labelHeight:I

    .line 217
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->label_layout_label_height_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 218
    sget v2, Lcom/meizu/common/R$styleable;->LabelLayout_lineMargin:I

    .line 219
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_line_margin_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    .line 220
    sget v2, Lcom/meizu/common/R$styleable;->LabelLayout_itemMargin:I

    .line 221
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_item_margin_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 220
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    .line 222
    sget v2, Lcom/meizu/common/R$styleable;->LabelLayout_labelRadiusCorner:I

    .line 223
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_label_radius_corner_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 222
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCorner:I

    .line 224
    sget v2, Lcom/meizu/common/R$styleable;->LabelLayout_hotWordsHeight:I

    .line 225
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_hot_words_height_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 224
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsHeight:I

    .line 226
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_label_inner_space_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelInnerSpace:I

    .line 229
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_label_text_size_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 230
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelTextSize:F

    .line 231
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_hot_words_text_size_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 232
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsTextSize:F

    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_icon_margin_left_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginLeft:I

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_icon_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginBottom:I

    .line 235
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_icon_max_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxWidth:I

    .line 236
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_icon_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxHeight:I

    .line 238
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_mini_label_height_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->label_layout_mini_line_margin_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->label_layout_mini_item_margin_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 241
    invoke-direct {p0, v5, v0, v2, v3}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 242
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_mini_label_inner_space_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelInnerSpace:I

    .line 243
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->label_layout_mini_label_text_size_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 244
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelTextSize:F

    .line 246
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    iget v2, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    invoke-direct {p0, v5, v1, v0, v2}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 247
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsHeight:I

    iget v1, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargin:I

    iget v2, p0, Lcom/meizu/common/widget/LabelLayout;->mItemMargin:I

    invoke-direct {p0, v5, v0, v1, v2}, Lcom/meizu/common/widget/LabelLayout;->createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 248
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x3

    goto/16 :goto_0
.end method

.method private createLayoutParams(IIII)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    .line 252
    invoke-virtual {v0, v1, v1, v1, p3}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->setMargins(IIII)V

    .line 253
    invoke-virtual {v0, p4}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->setMarginEnd(I)V

    .line 254
    const/16 v1, 0x50

    iput v1, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    .line 255
    return-object v0
.end method

.method private static isIcs()Z
    .locals 2

    .prologue
    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHotWords(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 618
    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/common/widget/LabelLayout;->addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    check-cast v0, Lcom/meizu/common/widget/LabelLayout$ImagePlayer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;->addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Lcom/meizu/common/widget/LabelLayout$ImagePlayer;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;I)Landroid/widget/TextView;
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 626
    iget-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;->addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$DrawableImagePlayer;

    invoke-direct {v0, p3}, Lcom/meizu/common/widget/LabelLayout$DrawableImagePlayer;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;->addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Lcom/meizu/common/widget/LabelLayout$ImagePlayer;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addHotWords(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;Lcom/meizu/common/widget/LabelLayout$ImagePlayer;)Landroid/widget/TextView;
    .locals 17

    .prologue
    .line 634
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 635
    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/LabelLayout;->mMediumTypeface:Landroid/graphics/Typeface;

    .line 638
    :cond_0
    new-instance v1, Lcom/meizu/common/widget/LabelItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsTextSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelInnerSpace:I

    .line 643
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$300(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v7

    .line 644
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$400(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v8

    .line 645
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$500(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCorner:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    iget v11, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/LabelLayout;->mIconMaxHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout;->mIconMarginBottom:I

    move/from16 v16, v0

    move-object/from16 v3, p1

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v16}, Lcom/meizu/common/widget/LabelItem;-><init>(Landroid/content/Context;Ljava/lang/String;FLandroid/graphics/Typeface;IIIIIILcom/meizu/common/widget/LabelLayout$ImagePlayer;IIII)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mHotWordsLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    invoke-virtual {v1}, Lcom/meizu/common/widget/LabelItem;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    return-object v1
.end method

.method public addLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;->addLabel(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$LabelColor;)Landroid/widget/TextView;
    .locals 17

    .prologue
    .line 594
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 595
    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/LabelLayout;->mMediumTypeface:Landroid/graphics/Typeface;

    .line 598
    :cond_0
    new-instance v1, Lcom/meizu/common/widget/LabelItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelTextSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelInnerSpace:I

    .line 603
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$300(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v7

    .line 604
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$400(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v8

    .line 605
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$LabelColor;->access$500(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCorner:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    iget v11, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v16}, Lcom/meizu/common/widget/LabelItem;-><init>(Landroid/content/Context;Ljava/lang/String;FLandroid/graphics/Typeface;IIIIIILcom/meizu/common/widget/LabelLayout$ImagePlayer;IIII)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {v1}, Lcom/meizu/common/widget/LabelItem;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    return-object v1
.end method

.method public addMiniLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 566
    sget-object v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;->addMiniLabel(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addMiniLabel(Ljava/lang/String;Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)Landroid/widget/TextView;
    .locals 17

    .prologue
    .line 570
    new-instance v1, Lcom/meizu/common/widget/LabelItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelTextSize:F

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelInnerSpace:I

    .line 575
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->access$000(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I

    move-result v7

    .line 576
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->access$100(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I

    move-result v8

    .line 577
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->access$200(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCorner:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    iget v11, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v16}, Lcom/meizu/common/widget/LabelItem;-><init>(Landroid/content/Context;Ljava/lang/String;FLandroid/graphics/Typeface;IIIIIILcom/meizu/common/widget/LabelLayout$ImagePlayer;IIII)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LabelLayout;->mMiniLabelLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-virtual {v1}, Lcom/meizu/common/widget/LabelItem;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 538
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 1

    .prologue
    .line 522
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 24

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v4

    sub-int v10, v3, v4

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getHeight()I

    move-result v11

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v8

    .line 362
    const/4 v7, 0x0

    .line 363
    const/4 v6, 0x0

    .line 364
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    sparse-switch v3, :sswitch_data_0

    .line 370
    const/4 v3, 0x0

    move v4, v3

    .line 380
    :goto_0
    const/4 v3, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    move v5, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 384
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v13, 0x8

    if-ne v3, v13, :cond_0

    .line 380
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 373
    :sswitch_0
    const/high16 v3, 0x3f000000    # 0.5f

    move v4, v3

    .line 374
    goto :goto_0

    .line 376
    :sswitch_1
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 390
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 391
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v3, v3, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v14

    .line 393
    add-int v14, v8, v13

    if-le v14, v10, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    sub-int v8, v10, v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v14

    add-int/2addr v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/2addr v9, v7

    .line 400
    const/4 v7, 0x0

    .line 401
    const/4 v8, 0x0

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 405
    :cond_1
    add-int/2addr v8, v13

    .line 406
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 407
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    sub-int v5, v10, v8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int v4, v9, v7

    .line 416
    const/4 v3, 0x0

    .line 417
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_1

    move v6, v3

    .line 429
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v13

    .line 433
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    move v7, v3

    .line 435
    :goto_4
    const/4 v3, 0x0

    move v14, v3

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_c

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 440
    const/4 v3, 0x0

    .line 441
    if-eqz v7, :cond_3

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getWidth()I

    move-result v3

    .line 445
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    .line 447
    const/4 v4, 0x0

    move v15, v4

    move v11, v3

    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    .line 449
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 450
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    if-lt v14, v4, :cond_5

    .line 451
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/LabelLayout;->removeView(Landroid/view/View;)V

    move v3, v11

    move v4, v12

    .line 447
    :goto_7
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v11, v3

    move v12, v4

    goto :goto_6

    .line 422
    :sswitch_2
    sub-int v3, v11, v4

    div-int/lit8 v3, v3, 0x2

    move v6, v3

    .line 423
    goto :goto_3

    .line 425
    :sswitch_3
    sub-int v3, v11, v4

    move v6, v3

    goto :goto_3

    .line 433
    :cond_4
    const/4 v3, 0x0

    move v7, v3

    goto :goto_4

    .line 454
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v9, 0x8

    if-ne v4, v9, :cond_6

    move v3, v11

    move v4, v12

    .line 455
    goto :goto_7

    .line 458
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 461
    iget v9, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 462
    const/high16 v9, -0x80000000

    .line 465
    iget v10, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_9

    .line 466
    const/high16 v9, 0x40000000    # 2.0f

    move v10, v9

    move v9, v8

    .line 472
    :goto_8
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    sub-int v10, v17, v10

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v10, v10, v19

    const/high16 v19, 0x40000000    # 2.0f

    .line 473
    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 472
    invoke-virtual {v3, v9, v10}, Landroid/view/View;->measure(II)V

    .line 476
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 477
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 479
    const/4 v9, 0x0

    .line 481
    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 482
    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_2

    .line 496
    :cond_8
    :goto_9
    if-nez v7, :cond_a

    .line 497
    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v12

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v21, v21, v9

    add-int v21, v21, v6

    add-int v22, v12, v10

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v19, v19, v13

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v19, v19, v23

    add-int v9, v9, v19

    add-int/2addr v9, v6

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 502
    iget v3, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v10

    iget v4, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v12

    move v4, v3

    move v3, v11

    goto/16 :goto_7

    .line 467
    :cond_9
    iget v10, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    if-ltz v10, :cond_e

    .line 468
    const/high16 v10, 0x40000000    # 2.0f

    .line 469
    iget v9, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    goto :goto_8

    .line 488
    :sswitch_4
    sub-int v9, v17, v19

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    div-int/lit8 v9, v9, 0x2

    goto :goto_9

    .line 491
    :sswitch_5
    sub-int v9, v17, v19

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    goto :goto_9

    .line 504
    :cond_a
    sub-int v20, v11, v10

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v21, v21, v9

    add-int v21, v21, v6

    add-int v19, v19, v13

    iget v0, v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v19, v19, v22

    add-int v9, v9, v19

    add-int/2addr v9, v6

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 509
    invoke-virtual {v4}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v4}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, v11, v3

    move v4, v12

    goto/16 :goto_7

    .line 513
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    if-ge v14, v3, :cond_d

    .line 514
    add-int v3, v13, v17

    .line 435
    :goto_a
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v13, v3

    goto/16 :goto_5

    .line 518
    :cond_c
    return-void

    :cond_d
    move v3, v13

    goto :goto_a

    :cond_e
    move v10, v9

    move v9, v8

    goto/16 :goto_8

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 417
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch

    .line 482
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x50 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 263
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 265
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 266
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 268
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 269
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 271
    const/4 v12, 0x0

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingBottom()I

    move-result v2

    add-int v6, v1, v2

    .line 274
    const/4 v4, 0x0

    .line 275
    const/4 v11, 0x0

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getChildCount()I

    move-result v17

    .line 279
    const/4 v1, 0x0

    move v14, v1

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 282
    add-int/lit8 v1, v17, -0x1

    if-ne v14, v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    .line 284
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 285
    if-eqz v7, :cond_b

    .line 286
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 287
    add-int/2addr v6, v11

    move v2, v1

    move v1, v11

    .line 279
    :cond_0
    :goto_2
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v11, v1

    move v12, v2

    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    .line 292
    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/LabelLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 294
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 296
    const/high16 v5, -0x80000000

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v3, v8

    .line 299
    const/high16 v8, -0x80000000

    .line 302
    iget v10, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    .line 303
    const/high16 v5, 0x40000000    # 2.0f

    .line 304
    iget v10, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    iget v0, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v10, v10, v18

    sub-int/2addr v3, v10

    .line 310
    :cond_3
    :goto_3
    iget v10, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    if-ltz v10, :cond_5

    .line 311
    const/high16 v10, 0x40000000    # 2.0f

    .line 312
    iget v8, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    .line 318
    :goto_4
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    .line 320
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 322
    add-int v5, v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v13, v8

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v8, v10

    if-le v5, v8, :cond_6

    .line 324
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 327
    add-int/2addr v6, v11

    .line 328
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v1, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move v4, v3

    move v2, v12

    .line 335
    :goto_5
    if-eqz v7, :cond_0

    .line 336
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 337
    add-int/2addr v6, v1

    goto :goto_2

    .line 305
    :cond_4
    iget v10, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    if-ltz v10, :cond_3

    .line 306
    const/high16 v5, 0x40000000    # 2.0f

    .line 307
    iget v3, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    goto :goto_3

    .line 313
    :cond_5
    if-nez v16, :cond_a

    .line 314
    const/4 v10, 0x0

    .line 315
    const/4 v8, 0x0

    goto :goto_4

    .line 331
    :cond_6
    add-int/2addr v4, v3

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v12

    goto :goto_5

    .line 342
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v12

    .line 344
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v15, v2, :cond_8

    move v1, v13

    :cond_8
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/meizu/common/widget/LabelLayout;->setMeasuredDimension(II)V

    .line 345
    return-void

    :cond_9
    move v9, v6

    .line 344
    goto :goto_6

    :cond_a
    move v10, v8

    move v8, v9

    goto :goto_4

    :cond_b
    move v1, v11

    move v2, v12

    goto/16 :goto_2
.end method

.method public setGravity(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 543
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 544
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 545
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x800003

    :goto_0
    or-int/2addr v0, p1

    .line 548
    :goto_1
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 549
    or-int/lit8 v0, v0, 0x30

    .line 552
    :cond_0
    iput v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 553
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->requestLayout()V

    .line 555
    :cond_1
    return-void

    .line 545
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setMaxLine(I)V
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    .line 563
    return-void
.end method
