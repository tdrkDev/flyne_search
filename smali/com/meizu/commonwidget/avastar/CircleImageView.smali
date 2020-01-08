.class public Lcom/meizu/commonwidget/avastar/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/BitmapShader;

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:Landroid/graphics/ColorFilter;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/meizu/commonwidget/avastar/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    .line 40
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/meizu/commonwidget/avastar/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    .line 56
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    .line 57
    iput v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    .line 58
    iput v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    .line 78
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->a()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/commonwidget/avastar/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    .line 56
    iput v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    .line 57
    iput v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    .line 58
    iput v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    .line 88
    sget-object v0, Lcom/meizu/commonwidget/avastar/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    sget v1, Lcom/meizu/commonwidget/avastar/R$styleable;->CircleImageView_civ_border_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    .line 91
    sget v1, Lcom/meizu/commonwidget/avastar/R$styleable;->CircleImageView_civ_border_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    .line 92
    sget v1, Lcom/meizu/commonwidget/avastar/R$styleable;->CircleImageView_civ_border_overlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->u:Z

    .line 93
    sget v1, Lcom/meizu/commonwidget/avastar/R$styleable;->CircleImageView_civ_fill_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->a()V

    .line 98
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 313
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-object v0

    .line 317
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 318
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 325
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/meizu/commonwidget/avastar/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 330
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 333
    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/meizu/commonwidget/avastar/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 334
    :catch_0
    move-exception v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/meizu/commonwidget/avastar/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->s:Z

    .line 104
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->t:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->t:Z

    .line 108
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->r:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->v:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    .line 346
    :goto_0
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    .line 347
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 350
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->s:Z

    if-nez v0, :cond_1

    .line 351
    iput-boolean v5, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->t:Z

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 360
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->invalidate()V

    goto :goto_0

    .line 364
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->m:Landroid/graphics/BitmapShader;

    .line 366
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->m:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 369
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 371
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 374
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 376
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->o:I

    .line 379
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->n:I

    .line 381
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 382
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->q:F

    .line 384
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 385
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->u:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    if-lez v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->p:F

    .line 390
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->b()V

    .line 391
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->f()V

    .line 392
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private e()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 396
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 397
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 401
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 402
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 404
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v2

    add-float/2addr v4, v0

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-direct {v3, v0, v1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 409
    .line 412
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 414
    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->n:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->o:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->o:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 416
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->n:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    .line 422
    :goto_0
    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 423
    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 425
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->m:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 426
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->n:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 419
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->o:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->r:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/meizu/commonwidget/avastar/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->v:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->p:F

    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->p:F

    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->q:F

    iget-object v3, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 145
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    .line 146
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    if-ne p1, v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iput p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    .line 170
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->setBorderColor(I)V

    .line 180
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->u:Z

    if-ne p1, v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->u:Z

    .line 250
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    if-ne p1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iput p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->j:I

    .line 237
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->r:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->r:Landroid/graphics/ColorFilter;

    .line 297
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->b()V

    .line 298
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->v:Z

    if-ne v0, p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->v:Z

    .line 263
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->c()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    if-ne p1, v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->k:I

    .line 209
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->setFillColor(I)V

    .line 225
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->c()V

    .line 270
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->c()V

    .line 276
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->c()V

    .line 282
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 287
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->c()V

    .line 288
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 151
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    .line 152
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 157
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/CircleImageView;->d()V

    .line 158
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    .prologue
    .line 117
    sget-object v0, Lcom/meizu/commonwidget/avastar/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method
