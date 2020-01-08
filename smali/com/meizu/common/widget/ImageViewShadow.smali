.class public Lcom/meizu/common/widget/ImageViewShadow;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final DEFAULT_OFFSETY:I = -0x1

.field private static final DEFAULT_RADIUS:I = 0x1


# instance fields
.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mBlurRadius:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private offsetXY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ImageViewShadow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ImageViewShadow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcom/meizu/common/R$styleable;->ImageViewShadow:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcBlurRadius:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setBlurRadius(F)V

    .line 51
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcOffsetX:I

    iget v2, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setOffsetX(I)V

    .line 52
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcOffsetY:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setOffsetY(I)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method private convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 93
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/ImageViewShadow;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 97
    sget v3, Lcom/meizu/common/R$color;->mc_image_view_shadow:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v3, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 100
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    .line 101
    iget-object v3, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 103
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 102
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 104
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 106
    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget v6, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    int-to-float v7, v7

    invoke-virtual {v4, v2, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v4, v1, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 111
    :cond_0
    return-object v0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 118
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 125
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 124
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBlurRadius()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    return v0
.end method

.method public getOffsetXY()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    return-object v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    return v0
.end method

.method public invalidateImageShadow()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 164
    const-class v0, Lcom/meizu/common/widget/ImageViewShadow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setBlurMaskFilter(Landroid/graphics/BlurMaskFilter;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    .line 139
    return-void
.end method

.method public setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setImageShadowResource(I)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    .line 151
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    .line 159
    return-void
.end method
