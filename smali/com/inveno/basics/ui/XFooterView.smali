.class public Lcom/inveno/basics/ui/XFooterView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Ljava/lang/String;

.field private c:F

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/DrawFilter;

.field private g:I

.field private h:F

.field private i:F

.field private j:I

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/animation/Animator;

.field private o:F

.field private p:F


# direct methods
.method private a()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    const/16 v1, 0x2d0

    if-le v0, v1, :cond_0

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    .line 233
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    float-to-int v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x11

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 234
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->d:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x11

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 235
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x11

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 236
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->d:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x11

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 244
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5706\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 245
    return-void

    .line 238
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    .line 239
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    float-to-int v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 240
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->d:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 241
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 242
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->d:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->g:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/inveno/basics/ui/XFooterView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 252
    const/4 v0, 0x2

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->a:I

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->o:F

    iget v3, p0, Lcom/inveno/basics/ui/XFooterView;->p:F

    iget-object v5, p0, Lcom/inveno/basics/ui/XFooterView;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/inveno/basics/ui/XFooterView;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private b()Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 264
    const-string v0, "startAngle"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 266
    const-string v1, "sweepAngle"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 269
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 270
    const-wide/16 v2, 0x460

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    invoke-direct {p0}, Lcom/inveno/basics/ui/XFooterView;->c()Landroid/animation/Animator;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 277
    return-object v2

    .line 264
    nop

    :array_0
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x43870000    # 270.0f
    .end array-data

    .line 266
    :array_1
    .array-data 4
        -0x3c4c0000    # -360.0f
        0x0
    .end array-data
.end method

.method private c()Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 283
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 284
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 285
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x441d8000    # 630.0f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 286
    const-string v3, "startAngle"

    new-array v4, v8, [Landroid/animation/Keyframe;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 287
    const-string v1, "sweepAngle"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 289
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 290
    const-wide/16 v2, 0x6e0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 293
    return-object v0

    .line 287
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        -0x3cea0000    # -150.0f
        0x0
    .end array-data
.end method

.method private getStartAngle()F
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/inveno/basics/ui/XFooterView;->o:F

    return v0
.end method

.method private getSweepAngle()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/inveno/basics/ui/XFooterView;->p:F

    return v0
.end method

.method private setStartAngle(F)V
    .locals 0

    .prologue
    .line 323
    iput p1, p0, Lcom/inveno/basics/ui/XFooterView;->o:F

    .line 324
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->invalidate()V

    .line 325
    return-void
.end method

.method private setSweepAngle(F)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lcom/inveno/basics/ui/XFooterView;->p:F

    .line 309
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->f:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 134
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    iget v2, p0, Lcom/inveno/basics/ui/XFooterView;->i:F

    iget-object v3, p0, Lcom/inveno/basics/ui/XFooterView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    const/4 v0, 0x2

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->a:I

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/inveno/basics/ui/XFooterView;->a(Landroid/graphics/Canvas;)V

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/inveno/basics/ui/XFooterView;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 124
    return-void
.end method

.method public setState(I)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    iget v0, p0, Lcom/inveno/basics/ui/XFooterView;->a:I

    if-ne p1, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "footstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u72b6\u6001\u6539\u53d8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 216
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/XFooterView;->c:F

    .line 217
    iput p1, p0, Lcom/inveno/basics/ui/XFooterView;->a:I

    .line 219
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 220
    :cond_2
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->c:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    .line 224
    :goto_2
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-direct {p0}, Lcom/inveno/basics/ui/XFooterView;->a()V

    .line 227
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->invalidate()V

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 165
    :cond_3
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto :goto_1

    .line 168
    :pswitch_1
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_data_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 170
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 173
    :cond_4
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto :goto_1

    .line 176
    :pswitch_2
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 178
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/inveno/basics/ui/XFooterView;->b()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    .line 180
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_1

    .line 184
    :pswitch_3
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 185
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 186
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 189
    :cond_5
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto/16 :goto_1

    .line 192
    :pswitch_4
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 194
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 197
    :cond_6
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto/16 :goto_1

    .line 200
    :pswitch_5
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_no_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 202
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    .line 203
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 205
    :cond_7
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto/16 :goto_1

    .line 208
    :pswitch_6
    invoke-virtual {p0}, Lcom/inveno/basics/ui/XFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_load_error_bug:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->b:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v3}, Lcom/inveno/basics/ui/XFooterView;->setBackgroundColor(I)V

    .line 210
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_8

    .line 211
    iget-object v0, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 213
    :cond_8
    iput-object v4, p0, Lcom/inveno/basics/ui/XFooterView;->n:Landroid/animation/Animator;

    goto/16 :goto_1

    .line 222
    :cond_9
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/XFooterView;->c:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/inveno/basics/ui/XFooterView;->h:F

    goto/16 :goto_2

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
