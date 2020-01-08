.class public Lcom/meizu/common/interpolator/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private count:I

.field private mX:[F

.field private mY:[F

.field private precision:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    .line 9
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->initPath(FFFF)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    .line 9
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 28
    div-int/lit8 v0, p5, 0x5

    .line 29
    iget v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    if-le v0, v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->initPath(FFFF)V

    .line 32
    return-void

    .line 29
    :cond_0
    iget v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    goto :goto_0
.end method

.method private initPath(FFFF)V
    .locals 13

    .prologue
    .line 38
    iget v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    .line 39
    iget v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    .line 40
    const/4 v1, 0x0

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, p3

    sub-float v2, v0, v2

    .line 44
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, p1

    sub-float v3, v0, v3

    .line 45
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v4, v0, p1

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p2

    add-float/2addr v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, p4

    sub-float v5, v0, v5

    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p4

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, p2

    sub-float v6, v0, v6

    .line 48
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v7, v0, p2

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    if-ge v0, v8, :cond_0

    .line 52
    mul-float v8, v1, v1

    .line 53
    mul-float v9, v8, v1

    .line 54
    iget-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    mul-float v11, v2, v9

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    mul-float v12, v4, v1

    add-float/2addr v11, v12

    aput v11, v10, v0

    .line 55
    iget-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    mul-float/2addr v9, v5

    mul-float/2addr v8, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v1

    add-float/2addr v8, v9

    aput v8, v10, v0

    .line 56
    iget v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    add-float/2addr v1, v8

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 72
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1

    move v0, v3

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    cmpl-float v1, p1, v0

    if-gez v1, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 81
    :goto_1
    sub-int v0, v1, v2

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 82
    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    .line 83
    iget-object v4, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 88
    goto :goto_1

    :cond_2
    move v5, v1

    move v1, v0

    move v0, v5

    .line 86
    goto :goto_2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v0, v0, v1

    iget-object v4, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v2

    sub-float/2addr v0, v4

    .line 91
    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    .line 92
    iget-object v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v0, v0, v2

    goto :goto_0

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 96
    div-float v0, v3, v0

    .line 98
    iget-object v3, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v2, v3, v2

    .line 99
    iget-object v3, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v1, v3, v1

    .line 100
    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
