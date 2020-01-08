.class public Lcom/meizu/common/widget/LoadingSwitchAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;
    }
.end annotation


# static fields
.field public static LEFTSITION:I

.field public static MIDDLEPOSITION:I

.field public static RIGHTPOSITION:I


# instance fields
.field private DEFALTDURATION:I

.field private DEFALTITEMCOUNT:I

.field animateDuration:I

.field animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

.field backgroundCurrentPosition:I

.field backgroundPath:Landroid/graphics/Path;

.field distanceToMiddle:F

.field distanceX:F

.field distanceY:F

.field index1:[F

.field index2:[F

.field indexStart:F

.field indexoffset:F

.field isAnimating:Z

.field isBackgroundOnleft:Z

.field itemCount:I

.field lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

.field leftIconChangeLength:F

.field leftIconChangePosition:F

.field leftIconPosition:[F

.field leftIconRect:Landroid/graphics/RectF;

.field leftIconSelected:Landroid/graphics/Bitmap;

.field leftIconSelectedPaint:Landroid/graphics/Paint;

.field leftIconUnselected:Landroid/graphics/Bitmap;

.field leftIconUnselectedPaint:Landroid/graphics/Paint;

.field middleIconChangeLength:F

.field middleIconChangePositionToLeft:F

.field middleIconChangePositionToRight:F

.field middleIconPosition:[F

.field middleIconRect:Landroid/graphics/RectF;

.field offsetX:F

.field offsetYValid:Z

.field originalHeight:F

.field originalWidth:F

.field ovalBackgroundRect:Landroid/graphics/RectF;

.field picRadius:F

.field pullLeftIconPaint:Landroid/graphics/Paint;

.field pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

.field pullRightIconPaint:Landroid/graphics/Paint;

.field rightIconChangeLength:F

.field rightIconChangePosition:F

.field rightIconPosition:[F

.field rightIconRect:Landroid/graphics/RectF;

.field rightIconSelected:Landroid/graphics/Bitmap;

.field rightIconSelectedPaint:Landroid/graphics/Paint;

.field rightIconUnselected:Landroid/graphics/Bitmap;

.field rightIconUnselectedPaint:Landroid/graphics/Paint;

.field rotationangle:F

.field scaleHeight:F

.field scaleWidth:F

.field viewHeight:F

.field viewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->LEFTSITION:I

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->RIGHTPOSITION:I

    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->MIDDLEPOSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTDURATION:I

    .line 29
    iput v4, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTITEMCOUNT:I

    .line 39
    iput v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 40
    iput v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    .line 54
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    .line 56
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 59
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    .line 61
    iput v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    .line 74
    const/high16 v0, 0x42870000    # 67.5f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    .line 91
    sget-object v0, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    sget v1, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView_animateDuration:I

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTDURATION:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animateDuration:I

    .line 93
    sget v1, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView_itemCount:I

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTITEMCOUNT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->reflesh_on:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->reflesh_off:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->back_home_on:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->back_home_off:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    .line 108
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    .line 117
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    .line 118
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    .line 120
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    .line 121
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    .line 122
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    return-void
.end method

.method private drawWhenLateralSliding(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 273
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v5

    .line 275
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    .line 278
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 281
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    aget v3, v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    aget v4, v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 286
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 289
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 291
    return-void
.end method

.method private drawWhenPull(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x43840000    # 264.0f

    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    const v1, 0x43848000    # 265.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 261
    const/high16 v0, 0x43340000    # 180.0f

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private startAnimate(Z)V
    .locals 4

    .prologue
    .line 454
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v1, v0

    .line 455
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 456
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 457
    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animateDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 458
    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 461
    new-instance v2, Lcom/meizu/common/widget/LoadingSwitchAnimationView$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView$1;-><init>(Lcom/meizu/common/widget/LoadingSwitchAnimationView;ZF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 496
    new-instance v1, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;-><init>(Lcom/meizu/common/widget/LoadingSwitchAnimationView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 534
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v1, v0

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->RIGHTPOSITION:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->LEFTSITION:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->drawWhenPull(Landroid/graphics/Canvas;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->drawWhenLateralSliding(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 156
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewHeight:F

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    div-float/2addr v1, v5

    aput v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aput v6, v0, v4

    .line 161
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 162
    const/high16 v0, 0x43100000    # 144.0f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    .line 163
    sget v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->LEFTSITION:I

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundCurrentPosition:I

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    aput v6, v0, v4

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 173
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    aput v6, v0, v4

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 182
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 183
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 185
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 186
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    .line 198
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalHeight:F

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 203
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangePosition:F

    .line 204
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangePosition:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangeLength:F

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangeLength:F

    .line 209
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    .line 210
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangeLength:F

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangePositionToLeft:F

    .line 213
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangePositionToRight:F

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangeLength:F

    .line 216
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 165
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    .line 166
    sget v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->MIDDLEPOSITION:I

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundCurrentPosition:I

    goto/16 :goto_0
.end method

.method public onPositionChange(FF)V
    .locals 10

    .prologue
    const/high16 v5, 0x43700000    # 240.0f

    const/4 v2, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const-wide v8, 0x3fc999999999999aL    # 0.2

    const/high16 v6, 0x41a00000    # 20.0f

    .line 300
    .line 301
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    if-eqz v0, :cond_6

    .line 302
    cmpl-float v0, p2, v2

    if-lez v0, :cond_0

    .line 303
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 304
    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    .line 305
    mul-float v0, v4, p2

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    const/16 v0, 0xff

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    mul-float v0, v4, p2

    const/high16 v1, 0x438c0000    # 280.0f

    div-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    const/16 v0, 0xff

    .line 308
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 309
    cmpl-float v0, p2, v5

    if-lez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float v2, p2, v5

    const/high16 v3, 0x3f900000    # 1.125f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float v2, p2, v5

    const/high16 v3, 0x3f900000    # 1.125f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 312
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float v2, p2, v5

    const/high16 v3, 0x3f900000    # 1.125f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 313
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float v2, p2, v5

    const/high16 v3, 0x3f900000    # 1.125f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 314
    sub-float v0, p2, v5

    mul-float/2addr v0, v4

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    const/16 v0, 0xff

    .line 315
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    .line 431
    :cond_1
    :goto_4
    return-void

    .line 305
    :cond_2
    mul-float v0, v4, p2

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 307
    :cond_3
    mul-float v0, v4, p2

    const/high16 v1, 0x438c0000    # 280.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    .line 314
    :cond_4
    sub-float v0, p2, v5

    mul-float/2addr v0, v4

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 320
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 321
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 323
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    goto :goto_3

    .line 329
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 330
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 332
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 333
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    const/high16 v1, 0x42aa0000    # 85.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 334
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 335
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 337
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 338
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 339
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 341
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    goto/16 :goto_4

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleWidth:F

    .line 344
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleHeight:F

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V

    goto/16 :goto_4

    .line 348
    :cond_9
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 350
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 351
    const/high16 v0, -0x3d560000    # -85.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_b

    .line 352
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 353
    const/high16 v0, -0x3e600000    # -20.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    .line 354
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 356
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 357
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 360
    :cond_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    goto/16 :goto_4

    .line 362
    :cond_b
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleWidth:F

    .line 363
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleHeight:F

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V

    goto/16 :goto_4

    .line 368
    :cond_c
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 369
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 370
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 371
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    const/high16 v1, 0x42aa0000    # 85.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 372
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 373
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_d

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 375
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 376
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 377
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 379
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    goto/16 :goto_4

    .line 381
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleWidth:F

    .line 382
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleHeight:F

    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V

    goto/16 :goto_4

    .line 386
    :cond_f
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 388
    :cond_10
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 390
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 391
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    const/high16 v1, 0x42aa0000    # 85.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 392
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 393
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v0, p1, v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_11

    .line 394
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 396
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    sub-float v1, p1, v1

    sub-float/2addr v1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 399
    :cond_11
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    goto/16 :goto_4

    .line 401
    :cond_12
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleWidth:F

    .line 402
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleHeight:F

    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V

    goto/16 :goto_4

    .line 406
    :cond_13
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 408
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 409
    const/high16 v0, -0x3d560000    # -85.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    .line 410
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 411
    const/high16 v0, -0x3e600000    # -20.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_14

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 413
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 414
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v1

    add-float v1, p1, v6

    float-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 415
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 418
    :cond_14
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    goto/16 :goto_4

    .line 420
    :cond_15
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleWidth:F

    .line 421
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->scaleHeight:F

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V

    goto/16 :goto_4
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 235
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 237
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 239
    iput v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 240
    iput v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    .line 242
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->invalidate()V

    .line 243
    return-void
.end method

.method public setAnimateDuration(I)V
    .locals 0

    .prologue
    .line 551
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animateDuration:I

    .line 552
    return-void
.end method

.method public setAnimationEndListener(Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

    .line 449
    return-void
.end method

.method public setLeftIconSelected(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    .line 581
    return-void
.end method

.method public setLeftIconUnSelected(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    .line 572
    return-void
.end method

.method public setRightIconSelected(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    .line 599
    return-void
.end method

.method public setRightIconUnSelected(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    .line 590
    return-void
.end method

.method public setSelectedIconBackGroundColor(I)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 563
    return-void
.end method

.method public touchDown()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    .line 435
    return-void
.end method
