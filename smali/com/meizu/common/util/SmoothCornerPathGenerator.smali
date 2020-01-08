.class public Lcom/meizu/common/util/SmoothCornerPathGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSmoothCorner(Landroid/graphics/Path;IFIIII)Z
    .locals 12

    .prologue
    .line 14
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 19
    sub-int v1, p5, p3

    .line 20
    sub-int v2, p6, p4

    .line 21
    mul-int/lit8 v0, p1, 0x2

    if-lt v1, v0, :cond_2

    mul-int/lit8 v0, p1, 0x2

    if-ge v2, v0, :cond_3

    .line 22
    :cond_2
    const-string v0, "SmoothCornerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radius should less than width, width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_3
    sub-int v3, v2, p1

    .line 29
    neg-int v0, p1

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_1
    if-gt v0, v4, :cond_5

    .line 32
    int-to-double v6, p1

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    float-to-double v10, p2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, p2

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 33
    neg-int v6, p1

    if-ne v0, v6, :cond_4

    .line 34
    add-int v6, v0, p1

    int-to-float v6, v6

    int-to-float v7, v3

    add-float/2addr v5, v7

    invoke-virtual {p0, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_4
    add-int v6, v0, p1

    int-to-float v6, v6

    int-to-float v7, v3

    add-float/2addr v5, v7

    invoke-virtual {p0, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 41
    :cond_5
    sub-int/2addr v2, p1

    .line 42
    sub-int v3, v1, p1

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_3
    if-gt v0, p1, :cond_6

    .line 46
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 47
    add-int v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    add-float/2addr v4, v6

    invoke-virtual {p0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 53
    :cond_6
    sub-int/2addr v1, p1

    .line 55
    const/4 v2, 0x0

    move v0, p1

    .line 56
    :goto_4
    if-lt v0, v2, :cond_7

    .line 57
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    .line 58
    add-int v4, v0, v1

    int-to-float v4, v4

    int-to-float v5, p1

    add-float/2addr v3, v5

    invoke-virtual {p0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 65
    :cond_7
    const/4 v0, 0x0

    .line 66
    neg-int v1, p1

    .line 67
    :goto_5
    if-lt v0, v1, :cond_8

    .line 68
    int-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    float-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    .line 69
    add-int v3, v0, p1

    int-to-float v3, v3

    int-to-float v4, p1

    add-float/2addr v2, v4

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 72
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
