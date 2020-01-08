.class public Lcom/meizu/common/util/GradientDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDarkerColor(I)I
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 164
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 165
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3d4ccccd    # 0.05f

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 166
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 167
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getDisableColor(I)I
    .locals 4

    .prologue
    .line 188
    const/16 v0, 0x4c

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getLighterColor(I)I
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 151
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 152
    const/4 v1, 0x1

    aget v2, v0, v1

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 153
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 154
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getPressedColor(I)I
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 177
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 178
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 179
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getRectStateListDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 121
    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getLighterColor(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getRectStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRectStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v3, [I

    aput p1, v2, v6

    aput p2, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 134
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v3, [I

    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v4

    aput v4, v3, v6

    invoke-static {p2}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v4

    aput v4, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 135
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 136
    const v3, 0x10100a7

    .line 137
    const v4, 0x101009e

    .line 138
    new-array v5, v7, [I

    aput v3, v5, v6

    invoke-virtual {v2, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 139
    new-array v3, v7, [I

    aput v4, v3, v6

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 140
    new-array v1, v6, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 141
    return-object v2
.end method

.method public static getStateListDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 57
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    invoke-static {v0, p2}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 61
    invoke-static {v1, p2}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 68
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 69
    const v3, 0x10100a7

    .line 70
    const v4, 0x101009e

    .line 71
    new-array v5, v9, [I

    aput v4, v5, v7

    neg-int v6, v3

    aput v6, v5, v8

    invoke-virtual {v2, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    new-array v5, v9, [I

    aput v4, v5, v7

    aput v3, v5, v8

    invoke-virtual {v2, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 73
    new-array v1, v7, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    return-object v2
.end method

.method public static getStateListDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1, p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_cir_btn_radius_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    invoke-static {p0, p1, p2, v0}, Lcom/meizu/common/util/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v10, [I

    aput p1, v2, v8

    aput p2, v2, v9

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 99
    invoke-static {v0, p3}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 100
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v10, [I

    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v4

    aput v4, v3, v8

    invoke-static {p2}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v4

    aput v4, v3, v9

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 101
    invoke-static {v1, p3}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$drawable;->mz_btn_corner_disable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 104
    const v4, 0x10100a7

    .line 105
    const v5, 0x101009e

    .line 106
    new-array v6, v10, [I

    aput v5, v6, v8

    neg-int v7, v4

    aput v7, v6, v9

    invoke-virtual {v3, v6, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 107
    new-array v6, v10, [I

    aput v5, v6, v8

    aput v4, v6, v9

    invoke-virtual {v3, v6, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 108
    new-array v1, v9, [I

    neg-int v4, v5

    aput v4, v1, v8

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 109
    new-array v1, v8, [I

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 110
    return-object v3
.end method

.method public static getStateListDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_cir_btn_redius_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_label_panel_bnt_boder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 28
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 29
    invoke-static {v2, v0}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 30
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mz_search_button_pressed_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 32
    invoke-static {v3, v0}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$color;->mz_search_button_boder_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 35
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 36
    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_btn_corner_disable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 43
    const v4, 0x10100a7

    .line 44
    const v5, 0x101009e

    .line 45
    new-array v6, v10, [I

    aput v5, v6, v8

    neg-int v7, v4

    aput v7, v6, v9

    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 46
    new-array v6, v10, [I

    aput v5, v6, v8

    aput v4, v6, v9

    invoke-virtual {v1, v6, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    new-array v3, v9, [I

    neg-int v4, v5

    aput v4, v3, v8

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    new-array v0, v8, [I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 49
    return-object v1

    .line 38
    :cond_0
    invoke-virtual {v2, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 39
    invoke-virtual {v3, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0
.end method

.method public static makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 199
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 200
    return-void
.end method
