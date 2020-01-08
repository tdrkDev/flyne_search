.class public Lcom/meizu/common/widget/PagerIndicator;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PagerIndicator"


# instance fields
.field private mCurPosition:I

.field private mDistance:F

.field private mEnlargeRadius:F

.field private mFillColor:I

.field private mGravity:I

.field private mHighlightColor:I

.field private mPageOffset:F

.field private mPagerCount:I

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mSnap:Z

.field private mSnapPage:I

.field private mStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_PagerIndicator:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v0, Lcom/meizu/common/R$styleable;->PagerIndicator:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    sget v2, Lcom/meizu/common/R$dimen;->mc_pager_indicator_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 69
    sget v3, Lcom/meizu/common/R$dimen;->mc_pager_indicator_enlarge_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 70
    sget v4, Lcom/meizu/common/R$dimen;->mc_pager_indicator_distance:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 71
    sget v5, Lcom/meizu/common/R$color;->mc_pager_indicator_fill_color:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 72
    sget v6, Lcom/meizu/common/R$color;->mc_pager_indicator_highlight_color:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 74
    sget v6, Lcom/meizu/common/R$styleable;->PagerIndicator_mcRadius:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    .line 75
    sget v2, Lcom/meizu/common/R$styleable;->PagerIndicator_mcEnlargeRadius:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    .line 76
    sget v2, Lcom/meizu/common/R$styleable;->PagerIndicator_mcDistance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    .line 77
    sget v2, Lcom/meizu/common/R$styleable;->PagerIndicator_mcFillColor:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    .line 78
    sget v2, Lcom/meizu/common/R$styleable;->PagerIndicator_mcHighlightColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    .line 79
    sget v2, Lcom/meizu/common/R$styleable;->PagerIndicator_mcStrokeColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mStrokeColor:I

    .line 80
    sget v1, Lcom/meizu/common/R$styleable;->PagerIndicator_mcGravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mGravity:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    return-void
.end method

.method private getGradualColor(IIFI)I
    .locals 9

    .prologue
    .line 161
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 162
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 165
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 166
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 167
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 168
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 170
    if-gez p4, :cond_0

    .line 171
    int-to-float v3, v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 172
    int-to-float v0, v6

    sub-int v1, v6, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 173
    int-to-float v0, v7

    sub-int v1, v7, v4

    int-to-float v1, v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 174
    int-to-float v0, v8

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 181
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 176
    :cond_0
    int-to-float v3, v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 177
    int-to-float v0, v1

    sub-int v1, v6, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 178
    int-to-float v0, v4

    sub-int v1, v7, v4

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 179
    int-to-float v0, v5

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private getGradualRadius(FFFI)F
    .locals 1

    .prologue
    .line 194
    if-gez p4, :cond_0

    .line 195
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    .line 197
    :goto_0
    return v0

    :cond_0
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getWidth()I

    move-result v0

    .line 124
    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 126
    iget v4, p0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    .line 129
    iget v5, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    .line 130
    int-to-float v0, v0

    div-float/2addr v0, v7

    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    .line 131
    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    iget v6, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 132
    iget-object v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    iget v6, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 134
    if-ne v2, v1, :cond_2

    .line 133
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v6, v3, -0x1

    if-ne v2, v6, :cond_3

    if-eqz v1, :cond_1

    .line 136
    :cond_3
    add-int/lit8 v6, v2, 0x1

    if-eq v1, v6, :cond_1

    .line 137
    int-to-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v6, v0

    .line 139
    iget v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    iget-object v8, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 141
    :cond_4
    iget-boolean v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnap:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnapPage:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 143
    add-float/2addr v1, v0

    .line 144
    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 150
    :goto_4
    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    iget v4, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    invoke-direct {p0, v2, v3, v4, v9}, Lcom/meizu/common/widget/PagerIndicator;->getGradualColor(IIFI)I

    move-result v2

    .line 151
    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    iget v4, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    iget v6, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    invoke-direct {p0, v3, v4, v6, v9}, Lcom/meizu/common/widget/PagerIndicator;->getGradualRadius(FFFI)F

    move-result v3

    .line 152
    iget-object v4, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    invoke-direct {p0, v1, v2, v3, v10}, Lcom/meizu/common/widget/PagerIndicator;->getGradualColor(IIFI)I

    move-result v1

    .line 155
    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    iget v4, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    invoke-direct {p0, v2, v3, v4, v10}, Lcom/meizu/common/widget/PagerIndicator;->getGradualRadius(FFFI)F

    move-result v2

    .line 156
    iget-object v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 141
    goto :goto_3

    .line 147
    :cond_6
    add-float v0, v1, v4

    goto :goto_4
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 219
    const-class v0, Lcom/meizu/common/widget/PagerIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 206
    iget v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 207
    iget v1, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 209
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 210
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 212
    invoke-static {v0, p1, v4}, Lcom/meizu/common/widget/PagerIndicator;->resolveSizeAndState(III)I

    move-result v0

    .line 213
    invoke-static {v1, p2, v4}, Lcom/meizu/common/widget/PagerIndicator;->resolveSizeAndState(III)I

    move-result v1

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/PagerIndicator;->setMeasuredDimension(II)V

    .line 214
    return-void
.end method

.method public setCirclePosOffset(FI)V
    .locals 0

    .prologue
    .line 103
    iput p2, p0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 104
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->invalidate()V

    .line 106
    return-void
.end method

.method public setCirclePosition(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 98
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnapPage:I

    .line 99
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->invalidate()V

    .line 100
    return-void
.end method

.method public setPagerCount(I)V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    .line 113
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->requestLayout()V

    goto :goto_0
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnap:Z

    .line 94
    return-void
.end method
