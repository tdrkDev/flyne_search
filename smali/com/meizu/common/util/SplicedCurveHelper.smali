.class public Lcom/meizu/common/util/SplicedCurveHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;
    }
.end annotation


# static fields
.field private static final CORNER_RADIU:I = 0x64


# instance fields
.field private mLenPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mPeakY:I

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;",
            ">;"
        }
    .end annotation
.end field

.field private mValleyY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->init()V

    .line 28
    return-void
.end method

.method private addSection2Path(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V
    .locals 4

    .prologue
    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v2, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    if-le v1, v2, :cond_2

    .line 126
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    .line 128
    :cond_2
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    if-ge v1, v2, :cond_3

    .line 129
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    .line 179
    iget v1, p2, Landroid/graphics/Point;->x:I

    .line 180
    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 187
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    iget v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 189
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void

    .line 182
    :cond_0
    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 183
    iget v0, p2, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 154
    return-void
.end method

.method private setOriginPath()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    .line 83
    if-nez v0, :cond_4

    .line 81
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move v3, v2

    .line 85
    :goto_1
    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 86
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 87
    iget-object v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    :goto_2
    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    if-le v4, v5, :cond_5

    .line 92
    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    .line 94
    :cond_5
    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    if-ge v4, v5, :cond_6

    .line 95
    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    .line 85
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_7
    iget-object v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method


# virtual methods
.method public addCurveSection(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V
    .locals 1

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->setOriginPath()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SplicedCurveHelper;->addSection2Path(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V

    goto :goto_0
.end method

.method public drawCurve(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 166
    if-nez v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v4, v4, v0

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/meizu/common/util/SplicedCurveHelper;->drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 165
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v3, v0

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v4, v4, v0

    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget v0, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/meizu/common/util/SplicedCurveHelper;->drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V

    goto :goto_1
.end method

.method public setCurveSections(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->setOriginPath()V

    .line 68
    return-void
.end method

.method public setCurveStroke(I)V
    .locals 2

    .prologue
    .line 140
    if-lez p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    :cond_0
    return-void
.end method
