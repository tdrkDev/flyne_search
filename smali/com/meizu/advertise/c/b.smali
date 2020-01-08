.class public Lcom/meizu/advertise/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/api/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/meizu/advertise/api/e;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/meizu/advertise/c/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/advertise/c/b$1;-><init>(Lcom/meizu/advertise/c/b;Lcom/meizu/advertise/api/e;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;JLcom/meizu/advertise/api/e;)Lcom/meizu/advertise/api/d;
    .locals 6

    .prologue
    .line 27
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/advertise/c/b;->a(Ljava/lang/String;JLjava/util/Map;Lcom/meizu/advertise/api/e;)Lcom/meizu/advertise/api/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JLjava/util/Map;Lcom/meizu/advertise/api/e;)Lcom/meizu/advertise/api/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meizu/advertise/api/e;",
            ")",
            "Lcom/meizu/advertise/api/d;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "mzid is empty"

    invoke-direct {p0, p5, v0}, Lcom/meizu/advertise/c/b;->a(Lcom/meizu/advertise/api/e;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/meizu/advertise/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/advertise/c/c;-><init>(Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->c()Ljava/lang/Object;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/meizu/advertise/c/a;->a()Ljava/lang/Class;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/meizu/advertise/c/a;

    invoke-direct {v3, p5}, Lcom/meizu/advertise/c/a;-><init>(Lcom/meizu/advertise/api/e;)V

    .line 42
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v4, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    const-string v4, "com.meizu.advertise.plugin.data.AdDataLoader"

    invoke-static {v0, v4}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v4, "load"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 45
    invoke-interface {v0, v4, v5}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    .line 46
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p4, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    new-instance v0, Lcom/meizu/advertise/c/c;

    invoke-direct {v0, v1}, Lcom/meizu/advertise/c/c;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 50
    const-string v0, "time out"

    invoke-direct {p0, p5, v0}, Lcom/meizu/advertise/c/b;->a(Lcom/meizu/advertise/api/e;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/meizu/advertise/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/advertise/c/c;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a([Ljava/lang/String;J)[Lcom/meizu/advertise/api/a;
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/advertise/c/b;->a([Ljava/lang/String;JLjava/util/Map;)[Lcom/meizu/advertise/api/a;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/lang/String;JLjava/util/Map;)[Lcom/meizu/advertise/api/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/meizu/advertise/api/a;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 170
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const-string v0, "mzid is empty"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    move-object v0, v2

    .line 187
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->c()Ljava/lang/Object;

    move-result-object v1

    .line 176
    const-string v4, "com.meizu.advertise.plugin.data.AdDataLoader"

    invoke-static {v0, v4}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v4, "load"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    .line 177
    invoke-interface {v0, v4, v5}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 178
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-interface {v0, v1, v4}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 179
    array-length v1, v0

    new-array v1, v1, [Lcom/meizu/advertise/api/a;

    .line 180
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 181
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/meizu/advertise/api/a$a;->a(Ljava/lang/Object;)Lcom/meizu/advertise/api/a$a;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 183
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-object v0, v2

    .line 187
    goto :goto_0
.end method
