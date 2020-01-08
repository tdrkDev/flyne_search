.class public Lcom/meizu/advertise/update/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/update/h$b;,
        Lcom/meizu/advertise/update/h$c;,
        Lcom/meizu/advertise/update/h$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/advertise/update/g;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/advertise/update/e;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/advertise/update/h;->b:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/meizu/advertise/update/h;->c:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/meizu/advertise/update/e;)Lcom/meizu/advertise/update/g;
    .locals 7

    .prologue
    .line 93
    const-class v1, Lcom/meizu/advertise/update/h;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/g;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    const-string v2, "plugin already installed"

    invoke-static {v2}, Lcom/meizu/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 99
    :cond_1
    :try_start_1
    sget-object v3, Lcom/meizu/advertise/update/h;->b:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v4, "MZ_AD_PLUGIN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 102
    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/a/d;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->k()Z

    move-result v5

    .line 105
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    if-eqz v5, :cond_5

    .line 107
    new-instance v3, Lcom/meizu/advertise/update/h$a;

    invoke-direct {v3, p0, p1}, Lcom/meizu/advertise/update/h$a;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    .line 108
    invoke-static {}, Lcom/meizu/advertise/update/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    .line 122
    sget-object v3, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->i()V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install success: versionName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/a/d;->a(Ljava/lang/String;)V

    .line 130
    :cond_3
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v5, :cond_0

    .line 131
    :cond_4
    new-instance v2, Lcom/meizu/advertise/update/h$c;

    invoke-direct {v2, p0, p1}, Lcom/meizu/advertise/update/h$c;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    .line 132
    invoke-static {}, Lcom/meizu/advertise/update/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->j()Z

    move-result v6

    .line 112
    invoke-static {p0, v2, v3, v0, v6}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "plugin.apk"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {p1, v3}, Lcom/meizu/advertise/update/h;->a(Lcom/meizu/advertise/update/e;Ljava/lang/String;)Z

    move-result v6

    .line 117
    if-eqz v6, :cond_2

    .line 118
    invoke-static {p0, v3, v4}, Lcom/meizu/advertise/update/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/advertise/update/g;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_7
    if-nez v5, :cond_3

    .line 126
    new-instance v2, Lcom/meizu/advertise/update/h$b;

    invoke-direct {v2, p0, p1}, Lcom/meizu/advertise/update/h$b;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    .line 127
    invoke-static {}, Lcom/meizu/advertise/update/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Lcom/meizu/advertise/update/g;
    .locals 6

    .prologue
    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/install/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    invoke-static {v2}, Lcom/meizu/advertise/update/d;->b(Ljava/io/File;)V

    .line 474
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "plugin.apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-static {p3, v3}, Lcom/meizu/advertise/update/d;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 478
    if-eqz p4, :cond_0

    .line 479
    invoke-static {v3, v2}, Lcom/meizu/advertise/update/h;->a(Ljava/io/File;Ljava/io/File;)V

    .line 482
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/meizu/advertise/update/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/advertise/update/g;

    move-result-object v0

    .line 484
    const-string v2, "MZ_AD_PLUGIN"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 485
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-static {p3}, Lcom/meizu/advertise/update/d;->a(Ljava/io/Closeable;)V

    .line 489
    :goto_1
    return-object v0

    .line 471
    :cond_1
    const/4 v3, 0x3

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string v5, "install"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/meizu/advertise/update/d;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    const/4 v0, 0x0

    .line 491
    invoke-static {p3}, Lcom/meizu/advertise/update/d;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcom/meizu/advertise/update/d;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/advertise/update/f;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/g;

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Lcom/meizu/advertise/update/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/advertise/update/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 330
    :cond_0
    instance-of v0, p1, Lcom/meizu/advertise/update/f;

    if-eqz v0, :cond_2

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    sget-object v0, Lcom/meizu/advertise/update/h;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    sget-object v0, Lcom/meizu/advertise/update/h;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/g;

    .line 338
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->c()I

    move-result v1

    .line 340
    sget-object v0, Lcom/meizu/advertise/update/h;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/e;

    .line 341
    new-instance v2, Lcom/meizu/advertise/update/h$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/meizu/advertise/update/h$b;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V

    .line 342
    invoke-static {}, Lcom/meizu/advertise/update/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 496
    const/4 v1, 0x0

    .line 498
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    :try_start_1
    const-string v5, "armeabi"

    .line 500
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 501
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 503
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 504
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    :cond_1
    const-string v4, "lib/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 511
    const/16 v4, 0x2f

    const/4 v8, 0x4

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 513
    if-lez v4, :cond_4

    .line 514
    const/4 v8, 0x4

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 519
    :goto_1
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 520
    if-nez v1, :cond_2

    .line 521
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 522
    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 545
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v4, v5

    .line 517
    goto :goto_1

    .line 527
    :cond_5
    :try_start_2
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 528
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 529
    if-nez v0, :cond_9

    .line 530
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 532
    :goto_3
    const/4 v0, 0x0

    .line 533
    if-eqz v1, :cond_7

    .line 535
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 536
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 537
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 538
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/meizu/advertise/update/d;->a(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_4

    :cond_6
    move v0, v3

    .line 542
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", hasLib: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    if-eqz v2, :cond_8

    .line 545
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 548
    :cond_8
    return-void

    .line 544
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_9
    move-object v1, v0

    goto :goto_3
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/meizu/advertise/update/h;

    monitor-enter v1

    :try_start_0
    const-string v0, "MZ_AD_PLUGIN"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/meizu/advertise/update/e;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/meizu/advertise/update/e;->i()Z

    move-result v0

    .line 275
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/meizu/advertise/update/e;->g()Lcom/meizu/advertise/update/a;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1}, Lcom/meizu/advertise/update/a;->a(Ljava/io/File;)Z

    move-result v0

    .line 279
    if-nez v0, :cond_1

    .line 280
    const-string v0, "check plugin fail"

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_0
    const-string v0, "checker is null when checkOnUpdate is true"

    invoke-static {v0}, Lcom/meizu/a/d;->b(Ljava/lang/String;)V

    .line 287
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/meizu/advertise/update/e;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/meizu/advertise/update/e;->h()Z

    move-result v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/meizu/advertise/update/e;->g()Lcom/meizu/advertise/update/a;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, v1}, Lcom/meizu/advertise/update/a;->a(Ljava/io/File;)Z

    move-result v0

    .line 174
    if-nez v0, :cond_1

    .line 175
    const-string v0, "check plugin fail"

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 179
    :cond_0
    const-string v0, "checker is null when checkOnInstall is true"

    invoke-static {v0}, Lcom/meizu/a/d;->b(Ljava/lang/String;)V

    .line 182
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/advertise/update/f;
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/meizu/advertise/update/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/g;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p0}, Lcom/meizu/advertise/update/g;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Lcom/meizu/advertise/update/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/advertise/update/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;
    .locals 3

    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 440
    invoke-static {p0, p1, p2, v0, p4}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Lcom/meizu/advertise/update/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install from assets exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/meizu/advertise/update/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/meizu/advertise/update/h;->c(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 395
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->e()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/install/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "plugin.apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 401
    if-nez v0, :cond_1

    move v3, v1

    .line 403
    :goto_0
    const-string v2, ""

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/plugin.config"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-static {v6}, Lcom/meizu/advertise/update/c;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v7

    .line 408
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/b;

    .line 409
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->b()I

    move-result v9

    if-ne p2, v9, :cond_0

    .line 410
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/meizu/advertise/update/b;->a(Z)V

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->c()Z

    move-result v9

    if-nez v9, :cond_5

    .line 413
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->b()I

    move-result v9

    if-le v9, v1, :cond_5

    .line 414
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->b()I

    move-result v1

    .line 415
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->a()Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    move-object v2, v1

    move v1, v0

    .line 418
    goto :goto_1

    .line 401
    :cond_1
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v3, v0

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {v7, v6}, Lcom/meizu/advertise/update/c;->a(Ljava/util/List;Ljava/io/File;)V

    .line 421
    if-ne v3, p2, :cond_3

    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->d()I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 422
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rollback version name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->j()Z

    move-result v1

    .line 426
    invoke-static {p0, v4, v5, v0, v1}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;

    .line 435
    :cond_3
    :goto_3
    return-void

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rollback version name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x1

    invoke-static {p0, v4, v5, v2, v0}, Lcom/meizu/advertise/update/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rollback exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;
    .locals 3

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 453
    invoke-static {p0, p1, p2, v0, p4}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Lcom/meizu/advertise/update/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install from download exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->c(Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/util/concurrent/Executor;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 48
    sget-object v0, Lcom/meizu/advertise/update/h;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/meizu/advertise/update/h;->d:Ljava/util/concurrent/Executor;

    .line 51
    :cond_0
    sget-object v0, Lcom/meizu/advertise/update/h;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->f()Lcom/meizu/advertise/update/i;

    move-result-object v2

    .line 210
    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->d()I

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/meizu/advertise/update/e;->e()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/plugin.config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {v7}, Lcom/meizu/advertise/update/c;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    .line 221
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 223
    new-instance v0, Lcom/meizu/advertise/update/h$1;

    invoke-direct {v0}, Lcom/meizu/advertise/update/h$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/advertise/update/b;

    .line 230
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Lcom/meizu/advertise/update/b;->b()I

    move-result v0

    .line 233
    :cond_2
    invoke-interface {v2, v3, v1, v0}, Lcom/meizu/advertise/update/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 239
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 240
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    invoke-static {v0}, Lcom/meizu/advertise/update/d;->a(Ljava/io/File;)V

    goto/16 :goto_0

    .line 247
    :cond_3
    invoke-static {v0, v8}, Lcom/meizu/advertise/update/d;->b(Ljava/io/File;Ljava/io/File;)V

    .line 249
    invoke-static {p1, v8}, Lcom/meizu/advertise/update/h;->a(Lcom/meizu/advertise/update/e;Ljava/io/File;)Z

    move-result v0

    .line 250
    if-nez v0, :cond_4

    .line 252
    new-instance v0, Lcom/meizu/advertise/update/b;

    invoke-direct {v0}, Lcom/meizu/advertise/update/b;-><init>()V

    .line 253
    invoke-virtual {v0, v2}, Lcom/meizu/advertise/update/b;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/b;->a(I)V

    .line 255
    invoke-virtual {v0, v10}, Lcom/meizu/advertise/update/b;->a(Z)V

    .line 256
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v6, v7}, Lcom/meizu/advertise/update/c;->a(Ljava/util/List;Ljava/io/File;)V

    goto/16 :goto_0

    .line 261
    :cond_4
    invoke-static {p0, v3, v4, v2, v10}, Lcom/meizu/advertise/update/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/advertise/update/g;

    .line 263
    new-instance v0, Lcom/meizu/advertise/update/b;

    invoke-direct {v0}, Lcom/meizu/advertise/update/b;-><init>()V

    .line 264
    invoke-virtual {v0, v2}, Lcom/meizu/advertise/update/b;->a(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/b;->a(I)V

    .line 266
    invoke-virtual {v0, v9}, Lcom/meizu/advertise/update/b;->a(Z)V

    .line 267
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v6, v7}, Lcom/meizu/advertise/update/c;->a(Ljava/util/List;Ljava/io/File;)V

    goto/16 :goto_0
.end method
