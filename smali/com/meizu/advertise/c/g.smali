.class public Lcom/meizu/advertise/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/meizu/advertise/c/g;->b()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 41
    goto :goto_0
.end method

.method static a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/advertise/c/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.web.ProgressDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/g;->a:Ljava/lang/Class;

    .line 22
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 26
    sget-object v0, Lcom/meizu/advertise/c/g;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/meizu/advertise/c/g;->a()Ljava/lang/Class;

    move-result-object v0

    .line 28
    const-string v1, "newInstance"

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 30
    sput-object v0, Lcom/meizu/advertise/c/g;->b:Ljava/lang/reflect/Method;

    .line 32
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/g;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method
