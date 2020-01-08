.class public Lcom/meizu/flyme/media/news/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Ljava/lang/reflect/Field;

.field private static k:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 23
    const/16 v0, 0x100

    sput v0, Lcom/meizu/flyme/media/news/a/g;->a:I

    .line 25
    const-string v0, "com.android.internal.policy.DecorView"

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->f:Ljava/lang/String;

    .line 34
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setNavigationBarIconColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->b:Ljava/lang/reflect/Method;

    .line 35
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "meizuFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->d:Ljava/lang/reflect/Field;

    .line 36
    const-class v0, Landroid/view/Window;

    const-string v1, "setForcedNavigationBarColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->e:Ljava/lang/reflect/Method;

    .line 37
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/meizu/flyme/media/news/a/g;->a:I

    .line 39
    const-class v0, Landroid/view/Window;

    const-string v1, "setNavigationBarIconColor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->c:Ljava/lang/reflect/Method;

    .line 40
    const-string v0, "com.android.internal.policy.PhoneWindow"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    const-string v1, "mNavigationBarDefaultBlackIcon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->j:Ljava/lang/reflect/Field;

    .line 42
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->j:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->j:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    const-string v1, "mLastBottomInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/media/news/a/g;->g:Ljava/lang/reflect/Field;

    .line 57
    sget-object v1, Lcom/meizu/flyme/media/news/a/g;->g:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Lcom/meizu/flyme/media/news/a/g;->g:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 60
    :cond_1
    const-string v1, "mLastRightInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/media/news/a/g;->i:Ljava/lang/reflect/Field;

    .line 61
    sget-object v1, Lcom/meizu/flyme/media/news/a/g;->i:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/meizu/flyme/media/news/a/g;->i:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 64
    :cond_2
    const-string v1, "mLastLeftInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->h:Ljava/lang/reflect/Field;

    .line 65
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    .line 74
    :cond_3
    :goto_1
    :try_start_2
    const-class v0, Landroid/view/Window;

    const-string v1, "setNavigationBarColorExt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/g;->k:Ljava/lang/reflect/Method;

    .line 75
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 76
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6

    .line 81
    :cond_4
    :goto_2
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 51
    :catch_3
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 68
    :catch_4
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 70
    :catch_5
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 78
    :catch_6
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_2

    .line 223
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 224
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 226
    :goto_0
    if-nez v0, :cond_0

    sget-object v3, Lcom/meizu/flyme/media/news/a/g;->i:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 227
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    sget-object v3, Lcom/meizu/flyme/media/news/a/g;->h:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 230
    sget-object v0, Lcom/meizu/flyme/media/news/a/g;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :cond_1
    :goto_1
    return v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 238
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 347
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 362
    :goto_0
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move-object v0, p2

    .line 362
    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 354
    :catch_2
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 356
    :catch_3
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 358
    :catch_4
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 335
    if-nez p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const-string v1, "android.provider.MzSettings$System"

    const-string v2, "MZ_USE_FLYME_NAVIGATION_BAR"

    const-string v3, "mz_use_flyme_navigation_bar"

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
