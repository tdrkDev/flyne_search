.class public Lcom/meizu/common/widget/SmoothCornerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_RADIUS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "SmoothCornerView"


# instance fields
.field private mCornerRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousKey:Ljava/lang/String;

.field private mSmoothCornerBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SmoothCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SmoothCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPreviousKey:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/meizu/common/R$styleable;->SmoothCornerView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    sget v1, Lcom/meizu/common/R$styleable;->SmoothCornerView_mzCornerRadius:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SmoothCornerView;->mCornerRadius:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/SmoothCornerView;->setWillNotDraw(Z)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 50
    return-void
.end method

.method private convertNormalRadiusToSmoothRadius(I)I
    .locals 1

    .prologue
    .line 123
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private getSmoothCornerBitmap(III)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SmoothCornerView;->makeKey(III)Ljava/lang/String;

    move-result-object v8

    .line 73
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPreviousKey:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->getInstance()Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    move-result-object v9

    .line 78
    invoke-virtual {v9, v8}, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    .line 81
    iput-object v8, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPreviousKey:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 86
    const/high16 v2, 0x40800000    # 4.0f

    move v1, p3

    move v4, v3

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/meizu/common/util/SmoothCornerPathGenerator;->addSmoothCorner(Landroid/graphics/Path;IFIIII)Z

    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    iput-object v7, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    move-object v0, v7

    .line 89
    goto :goto_0

    .line 93
    :cond_2
    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, p2, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    .line 94
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 96
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 98
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iput-object v8, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPreviousKey:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPreviousKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v1}, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->saveTemporarily(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private makeKey(III)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 54
    invoke-virtual {p0}, Lcom/meizu/common/widget/SmoothCornerView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/SmoothCornerView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/SmoothCornerView;->mCornerRadius:I

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/SmoothCornerView;->convertNormalRadiusToSmoothRadius(I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/meizu/common/widget/SmoothCornerView;->getSmoothCornerBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/meizu/common/widget/SmoothCornerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/SmoothCornerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 60
    iget-object v1, p0, Lcom/meizu/common/widget/SmoothCornerView;->mSmoothCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/meizu/common/widget/SmoothCornerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/meizu/common/widget/SmoothCornerView;->mCornerRadius:I

    .line 115
    invoke-virtual {p0}, Lcom/meizu/common/widget/SmoothCornerView;->invalidate()V

    .line 116
    return-void
.end method
