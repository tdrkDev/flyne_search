.class final Lcom/meizu/common/widget/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    return-void
.end method

.method public static abs(F)F
    .locals 1

    .prologue
    .line 1511
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    neg-float p0, p0

    goto :goto_0
.end method

.method public static constrain(FFF)F
    .locals 1

    .prologue
    .line 1515
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static log(F)F
    .locals 2

    .prologue
    .line 1519
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static max(FF)F
    .locals 1

    .prologue
    .line 1523
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1

    .prologue
    .line 1531
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move p2, p0

    :cond_0
    :goto_0
    return p2

    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static max(II)F
    .locals 1

    .prologue
    .line 1527
    if-le p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static max(III)F
    .locals 1

    .prologue
    .line 1535
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    :goto_0
    int-to-float v0, p0

    :goto_1
    return v0

    :cond_0
    move p0, p2

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    :goto_2
    int-to-float v0, p1

    goto :goto_1

    :cond_2
    move p1, p2

    goto :goto_2
.end method

.method public static min(FF)F
    .locals 1

    .prologue
    .line 1539
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1

    .prologue
    .line 1547
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    move p2, p0

    :cond_0
    :goto_0
    return p2

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static min(II)F
    .locals 1

    .prologue
    .line 1543
    if-ge p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static min(III)F
    .locals 1

    .prologue
    .line 1551
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    :goto_0
    int-to-float v0, p0

    :goto_1
    return v0

    :cond_0
    move p0, p2

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    :goto_2
    int-to-float v0, p1

    goto :goto_1

    :cond_2
    move p1, p2

    goto :goto_2
.end method
