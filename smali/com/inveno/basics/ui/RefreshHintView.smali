.class public Lcom/inveno/basics/ui/RefreshHintView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/basics/ui/RefreshHintView$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lcom/inveno/basics/ui/RefreshHintView$a;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/DrawFilter;

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:F

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:I

.field private q:I

.field private r:Landroid/animation/Animator;

.field private s:F

.field private t:F

.field private final u:J

.field private final v:J

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    .line 55
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->k:I

    .line 58
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->l:F

    .line 60
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    .line 61
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    .line 62
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    .line 64
    const v0, -0xaf7515

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->p:I

    .line 65
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->q:I

    .line 70
    const-wide/16 v0, 0x6e0

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->u:J

    .line 71
    const-wide/16 v0, 0x460

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->v:J

    .line 222
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    .line 85
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->a()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    .line 55
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->k:I

    .line 58
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->l:F

    .line 60
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    .line 61
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    .line 62
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    .line 64
    const v0, -0xaf7515

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->p:I

    .line 65
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->q:I

    .line 70
    const-wide/16 v0, 0x6e0

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->u:J

    .line 71
    const-wide/16 v0, 0x460

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->v:J

    .line 222
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    .line 91
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->a()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    .line 55
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->k:I

    .line 58
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->l:F

    .line 60
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    .line 61
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    .line 62
    iput-object v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    .line 64
    const v0, -0xaf7515

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->p:I

    .line 65
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->q:I

    .line 70
    const-wide/16 v0, 0x6e0

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->u:J

    .line 71
    const-wide/16 v0, 0x460

    iput-wide v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->v:J

    .line 222
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    .line 97
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->a()V

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 315
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/inveno/basics/ui/RefreshHintView;)Lcom/inveno/basics/ui/RefreshHintView$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->b:Lcom/inveno/basics/ui/RefreshHintView$a;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    .line 233
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 237
    const/4 v0, 0x1

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->s:F

    iget v3, p0, Lcom/inveno/basics/ui/RefreshHintView;->t:F

    iget-object v5, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    .line 226
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 227
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 228
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 229
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->m:Landroid/graphics/RectF;

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 230
    return-void
.end method

.method private c()Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 249
    const-string v0, "startAngle"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 251
    const-string v1, "sweepAngle"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 254
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    const-wide/16 v2, 0x460

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    invoke-direct {p0}, Lcom/inveno/basics/ui/RefreshHintView;->d()Landroid/animation/Animator;

    move-result-object v1

    .line 260
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 262
    return-object v2

    .line 249
    nop

    :array_0
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x43870000    # 270.0f
    .end array-data

    .line 251
    :array_1
    .array-data 4
        -0x3c4c0000    # -360.0f
        0x0
    .end array-data
.end method

.method private d()Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 269
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 270
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x441d8000    # 630.0f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 271
    const-string v3, "startAngle"

    new-array v4, v8, [Landroid/animation/Keyframe;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 272
    const-string v1, "sweepAngle"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 274
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 275
    const-wide/16 v2, 0x6e0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 278
    return-object v0

    .line 272
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
    .line 300
    iget v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->s:F

    return v0
.end method

.method private getSweepAngle()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->t:F

    return v0
.end method

.method private setStartAngle(F)V
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lcom/inveno/basics/ui/RefreshHintView;->s:F

    .line 309
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->invalidate()V

    .line 310
    return-void
.end method

.method private setSweepAngle(F)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/inveno/basics/ui/RefreshHintView;->t:F

    .line 294
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 102
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->e:I

    .line 103
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/a/a;->a(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_refresh_hint_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$dimen;->xfoot_icon_nonetwork_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->h:I

    .line 107
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->g:Landroid/graphics/DrawFilter;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    sget v1, Lcom/inveno/basics/a/a;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->j:F

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9ad8\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->d:F

    .line 117
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->d:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->i:F

    .line 120
    new-instance v0, Lcom/inveno/basics/ui/RefreshHintView$1;

    invoke-direct {v0, p0}, Lcom/inveno/basics/ui/RefreshHintView$1;-><init>(Lcom/inveno/basics/ui/RefreshHintView;)V

    invoke-virtual {p0, v0}, Lcom/inveno/basics/ui/RefreshHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->g:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 163
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->i:F

    iget v2, p0, Lcom/inveno/basics/ui/RefreshHintView;->j:F

    iget-object v3, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    const/4 v0, 0x1

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/inveno/basics/ui/RefreshHintView;->a(Landroid/graphics/Canvas;)V

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 154
    return-void
.end method

.method public setOnClickRefreshListener(Lcom/inveno/basics/ui/RefreshHintView$a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/inveno/basics/ui/RefreshHintView;->b:Lcom/inveno/basics/ui/RefreshHintView$a;

    .line 81
    return-void
.end method

.method public setState(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 179
    iget v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    if-ne p1, v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 207
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->d:F

    .line 208
    iput p1, p0, Lcom/inveno/basics/ui/RefreshHintView;->a:I

    .line 211
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 212
    :cond_2
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->d:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->i:F

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-direct {p0}, Lcom/inveno/basics/ui/RefreshHintView;->b()V

    .line 219
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->invalidate()V

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_refresh_hint_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setBackgroundColor(I)V

    .line 185
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 188
    :cond_3
    iput-object v4, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    goto :goto_1

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_refresh_hint_loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setBackgroundColor(I)V

    .line 193
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    if-nez v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/inveno/basics/ui/RefreshHintView;->c()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    .line 195
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Lcom/inveno/basics/ui/RefreshHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$string;->mz_refresh_hint_refresh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->c:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 204
    :cond_4
    iput-object v4, p0, Lcom/inveno/basics/ui/RefreshHintView;->r:Landroid/animation/Animator;

    goto :goto_1

    .line 214
    :cond_5
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/inveno/basics/ui/RefreshHintView;->d:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/inveno/basics/ui/RefreshHintView;->i:F

    goto :goto_2

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
