.class public Lcom/meizu/flyme/palette/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/palette/b$b;,
        Lcom/meizu/flyme/palette/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/meizu/flyme/palette/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/meizu/flyme/palette/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/flyme/palette/b$b;-><init>(Lcom/meizu/flyme/palette/b$1;)V

    sput-object v0, Lcom/meizu/flyme/palette/b;->a:Lcom/meizu/flyme/palette/b$b;

    return-void
.end method

.method private static a(I)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v3, 0x3f6b851f    # 0.92f

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 220
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 221
    aget v1, v0, v7

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    aget v1, v0, v4

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v1, v0, v4

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 222
    aput v3, v0, v7

    .line 224
    :cond_0
    aget v1, v0, v6

    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    aget v1, v0, v6

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    aget v1, v0, v7

    float-to-double v2, v1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 225
    const v1, 0x3ecccccd    # 0.4f

    aput v1, v0, v6

    .line 228
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 3

    .prologue
    .line 166
    const/high16 v0, -0x1000000

    .line 167
    if-eqz p0, :cond_1

    .line 168
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    sget-object v1, Lcom/meizu/flyme/palette/a;->a:Lcom/meizu/flyme/palette/a;

    .line 170
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 175
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 195
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 203
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/meizu/flyme/palette/b;->a(I)I

    move-result v0

    return v0

    .line 178
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 179
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 182
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 185
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 188
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/palette/b;->a(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/meizu/flyme/palette/b;->a(Ljava/util/List;)I

    move-result v0

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    const/high16 v9, -0x1000000

    .line 63
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/support/v7/graphics/Palette$Swatch;

    .line 71
    invoke-virtual {v8}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v7

    .line 72
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 73
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 74
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 75
    invoke-virtual {v8}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    .line 76
    new-instance v0, Lcom/meizu/flyme/palette/b$a;

    const/4 v4, 0x0

    aget v4, v6, v4

    const/4 v5, 0x1

    aget v5, v6, v5

    const/4 v13, 0x2

    aget v6, v6, v13

    .line 77
    invoke-virtual {v8}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/meizu/flyme/palette/b$a;-><init>(IIIFFFII)V

    .line 76
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcom/meizu/flyme/palette/b;->a:Lcom/meizu/flyme/palette/b$b;

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 82
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/meizu/flyme/palette/b$a;

    .line 83
    iget-boolean v0, v1, Lcom/meizu/flyme/palette/b$a;->j:Z

    if-nez v0, :cond_3

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/meizu/flyme/palette/b$a;->j:Z

    .line 85
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 86
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/palette/b$a;

    .line 87
    iget-boolean v4, v0, Lcom/meizu/flyme/palette/b$a;->j:Z

    if-nez v4, :cond_1

    .line 88
    iget v4, v1, Lcom/meizu/flyme/palette/b$a;->d:F

    iget v5, v0, Lcom/meizu/flyme/palette/b$a;->d:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, v1, Lcom/meizu/flyme/palette/b$a;->e:F

    iget v5, v0, Lcom/meizu/flyme/palette/b$a;->e:F

    sub-float/2addr v4, v5

    .line 89
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, v1, Lcom/meizu/flyme/palette/b$a;->f:F

    iget v5, v0, Lcom/meizu/flyme/palette/b$a;->f:F

    sub-float/2addr v4, v5

    .line 90
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 91
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/meizu/flyme/palette/b$a;->j:Z

    .line 92
    iget v4, v1, Lcom/meizu/flyme/palette/b$a;->h:I

    iget v0, v0, Lcom/meizu/flyme/palette/b$a;->h:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/meizu/flyme/palette/b$a;->h:I

    .line 85
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 96
    :cond_2
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 99
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 100
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/palette/b$a;

    .line 101
    iget v1, v0, Lcom/meizu/flyme/palette/b$a;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 102
    const/4 v1, 0x1

    move v2, v1

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 103
    iget v3, v0, Lcom/meizu/flyme/palette/b$a;->h:I

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/palette/b$a;

    iget v1, v1, Lcom/meizu/flyme/palette/b$a;->h:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_7

    .line 104
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/palette/b$a;

    .line 118
    :cond_5
    iget v0, v0, Lcom/meizu/flyme/palette/b$a;->g:I

    .line 120
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 121
    invoke-interface {v11}, Ljava/util/List;->clear()V

    move v9, v0

    .line 123
    :cond_6
    return v9

    .line 102
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_8
    move v0, v9

    goto :goto_4
.end method

.method private static a(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 207
    if-nez p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    .line 212
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 213
    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 214
    aget v1, v2, v0

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
