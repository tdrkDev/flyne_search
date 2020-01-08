.class public Lcom/meizu/common/util/TabScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentTabOffset:F

.field private mCurrentTabPos:I

.field private mOldTabOffset:F

.field private mTabIndicator:Landroid/graphics/drawable/Drawable;

.field private mTabIndicatorHeight:I

.field private mTabLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabParentView:Landroid/view/ViewGroup;

.field private mTabViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 81
    iput v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    sget-object v1, Lcom/meizu/common/R$styleable;->TabScroller:[I

    sget v2, Lcom/meizu/common/R$attr;->MeizuCommon_TabScrollerStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    sget v1, Lcom/meizu/common/R$styleable;->TabScroller_mcTabIndicatorDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_tab_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 97
    iput-object p2, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    .line 98
    return-void
.end method


# virtual methods
.method public addTabView(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 151
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method public addTabView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 219
    if-nez v7, :cond_0

    .line 275
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-lt v0, v7, :cond_4

    .line 224
    add-int/lit8 v0, v7, -0x1

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 229
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    iget v4, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 233
    :goto_3
    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_e

    .line 234
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    move v4, v1

    .line 236
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v6, v1, v5

    .line 240
    const/4 v1, 0x0

    .line 242
    const/4 v5, 0x0

    .line 246
    iget v9, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    iget v10, p0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget v9, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v7, v7, -0x1

    if-ge v9, v7, :cond_8

    .line 248
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 249
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 250
    :goto_5
    if-ltz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_c

    .line 251
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object v2, v1

    .line 262
    :goto_6
    if-eqz v2, :cond_b

    .line 263
    sub-int v1, v3, v4

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    mul-float/2addr v1, v3

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 265
    int-to-float v2, v6

    int-to-float v0, v0

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 268
    :goto_7
    int-to-float v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 270
    iget-object v2, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    sub-int v4, v8, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 225
    :cond_4
    iget v0, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-gez v0, :cond_1

    .line 226
    iput v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 229
    goto/16 :goto_2

    .line 232
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto/16 :goto_3

    .line 249
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_5

    .line 253
    :cond_8
    iget v7, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    iget v9, p0, Lcom/meizu/common/util/TabScroller;->mOldTabOffset:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_d

    iget v7, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    if-lez v7, :cond_d

    .line 255
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 256
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    iget v3, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 257
    :goto_8
    if-ltz v3, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_c

    .line 258
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object v2, v1

    goto/16 :goto_6

    .line 256
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_8

    :cond_b
    move v0, v5

    move v1, v6

    goto :goto_7

    :cond_c
    move-object v2, v1

    goto/16 :goto_6

    :cond_d
    move-object v2, v1

    goto/16 :goto_6

    :cond_e
    move v4, v1

    goto/16 :goto_4
.end method

.method public onTabScrolled(IF)V
    .locals 1

    .prologue
    .line 206
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 207
    iput p2, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    .line 208
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 211
    :cond_0
    return-void
.end method

.method public removeAllTabView()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 198
    :cond_0
    return-void
.end method

.method public removeTabView(I)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/util/TabScroller;->removeTabView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeTabView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 178
    :cond_0
    return v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabPos:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mCurrentTabOffset:F

    .line 132
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setTabIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 109
    :cond_0
    return-void
.end method

.method public setTabIndicatorHeight(I)V
    .locals 0

    .prologue
    .line 116
    if-lez p1, :cond_0

    .line 117
    iput p1, p0, Lcom/meizu/common/util/TabScroller;->mTabIndicatorHeight:I

    .line 119
    :cond_0
    return-void
.end method

.method public setTabLength([I)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 164
    iget-object v3, p0, Lcom/meizu/common/util/TabScroller;->mTabLength:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method
