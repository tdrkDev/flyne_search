.class public Lcom/meizu/common/widget/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private mRadiusX:F

.field private mRadiusY:F

.field private mRecycle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    sget-object v0, Lcom/meizu/common/R$styleable;->RoundCornerImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    sget v1, Lcom/meizu/common/R$styleable;->RoundCornerImageView_mzCornerRadiusX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusX:F

    .line 79
    sget v1, Lcom/meizu/common/R$styleable;->RoundCornerImageView_mzCornerRadiusY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusY:F

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private drawRoundCorner()V
    .locals 13

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iget-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 170
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    .line 173
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getPaddingBottom()I

    move-result v5

    sub-int v5, v0, v5

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_4

    move-object v0, v2

    .line 204
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 205
    iget v6, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusX:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusY:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_7

    .line 207
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 208
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, v4, v8

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v5, v9

    .line 212
    new-instance v10, Landroid/graphics/Rect;

    div-int/lit8 v11, v8, 0x2

    div-int/lit8 v12, v9, 0x2

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    invoke-direct {v10, v11, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 218
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 219
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 220
    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-static {v8, v9, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget v8, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusX:F

    iget v9, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusY:F

    invoke-virtual {v7, v4, v8, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    if-eq v0, v2, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 242
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    :cond_3
    return-void

    .line 179
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v4, :cond_5

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v5

    .line 181
    const/4 v6, 0x0

    div-int/lit8 v0, v0, 0x2

    .line 185
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 181
    invoke-static {v2, v6, v0, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 188
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_6

    .line 189
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    .line 190
    div-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 190
    invoke-static {v2, v0, v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 198
    :cond_6
    invoke-static {v2, v4, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    if-eq v0, v2, :cond_0

    .line 200
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    goto/16 :goto_0

    .line 234
    :cond_7
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public getRadiusX()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusY:F

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 260
    const-class v0, Lcom/meizu/common/widget/RoundCornerImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 250
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->drawRoundCorner()V

    .line 255
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 94
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 107
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 120
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRecycle:Z

    .line 133
    :cond_0
    return-void
.end method

.method public setRadius(FF)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mDstRoundCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 142
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusX:F

    .line 143
    iput p2, p0, Lcom/meizu/common/widget/RoundCornerImageView;->mRadiusY:F

    .line 144
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerImageView;->invalidate()V

    .line 146
    :cond_1
    return-void
.end method
