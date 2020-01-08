.class public Lcom/meizu/common/widget/InstallProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final FLOAT_ESPINON:F = 1.0E-6f


# instance fields
.field private mMaxProgress:I

.field private mMinProgress:I

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:F

.field private mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mUseSecondStyle:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    .line 53
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    .line 54
    return-void
.end method

.method private static FloatEquals(FF)Z
    .locals 2

    .prologue
    .line 174
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawHorizontalProgress(Landroid/graphics/Canvas;Z)V
    .locals 4

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getProgress()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMaxProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 137
    if-nez p2, :cond_0

    move p2, v0

    .line 140
    :cond_0
    if-nez p3, :cond_1

    move p3, v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 147
    :goto_0
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 150
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    return-object v0

    .line 145
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getProgressAnimator(F)Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 157
    const-string v0, "Progress"

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const-string v0, "Progress"

    new-array v1, v1, [F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    .line 60
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 61
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_round_button_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_button_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 69
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_install_progress_bg_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    return-void
.end method


# virtual methods
.method public cancelProgressAnimator()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 241
    :cond_0
    return-void
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V

    .line 124
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    if-eq v0, v1, :cond_0

    .line 105
    iput-object v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 106
    iput-object v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 109
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 119
    :cond_2
    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public resetWidth()V
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 265
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V

    .line 284
    return-void

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public declared-synchronized setAnimProgress(F)V
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->getProgressAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxProgress(I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    .line 257
    return-void
.end method

.method public setMinProgress(I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    .line 261
    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    monitor-enter p0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    .line 220
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 221
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v0, v0

    .line 224
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    invoke-static {v0, v1}, Lcom/meizu/common/widget/InstallProgressBar;->FloatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 226
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_1
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setProgressBackColor(I)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 202
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V

    .line 211
    :cond_2
    return-void
.end method

.method public setRoundBtnColor(I)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V

    .line 196
    :cond_2
    return-void
.end method

.method public setRoundRadius(F)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 82
    return-void
.end method

.method public useSecondStyle(Z)V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    if-eq v0, p1, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 294
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    .line 295
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->requestLayout()V

    .line 297
    :cond_0
    return-void
.end method
