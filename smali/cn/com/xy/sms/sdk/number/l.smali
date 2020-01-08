.class public final Lcn/com/xy/sms/sdk/number/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "RunInThreadPool"

.field private static b:Ljava/lang/String; = "QueryDBRunInCurrentThread"

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->e(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->i(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->g(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    array-length v0, v2

    if-le v0, v4, :cond_5

    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    move-object v1, v0

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_5
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/number/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, v1, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    new-instance v3, Lcn/com/xy/sms/sdk/number/n;

    invoke-direct {v3, v1}, Lcn/com/xy/sms/sdk/number/n;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0, v2, v3}, Lcn/com/xy/sms/sdk/number/l;->b(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->d:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->a:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->b:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->c:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->d:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->f:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->e:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->f:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/number/l;->b(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    const/16 v5, -0xa

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p0, v0, v3

    const-string v1, "init embed number running"

    aput-object v1, v0, v4

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->removeLoactionInfo()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->setLoaction(Lorg/json/JSONObject;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->removeAreaCodeInfo()V

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "scrolling"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "no data"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "in query queue"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    const-string v0, "QueryDBRunInCurrentThread"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->g(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    sget-object v1, Lcn/com/xy/sms/sdk/util/E;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/number/m;

    invoke-direct {v2, v0, p0, p3, p1}, Lcn/com/xy/sms/sdk/number/m;-><init>(ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "need query"

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p3, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/xy/sms/sdk/number/l;->a()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->removeLoactionInfo()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->setLoaction(Lorg/json/JSONObject;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->removeAreaCodeInfo()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/com/xy/sms/sdk/number/o;

    invoke-direct {v1, p0, p2}, Lcn/com/xy/sms/sdk/number/o;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {v0, p1, v1}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->g(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "areaCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->isNoAreaCodeFixedPhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "areaCode"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    move-object p0, v1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;J)I

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/m;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p0, v0, v4

    aput-object v1, v0, v6

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->h(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p0, v0, v4

    const-string v1, "no data"

    aput-object v1, v0, v6

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/l;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 2

    sget-object v1, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static j(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/l;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
