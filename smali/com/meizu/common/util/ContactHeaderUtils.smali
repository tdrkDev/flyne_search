.class public Lcom/meizu/common/util/ContactHeaderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BG_COLOR:I = -0xab51aa

.field private static final DEFAULT_BORDER_COLOR:I = -0x1

.field private static final colorArray:[I

.field private static sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x242c5
        -0x6a3d0
        -0x11d6cf
        -0x9fac16
        -0xda7016
        -0xde3f32
        -0xbd4092
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, ""

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const-string v0, ""

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    const-string v0, ""

    goto :goto_0

    .line 296
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 299
    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    new-array v3, v1, [Ljava/lang/Object;

    .line 53
    new-array v4, v1, [Ljava/lang/Object;

    .line 54
    aput-object p3, v3, v0

    .line 55
    aput-object p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 33

    .prologue
    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz p3, :cond_0

    .line 73
    move-object/from16 v0, p3

    array-length v4, v0

    .line 74
    :cond_0
    const/4 v5, 0x3

    if-le v4, v5, :cond_20

    const/4 v4, 0x3

    move v5, v4

    .line 75
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 76
    move/from16 v0, p1

    int-to-float v6, v0

    mul-float/2addr v6, v4

    float-to-int v0, v6

    move/from16 v16, v0

    .line 77
    move/from16 v0, p2

    int-to-float v6, v0

    mul-float/2addr v6, v4

    float-to-int v0, v6

    move/from16 v17, v0

    .line 78
    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    .line 80
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    const/4 v4, 0x0

    move v6, v4

    .line 82
    :goto_1
    const v10, -0xab51aa

    .line 83
    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    .line 84
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 85
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 86
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 87
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 88
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 89
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 90
    const/4 v4, -0x1

    .line 91
    const/4 v8, -0x1

    move/from16 v0, p5

    if-eq v0, v8, :cond_1e

    .line 94
    :goto_2
    const/4 v4, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    const/4 v11, 0x0

    .line 99
    const-string v9, ""

    .line 101
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 103
    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    :try_start_0
    sget-object v14, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    if-nez v14, :cond_1

    .line 107
    const-class v14, Landroid/graphics/Canvas;

    const-string v15, "setNightModeUseOf"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v14, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    sput-object v14, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    .line 109
    :cond_1
    sget-object v14, Lcom/meizu/common/util/ContactHeaderUtils;->sMethodSetNightModeUseOf:Ljava/lang/reflect/Method;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v25, 0x0

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v15, v25

    move-object/from16 v0, v24

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_3
    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    const/4 v14, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/4 v14, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    const/4 v14, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    const/4 v14, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    int-to-float v14, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    const/4 v14, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    const/high16 v14, 0x19000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    const/4 v14, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    const/4 v14, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    const/4 v14, 0x3

    if-ne v5, v14, :cond_2

    .line 142
    const/4 v14, 0x0

    const/4 v15, 0x0

    mul-int/lit8 v25, v16, 0x21

    div-int/lit8 v25, v25, 0x2e

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-int/lit8 v26, v17, 0x21

    div-int/lit8 v26, v26, 0x2e

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    :cond_2
    const/4 v14, 0x2

    if-ne v5, v14, :cond_a

    .line 144
    const/4 v14, 0x0

    const/4 v15, 0x0

    mul-int/lit8 v25, v16, 0x26

    div-int/lit8 v25, v25, 0x2e

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-int/lit8 v26, v17, 0x26

    div-int/lit8 v26, v26, 0x2e

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    :goto_4
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v15

    int-to-float v0, v6

    move/from16 v25, v0

    sub-float v15, v15, v25

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v15, v15, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v15, v15, v25

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 149
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 150
    int-to-float v7, v6

    int-to-float v14, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14}, Landroid/graphics/RectF;->inset(FF)V

    .line 151
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v7, v14

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v26

    .line 154
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    mul-int/lit8 v4, v16, 0xd

    div-int/lit8 v4, v4, 0x5c

    add-int/2addr v4, v6

    int-to-float v4, v4

    .line 155
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    mul-int/lit8 v4, v16, 0x8

    div-int/lit8 v4, v4, 0x5c

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 156
    :cond_4
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1d

    const/4 v4, 0x0

    move v7, v4

    .line 158
    :goto_5
    add-int/lit8 v4, v5, -0x1

    move-object v14, v11

    move-object v15, v12

    move-object v11, v13

    move v13, v4

    :goto_6
    if-ltz v13, :cond_18

    .line 159
    const/4 v12, 0x0

    .line 160
    if-eqz p3, :cond_5

    aget-object v4, p3, v13

    if-eqz v4, :cond_5

    aget-object v4, p3, v13

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 161
    :cond_5
    if-eqz p3, :cond_1c

    aget-object v4, p3, v13

    if-eqz v4, :cond_1c

    .line 162
    aget-object v4, p3, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/common/util/ContactHeaderUtils;->checkText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    aget-object v4, p3, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v10

    move-object v4, v9

    move v9, v10

    .line 165
    :goto_7
    if-eqz p3, :cond_6

    aget-object v10, p3, v13

    if-eqz v10, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 167
    :cond_6
    :try_start_1
    sget v10, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 172
    const/4 v11, 0x1

    move v12, v11

    move-object v11, v10

    move-object v10, v4

    move v4, v9

    .line 179
    :goto_8
    if-eqz p4, :cond_19

    aget-object v9, p4, v13

    if-eqz v9, :cond_19

    .line 180
    aget-object v4, p4, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 182
    :goto_9
    if-eqz v11, :cond_7

    .line 184
    new-instance v15, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v15, v11, v4, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 186
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v4, v14

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v14, v14, v27

    cmpl-float v4, v4, v14

    if-lez v4, :cond_d

    .line 187
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v4, v14

    .line 191
    :goto_a
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    invoke-virtual {v14, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 193
    invoke-virtual {v15, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 195
    :cond_7
    if-nez v13, :cond_10

    .line 196
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 198
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 199
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3feccccccccccccdL    # 0.9

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v4, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 201
    iget v12, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v27, v0

    sub-float v12, v12, v27

    .line 202
    const/high16 v27, 0x40000000    # 2.0f

    div-float v12, v12, v27

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v4, v12, v4

    .line 203
    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    add-float/2addr v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v4, v12

    .line 204
    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    sub-float/2addr v12, v7

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v12, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    :cond_8
    :goto_b
    if-eqz v6, :cond_9

    .line 216
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    :cond_9
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    :goto_c
    add-int/lit8 v4, v13, -0x1

    move v13, v4

    move-object/from16 v32, v10

    move v10, v9

    move-object/from16 v9, v32

    goto/16 :goto_6

    .line 146
    :cond_a
    const/4 v14, 0x0

    const/4 v15, 0x0

    add-int/lit8 v25, v5, 0x1

    mul-int v25, v25, v16

    mul-int/lit8 v26, v5, 0x2

    div-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v5, 0x1

    mul-int v26, v26, v17

    mul-int/lit8 v27, v5, 0x2

    div-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_4

    .line 168
    :catch_0
    move-exception v4

    .line 170
    const/4 v4, 0x0

    .line 260
    :goto_d
    return-object v4

    .line 174
    :cond_b
    aget-object v4, p3, v13

    instance-of v4, v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    .line 175
    aget-object v4, p3, v13

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v11, v4

    move v4, v10

    move-object v10, v9

    goto/16 :goto_8

    .line 176
    :cond_c
    aget-object v4, p3, v13

    instance-of v4, v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1a

    .line 177
    aget-object v4, p3, v13

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v11, v4

    move v4, v10

    move-object v10, v9

    goto/16 :goto_8

    .line 189
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v4, v14

    goto/16 :goto_a

    .line 205
    :cond_e
    if-eqz v11, :cond_8

    .line 206
    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v27

    sub-float v4, v4, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v4, v27

    sub-float/2addr v4, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v28

    sub-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v14, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    invoke-virtual {v15, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 209
    if-eqz v12, :cond_f

    .line 210
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    :cond_f
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 219
    :cond_10
    add-int/lit8 v4, v5, -0x1

    if-ne v13, v4, :cond_14

    .line 220
    if-eqz v11, :cond_13

    .line 221
    if-eqz v12, :cond_12

    .line 222
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    :goto_e
    if-eqz v6, :cond_11

    .line 235
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    :cond_11
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 225
    :cond_12
    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    add-float/2addr v4, v7

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v27

    sub-float v12, v12, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v12, v12, v27

    invoke-virtual {v14, v4, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    invoke-virtual {v15, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 227
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 228
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 231
    :cond_13
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 239
    :cond_14
    if-eqz v11, :cond_17

    .line 240
    if-eqz v12, :cond_16

    .line 241
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    :goto_f
    if-eqz v6, :cond_15

    .line 254
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    :cond_15
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 244
    :cond_16
    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v27

    sub-float v12, v12, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v12, v12, v27

    invoke-virtual {v14, v4, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    invoke-virtual {v15, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 246
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_f

    .line 250
    :cond_17
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-int/lit8 v12, v17, 0x2

    int-to-float v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_18
    move-object v4, v8

    .line 260
    goto/16 :goto_d

    .line 110
    :catch_1
    move-exception v14

    goto/16 :goto_3

    :cond_19
    move v9, v4

    goto/16 :goto_9

    :cond_1a
    move v4, v10

    move-object v10, v9

    goto/16 :goto_8

    :cond_1b
    move-object v10, v4

    move v4, v9

    goto/16 :goto_8

    :cond_1c
    move-object v4, v9

    move v9, v10

    goto/16 :goto_7

    :cond_1d
    move v7, v4

    goto/16 :goto_5

    :cond_1e
    move/from16 p5, v4

    goto/16 :goto_2

    :cond_1f
    move v6, v4

    goto/16 :goto_1

    :cond_20
    move v5, v4

    goto/16 :goto_0
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p0, :cond_0

    .line 329
    :goto_0
    return-object v0

    .line 313
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 314
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    const-string v1, "ContactHeaderUtils "

    const-string v2, "getBitmapFromDrawable  OutOfMemoryError !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getColorByText(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 271
    const v1, -0xab51aa

    .line 272
    const/4 v0, 0x5

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 275
    :cond_0
    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 276
    sget-object v1, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    aget v0, v1, v0

    .line 278
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
