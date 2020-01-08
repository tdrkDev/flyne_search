.class public Lcom/meizu/common/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;,
        Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    }
.end annotation


# static fields
.field public static final GUIDE_LAYOUT_MODE_AUTO:I = 0x6

.field public static final GUIDE_LAYOUT_MODE_CENTER:I = 0x3

.field public static final GUIDE_LAYOUT_MODE_CENTER_HORIZONTAL:I = 0x1

.field public static final GUIDE_LAYOUT_MODE_CENTER_VERTICAL:I = 0x2

.field public static final GUIDE_LAYOUT_MODE_DOWN:I = 0x5

.field public static final GUIDE_LAYOUT_MODE_UP:I = 0x4


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mArrowOffx:I

.field private mContext:Landroid/content/Context;

.field private mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

.field private mLayoutMode:I

.field private mOffX:I

.field private mOffY:I

.field private mOnCloseIconClickListener:Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;

.field private mParentView:Landroid/view/View;

.field private mPopX:I

.field private mPopY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 171
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/GuidePopupWindow;->setTouchable(Z)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->setClippingEnabled(Z)V

    .line 175
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->setWindowLayoutMode(II)V

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 177
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    const/4 v0, 0x0

    sget-object v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow:[I

    sget v2, Lcom/meizu/common/R$attr;->MeizuCommon_GuidePopupWindow:I

    invoke-virtual {p1, v0, v1, v2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    sget v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    sget v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowDown:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 182
    sget v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowUp:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 183
    sget v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundRight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_guide_left_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_guide_middle_down_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_guide_middle_up_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_guide_right_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 193
    :cond_1
    new-instance v0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/GuidePopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/GuidePopupWindow;[I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->doShow([I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/GuidePopupWindow;)Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOnCloseIconClickListener:Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;

    return-object v0
.end method

.method private computeGuidePosition([ILandroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 332
    if-nez p2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, v6, v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    .line 337
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 343
    new-array v2, v8, [I

    .line 344
    invoke-direct {p0, p2, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPosition(Landroid/view/View;[I)V

    .line 347
    aget v3, p1, v8

    aget v4, p1, v6

    sub-int/2addr v3, v4

    .line 349
    if-lt v0, v3, :cond_2

    .line 351
    aget v0, p1, v6

    aget v1, v2, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getCloseIconWidth()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$400(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V

    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, v6, v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    .line 367
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    packed-switch v0, :pswitch_data_0

    .line 378
    aget v0, v2, v7

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    if-ge v0, v1, :cond_5

    .line 379
    iput v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 380
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    .line 388
    :goto_2
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    packed-switch v0, :pswitch_data_1

    .line 403
    :goto_3
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 404
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 407
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    add-int v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v1

    .line 410
    if-le v2, v0, :cond_6

    .line 415
    :goto_4
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowPosition(I)V

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 419
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_0

    .line 355
    :cond_2
    aget v4, v2, v6

    add-int/2addr v4, v1

    aget v5, p1, v6

    if-gt v4, v5, :cond_3

    .line 357
    aget v0, p1, v6

    aget v1, v2, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_1

    .line 358
    :cond_3
    aget v4, v2, v6

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    aget v5, p1, v8

    if-le v4, v5, :cond_4

    .line 360
    aget v1, p1, v8

    sub-int v0, v1, v0

    aget v1, v2, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_1

    .line 362
    :cond_4
    iput v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_1

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 370
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto/16 :goto_2

    .line 373
    :pswitch_1
    iput v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto/16 :goto_2

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto/16 :goto_2

    .line 390
    :pswitch_2
    aget v0, p1, v6

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aget v1, v2, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_3

    .line 393
    :pswitch_3
    aget v0, p1, v7

    aget v1, p1, v9

    aget v3, p1, v7

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aget v1, v2, v7

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_3

    .line 396
    :pswitch_4
    aget v0, p1, v6

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aget v1, v2, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 397
    aget v0, p1, v7

    aget v1, p1, v9

    aget v3, p1, v7

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    aget v1, v2, v7

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_3

    .line 412
    :cond_6
    if-ge v2, v1, :cond_7

    move v0, v1

    .line 413
    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_4

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 388
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private doShow([I)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 323
    return-void
.end method

.method private getAnchorPosition(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method

.method private getParentBound(Landroid/view/View;[I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 791
    if-nez p1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 793
    aput v2, p2, v2

    .line 794
    aput v2, p2, v3

    .line 795
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v1, p2, v4

    .line 796
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v0, p2, v5

    .line 805
    :goto_0
    return-void

    .line 798
    :cond_0
    new-array v0, v4, [I

    .line 799
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 800
    aget v1, v0, v2

    aput v1, p2, v2

    .line 801
    aget v0, v0, v3

    aput v0, p2, v3

    .line 802
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v4

    .line 803
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v5

    goto :goto_0
.end method

.method private tryShow([ILandroid/view/View;II)V
    .locals 2

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 296
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 297
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 299
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 300
    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPosition(Landroid/view/View;[I)V

    .line 301
    const/4 v1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->doShow([I)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/meizu/common/widget/GuidePopupWindow$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$1;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;[I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public disableArrow(Z)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->disableArrow(Z)V

    .line 518
    return-void
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setArrowPosition(I)V
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    .line 481
    return-void
.end method

.method public setColorStyle(I)V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .prologue
    .line 429
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 430
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 0

    .prologue
    .line 508
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 509
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setText(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    return-void
.end method

.method public setOnCloseIconClickListener(Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOnCloseIconClickListener:Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;

    .line 443
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setTextSize(I)V

    .line 785
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .prologue
    .line 438
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 439
    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/graphics/Rect;Landroid/view/View;II)V

    .line 280
    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 284
    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    .line 285
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    .line 286
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    aput v2, v0, v1

    .line 287
    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    aput v2, v0, v1

    .line 288
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/meizu/common/widget/GuidePopupWindow;->tryShow([ILandroid/view/View;II)V

    .line 289
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;II)V

    .line 228
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;II)V

    .line 242
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 263
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->getParentBound(Landroid/view/View;[I)V

    .line 265
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/meizu/common/widget/GuidePopupWindow;->tryShow([ILandroid/view/View;II)V

    .line 266
    return-void
.end method

.method public update(IIIIZ)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 454
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->getParentBound(Landroid/view/View;[I)V

    .line 455
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 457
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 458
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPosition(Landroid/view/View;[I)V

    .line 459
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/meizu/common/widget/GuidePopupWindow;->update(IIII)V

    goto :goto_0
.end method
