.class public Lcom/meizu/commonwidget/avastar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/commonwidget/avastar/a$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private j:[Lcom/meizu/commonwidget/avastar/a$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x258

    const/16 v0, 0x78

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    .line 33
    iput v0, p0, Lcom/meizu/commonwidget/avastar/a;->b:I

    .line 34
    iput v0, p0, Lcom/meizu/commonwidget/avastar/a;->c:I

    .line 35
    iput v1, p0, Lcom/meizu/commonwidget/avastar/a;->d:I

    .line 36
    iput v1, p0, Lcom/meizu/commonwidget/avastar/a;->e:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/commonwidget/avastar/a;->f:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/commonwidget/avastar/a;->g:Z

    .line 64
    iput-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    const-string v0, "android.os.BuildExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isProductInternational"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public a(III)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 270
    :goto_0
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 272
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    invoke-static {v0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/Object;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v4

    const-string v5, "setNightModeUseOf"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v0, v5}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v4, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 288
    :goto_2
    return-object v0

    .line 268
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 283
    goto :goto_2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 288
    goto :goto_2

    .line 276
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 305
    if-eqz p3, :cond_2

    .line 306
    iget v1, p0, Lcom/meizu/commonwidget/avastar/a;->b:I

    .line 307
    iget v2, p0, Lcom/meizu/commonwidget/avastar/a;->c:I

    .line 313
    :goto_0
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    :cond_0
    sget v0, Lcom/meizu/commonwidget/avastar/R$drawable;->mz_avastar_person_00:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/commonwidget/avastar/a;->a(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 337
    :cond_1
    :goto_1
    return-object v0

    .line 309
    :cond_2
    iget v1, p0, Lcom/meizu/commonwidget/avastar/a;->e:I

    .line 310
    iget v2, p0, Lcom/meizu/commonwidget/avastar/a;->d:I

    goto :goto_0

    .line 316
    :cond_3
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/meizu/commonwidget/avastar/a;->g:Z

    if-nez v3, :cond_5

    .line 317
    invoke-virtual {p0, p1}, Lcom/meizu/commonwidget/avastar/a;->d(Ljava/lang/String;)Lcom/meizu/commonwidget/avastar/a$a;

    move-result-object v3

    .line 321
    iget-object v4, v3, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    array-length v4, v4

    if-eqz v4, :cond_6

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v3, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    array-length v5, v5

    rem-int/2addr v4, v5

    .line 323
    iget-object v3, v3, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    aget-object v3, v3, v4

    .line 327
    :goto_2
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/meizu/commonwidget/avastar/a$a$a;->b:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 330
    if-eqz p3, :cond_4

    .line 331
    iget v0, v3, Lcom/meizu/commonwidget/avastar/a$a$a;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/commonwidget/avastar/a;->a(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_1

    .line 333
    :cond_4
    iget v0, v3, Lcom/meizu/commonwidget/avastar/a$a$a;->b:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/commonwidget/avastar/a;->a(III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_1

    .line 337
    :cond_5
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p0, Lcom/meizu/commonwidget/avastar/a;->f:I

    move-object v3, p1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_2
.end method

.method protected a(Ljava/lang/String;)Lcom/meizu/commonwidget/avastar/a$a;
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/commonwidget/avastar/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    aget-object v0, v1, v0

    .line 161
    :goto_1
    return-object v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    iput-object p1, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/meizu/commonwidget/avastar/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    const-string v0, "mz_contact_avastar_rule_international"

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    if-nez v0, :cond_0

    .line 95
    const-string v0, "mz_contact_avastar_rule"

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    if-nez v0, :cond_2

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/commonwidget/avastar/a;->g:Z

    .line 99
    iput-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 101
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/commonwidget/avastar/a;->g:Z

    .line 102
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 105
    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/meizu/commonwidget/avastar/a$a;

    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    move v3, v1

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 109
    new-instance v5, Lcom/meizu/commonwidget/avastar/a$a;

    invoke-direct {v5}, Lcom/meizu/commonwidget/avastar/a$a;-><init>()V

    .line 110
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 111
    const-string v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/meizu/commonwidget/avastar/a$a;->b:Ljava/lang/String;

    .line 112
    iput v3, v5, Lcom/meizu/commonwidget/avastar/a$a;->a:I

    .line 113
    const-string v0, "resources"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 114
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 116
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 117
    new-instance v9, Lcom/meizu/commonwidget/avastar/a$a$a;

    invoke-direct {v9}, Lcom/meizu/commonwidget/avastar/a$a$a;-><init>()V

    .line 118
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->a:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->d:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->e:Ljava/lang/String;

    .line 121
    iget v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->a:I

    const/16 v10, 0x9

    if-le v0, v10, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->a:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mz_avastar_person_thumb_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/meizu/commonwidget/avastar/a;->c(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->c:I

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mz_avastar_person_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->b:I

    .line 124
    iget v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->c:I

    if-ne v0, v12, :cond_3

    .line 125
    iget v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->b:I

    iput v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->c:I

    .line 128
    :cond_3
    iget v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->c:I

    if-eq v0, v12, :cond_4

    iget v0, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->b:I

    if-ne v0, v12, :cond_6

    .line 116
    :cond_4
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 121
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v9, Lcom/meizu/commonwidget/avastar/a$a$a;->a:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 131
    :cond_6
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 134
    :cond_7
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/meizu/commonwidget/avastar/a$a$a;

    iput-object v0, v5, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    .line 135
    iget-object v0, v5, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    const-string v0, "keys"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v5, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    move v0, v1

    .line 139
    :goto_6
    iget-object v6, v5, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 140
    iget-object v6, v5, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    aput-object v5, v0, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_9
    move-object v0, v2

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    :try_start_0
    sget-object v0, Lcom/meizu/commonwidget/avastar/a;->i:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 173
    const-string v0, "com.flyme.internal.R$raw"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/commonwidget/avastar/a;->i:Ljava/lang/Class;

    .line 175
    :cond_0
    sget-object v0, Lcom/meizu/commonwidget/avastar/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    .line 181
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 182
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 184
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 199
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 199
    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 192
    :catch_3
    move-exception v0

    .line 193
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 194
    :catch_4
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 196
    :catch_5
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 210
    :try_start_0
    sget-object v0, Lcom/meizu/commonwidget/avastar/a;->h:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "com.flyme.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/commonwidget/avastar/a;->h:Ljava/lang/Class;

    .line 213
    :cond_0
    sget-object v0, Lcom/meizu/commonwidget/avastar/a;->h:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 223
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 220
    :catch_2
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected d(Ljava/lang/String;)Lcom/meizu/commonwidget/avastar/a$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v0, Lcom/meizu/commonwidget/avastar/b;

    invoke-direct {v0}, Lcom/meizu/commonwidget/avastar/b;-><init>()V

    move v0, v1

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/meizu/commonwidget/avastar/a;->j:[Lcom/meizu/commonwidget/avastar/a$a;

    aget-object v4, v2, v0

    .line 237
    iget-object v2, v4, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v4, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    .line 238
    :goto_1
    iget-object v5, v4, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 239
    iget-object v5, v4, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 240
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 241
    invoke-static {v5, p1}, Lcom/meizu/commonwidget/avastar/b;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    .line 242
    new-instance v5, Lcom/meizu/commonwidget/avastar/b$a;

    invoke-direct {v5, v6, v7, v4}, Lcom/meizu/commonwidget/avastar/b$a;-><init>(DLjava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 248
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 249
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/commonwidget/avastar/b$a;

    iget-object v0, v0, Lcom/meizu/commonwidget/avastar/b$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/commonwidget/avastar/a$a;

    .line 251
    :goto_2
    return-object v0

    :cond_3
    const-string v0, "\u968f\u673a"

    invoke-virtual {p0, v0}, Lcom/meizu/commonwidget/avastar/a;->a(Ljava/lang/String;)Lcom/meizu/commonwidget/avastar/a$a;

    move-result-object v0

    goto :goto_2
.end method
