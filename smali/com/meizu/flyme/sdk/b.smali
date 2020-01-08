.class public Lcom/meizu/flyme/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ZZ)Landroid/content/Context;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    const-string v1, "ro.sf.lcd_density"

    const/16 v2, 0x1e0

    invoke-static {v1, v2}, Lcom/meizu/flyme/sdk/b;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 18
    const-string v2, "persist.sys.density"

    invoke-static {v2, v1}, Lcom/meizu/flyme/sdk/b;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 24
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 25
    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/meizu/flyme/sdk/b;->a(Landroid/app/Activity;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 27
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 51
    invoke-static {}, Lcom/meizu/flyme/sdk/c;->a()Lcom/meizu/flyme/sdk/c;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    const-string v3, "getThemeResId"

    invoke-virtual {v1, v2, v3, v0}, Lcom/meizu/flyme/sdk/c;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    throw v0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/meizu/flyme/sdk/c;->a()Lcom/meizu/flyme/sdk/c;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/sdk/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 35
    invoke-static {}, Lcom/meizu/flyme/sdk/c;->a()Lcom/meizu/flyme/sdk/c;

    move-result-object v2

    const-string v3, "getInt"

    invoke-virtual {v2, v0, v3, v1}, Lcom/meizu/flyme/sdk/c;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 37
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    throw v0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
