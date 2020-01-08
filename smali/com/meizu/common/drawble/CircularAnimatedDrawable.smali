.class public Lcom/meizu/common/drawble/CircularAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final START_ANGLE_PROPERTY:Ljava/lang/String; = "startAngle"

.field public static final SWEEP_ANGLE_PROPERTY:Ljava/lang/String; = "sweepAngle"


# instance fields
.field private final LOADING_ANIM_DURATION:J

.field private final fBounds:Landroid/graphics/RectF;

.field private mAllowLoading:Z

.field private mBorderWidth:F

.field private mLoadingAnimator:Landroid/animation/Animator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(IF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    const-wide/16 v0, 0x6e0

    iput-wide v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->LOADING_ANIM_DURATION:J

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    .line 36
    iput-boolean v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    .line 44
    iput p2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->createLoadingAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    .line 53
    return-void
.end method

.method private createLoadingAnimator()Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 125
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x441d8000    # 630.0f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 127
    const-string v3, "startAngle"

    new-array v4, v8, [Landroid/animation/Keyframe;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 128
    const-string v1, "sweepAngle"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 129
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    const-wide/16 v2, 0x6e0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 143
    return-object v0

    .line 128
    nop

    :array_0
    .array-data 4
        0x0
        -0x3d100000    # -120.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 57
    iget-object v1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x2

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 90
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 92
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 93
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 94
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 95
    return-void
.end method

.method public setAllowLoading(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    .line 187
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 77
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    .prologue
    .line 175
    iput p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    .line 176
    iget-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->invalidateSelf()V

    .line 179
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .prologue
    .line 204
    if-lez p1, :cond_0

    iget v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    float-to-int v0, v0

    if-eq v0, p1, :cond_0

    .line 205
    int-to-float v0, p1

    iput v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    .line 206
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 207
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    :cond_0
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 1

    .prologue
    .line 157
    iput p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    .line 158
    iget-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->invalidateSelf()V

    .line 161
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    .line 103
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    .line 113
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 114
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->invalidateSelf()V

    goto :goto_0
.end method
