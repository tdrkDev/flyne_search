.class public Lcom/meizu/common/widget/NewMessageView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT:I = 0x3e7

.field private static final SHOW_DOT:I = 0x0

.field private static final SHOW_NUMBER:I = 0x1


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private drawableHeight:I

.field private drawableWidth:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:I

.field private mCurrentStage:I

.field private mHeight:I

.field private mHideNumRadius:I

.field private mIsHide:Z

.field private mNewMessageColor:I

.field private mShowBorder:Z

.field private mSpace:I

.field private mTextColor:I

.field private mTextContent:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F

.field private mWidth:I

.field private rectF:Landroid/graphics/RectF;

.field private viewMaxHeight:I

.field private viewMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    .line 27
    iput-boolean v1, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    .line 27
    iput-boolean v1, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    .line 27
    iput-boolean v1, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private getMeasure(IIII)I
    .locals 0

    .prologue
    .line 167
    sparse-switch p4, :sswitch_data_0

    .line 184
    :cond_0
    :goto_0
    :sswitch_0
    return p2

    .line 172
    :sswitch_1
    if-lt p1, p2, :cond_0

    .line 174
    if-le p1, p3, :cond_1

    move p2, p3

    .line 175
    goto :goto_0

    :cond_1
    move p2, p1

    .line 179
    goto :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_layout_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    .line 69
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_layout_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->intPaint()V

    .line 72
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->initTextPaint()V

    .line 73
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->initBorder()V

    .line 74
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 110
    sget-object v0, Lcom/meizu/common/R$styleable;->NewMessageView:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/NewMessageView;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextColor:I

    .line 115
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageTextSize:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    .line 117
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_new_message_view_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    .line 118
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageColor:I

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mNewMessageColor:I

    .line 119
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageBorderColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderColor:I

    .line 120
    sget v1, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageBorderWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_new_message_view_border_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private initBorder()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    .line 78
    return-void
.end method

.method private initTextPaint()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    .line 89
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    const-string v0, "SFPRO-bold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    .line 96
    return-void
.end method

.method private intPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mNewMessageColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    return-void
.end method

.method private setRectF(FFFF)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 85
    return-void
.end method


# virtual methods
.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    return v0
.end method

.method public getNewMessageGravity()I
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method public getNewMessageMargin()[I
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v0, v1, v2

    return-object v1
.end method

.method public getNewMessageNum()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 287
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    return v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public getViewMaxHeight()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    return v0
.end method

.method public getViewMaxWidth()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    return v0
.end method

.method public isHide()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 190
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    if-ne v0, v8, :cond_2

    .line 194
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    .line 195
    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-float v1, v2

    .line 196
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    int-to-double v2, v2

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v5, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 197
    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    add-int/2addr v3, v4

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-float v3, v4

    .line 198
    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 199
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/common/widget/NewMessageView;->setRectF(FFFF)V

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    if-ne v0, v8, :cond_3

    .line 206
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/common/widget/NewMessageView;->setRectF(FFFF)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iget-object v4, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 223
    :cond_1
    return-void

    .line 202
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iget-object v4, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 133
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 136
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/meizu/common/util/ResourceUtils;->sp2px(FLandroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mSpace:I

    if-nez v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/meizu/common/R$dimen;->mc_new_message_view_space_large:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    .line 142
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iget v6, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    .line 143
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    if-ge v0, v1, :cond_0

    .line 144
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v0, :cond_2

    .line 147
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 148
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iget v6, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 160
    :goto_1
    iget v6, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    invoke-direct {p0, v4, v1, v6, v2}, Lcom/meizu/common/widget/NewMessageView;->getMeasure(IIII)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    .line 161
    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    invoke-direct {p0, v5, v0, v1, v3}, Lcom/meizu/common/widget/NewMessageView;->getMeasure(IIII)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    .line 162
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/NewMessageView;->setMeasuredDimension(II)V

    .line 163
    return-void

    .line 140
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mSpace:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 150
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    .line 151
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    goto :goto_1

    .line 154
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v0, :cond_4

    .line 155
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_1

    .line 157
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    mul-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .prologue
    .line 380
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    .line 381
    return-void
.end method

.method public setHide(Z)V
    .locals 2

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    .line 241
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNewMessageGravity(I)V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 352
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    return-void
.end method

.method public setNewMessageMargin(IIII)V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 412
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 413
    int-to-float v1, p3

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 414
    int-to-float v1, p4

    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 415
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    return-void
.end method

.method public setNewMessageNum(I)V
    .locals 2

    .prologue
    const/16 v0, 0x3e7

    .line 267
    const/4 v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 268
    if-lt p1, v0, :cond_1

    move p1, v0

    .line 273
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->requestLayout()V

    .line 275
    return-void

    .line 270
    :cond_1
    if-gtz p1, :cond_0

    .line 271
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setNewMessageSpace(I)V
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mSpace:I

    .line 300
    return-void
.end method

.method public setShowBorder(Z)V
    .locals 0

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 372
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->isHide()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setVisibility(I)V

    .line 258
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    .line 259
    return-void

    .line 256
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NewMessageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 0

    .prologue
    .line 303
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    .line 304
    return-void
.end method

.method public setViewMaxSize(II)V
    .locals 0

    .prologue
    .line 312
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    .line 313
    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    .line 314
    return-void
.end method
