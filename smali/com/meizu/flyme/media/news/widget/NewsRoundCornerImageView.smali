.class public Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Xfermode;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:I

.field private f:F

.field private g:Landroid/graphics/drawable/shapes/Shape;

.field private h:Landroid/graphics/RectF;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->a:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v0, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 76
    const/16 v0, 0x8

    new-array v7, v0, [F

    .line 77
    sget v0, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_corner_radius:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v5, v0

    .line 78
    sget v0, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_corner_radius_top_left:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v3

    aput v0, v7, v1

    .line 79
    const/4 v0, 0x2

    const/4 v2, 0x3

    sget v8, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_corner_radius_top_right:I

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v2

    aput v8, v7, v0

    .line 80
    const/4 v0, 0x4

    const/4 v2, 0x5

    sget v8, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_corner_radius_bottom_right:I

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v2

    aput v8, v7, v0

    .line 81
    const/4 v0, 0x6

    const/4 v2, 0x7

    sget v8, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_corner_radius_bottom_left:I

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v2

    aput v8, v7, v0

    .line 82
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/flyme/media/news/lite/R$color;->transparent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->e:I

    .line 83
    sget v0, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsRoundedCornerImageView_image_border_width:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->d:F

    move v0, v1

    move v2, v1

    .line 86
    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_1

    .line 87
    aget v8, v7, v0

    cmpg-float v8, v8, v4

    if-gez v8, :cond_0

    .line 88
    aput v4, v7, v0

    .line 86
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 90
    goto :goto_1

    .line 94
    :cond_1
    if-nez v2, :cond_3

    .line 95
    cmpg-float v0, v5, v4

    if-gez v0, :cond_4

    move v0, v4

    .line 98
    :goto_2
    array-length v2, v7

    if-ge v1, v2, :cond_2

    .line 99
    aput v0, v7, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_2
    iput v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->f:F

    .line 103
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v10}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v7, v10, v10}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->g:Landroid/graphics/drawable/shapes/Shape;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->h:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method private a(II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 146
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 150
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->g:Landroid/graphics/drawable/shapes/Shape;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 151
    return-object v0
.end method


# virtual methods
.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 172
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v5, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->g:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 175
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 177
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    iget v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->d:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->e:I

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->g:Landroid/graphics/drawable/shapes/Shape;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 132
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->i:Ljava/lang/ref/WeakReference;

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    sget-object v3, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->a:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 137
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 139
    return-void

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatImageView;->onLayout(ZIIII)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->g:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 159
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRoundCornerImageView;->h:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    :cond_0
    return-void
.end method
