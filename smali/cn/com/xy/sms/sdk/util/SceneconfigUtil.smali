.class public Lcn/com/xy/sms/sdk/util/SceneconfigUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/Set;
    .locals 3

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/J;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/w;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/db/entity/v;-><init>()V

    iput v3, v2, Lcn/com/xy/sms/sdk/db/entity/v;->e:I

    iput-object p0, v2, Lcn/com/xy/sms/sdk/db/entity/v;->b:Ljava/lang/String;

    iput v3, v2, Lcn/com/xy/sms/sdk/db/entity/v;->d:I

    iput-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/w;->a(Lcn/com/xy/sms/sdk/db/entity/v;)Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/J;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->c(Ljava/util/List;I)V

    return-void
.end method

.method private static a(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;IZ)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/j;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcn/com/xy/sms/sdk/util/A;

    invoke-direct {v3, p0, p1, p2}, Lcn/com/xy/sms/sdk/util/A;-><init>(Ljava/util/List;IZ)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "queryscene"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8

    sget-object v1, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ljava/util/List;)V
    .locals 10

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    move-object v3, v0

    sget-object v5, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    sget-object v2, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static b(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcn/com/xy/sms/sdk/util/B;

    invoke-direct {v3, p0, p1}, Lcn/com/xy/sms/sdk/util/B;-><init>(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    move-object v3, v0

    sget-object v5, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    sget-object v2, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static c(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/y;->b(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)J

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/J;->a(Z)V

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/w;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-direct {v4}, Lcn/com/xy/sms/sdk/db/entity/v;-><init>()V

    iput v5, v4, Lcn/com/xy/sms/sdk/db/entity/v;->e:I

    iput-object v2, v4, Lcn/com/xy/sms/sdk/db/entity/v;->b:Ljava/lang/String;

    iput v5, v4, Lcn/com/xy/sms/sdk/db/entity/v;->d:I

    iput-object v0, v4, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/db/entity/w;->a(Lcn/com/xy/sms/sdk/db/entity/v;)Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/J;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, -0x1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static e(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "hasImportDrawableData"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/z;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_a

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    invoke-static {p0, p1, v5}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->querySceneRuleByCondition(Ljava/util/List;)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v0, ""

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    :cond_1
    iget v4, v2, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    if-eq v4, v5, :cond_2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->isResDownloaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-eqz v2, :cond_3

    iget v0, v2, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "isdownload"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "tb_scenerule_config"

    const-string v3, "id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v2, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_4
    invoke-static {p0, p1, v3}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_3
    if-lt v2, v5, :cond_7

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/J;->a(Z)V

    :cond_6
    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    move-object v0, v1

    goto :goto_2

    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/J;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    move-object v0, v1

    goto :goto_2

    :cond_9
    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/z;-><init>()V

    const-string v2, "-1"

    iput-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/z;->b:Ljava/lang/String;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, v0, Lcn/com/xy/sms/sdk/db/entity/z;->d:I

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Lcn/com/xy/sms/sdk/db/entity/z;I)J

    invoke-static {v2, p1, v3}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->insertOrUpdateSceneConfigAndRequestScenceConfig(Ljava/util/List;IZ)V

    move-object v0, v1

    goto :goto_2

    :cond_a
    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/z;-><init>()V

    const-string v2, "-1"

    iput-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/z;->b:Ljava/lang/String;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    iput v3, v0, Lcn/com/xy/sms/sdk/db/entity/z;->d:I

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Lcn/com/xy/sms/sdk/db/entity/z;I)J

    invoke-static {v2, p1, v3}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->insertOrUpdateSceneConfigAndRequestScenceConfig(Ljava/util/List;IZ)V

    :goto_4
    move-object v0, v1

    goto :goto_2

    :cond_b
    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Lcn/com/xy/sms/sdk/db/entity/z;I)J

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getUrls(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\uff1b"

    const-string v1, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleSceneUrllist(Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/F;->a(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/I;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    const-string v5, "tb_xml_res_download"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "scene_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "url"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "pos"

    aput-object v8, v6, v7

    const-string v7, "url = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "scene_id"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "url"

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pos"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sceneType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "insert_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "tb_xml_res_download"

    invoke-static {v4, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    const/4 v4, 0x1

    :try_start_2
    invoke-static {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_3
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/F;->a(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public static handleSceneconfig(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    move v2, v3

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_2
    if-lt v2, v4, :cond_3

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/z;->d:I

    iget-object v5, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_5

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "scene_id=? and sceneType = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v6, "tb_scenerule_config"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v1, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    :try_start_2
    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(Lcn/com/xy/sms/sdk/db/entity/z;I)J

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->f:Ljava/util/List;

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->c(Ljava/util/List;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    :try_start_3
    const-string v1, "scene_id=? and sceneType != 1"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public static insertOrUpdateSceneConfigAndRequestScenceConfig(Ljava/util/List;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/z;",
            ">;IZ)V"
        }
    .end annotation

    const/16 v6, 0x19

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :cond_2
    move v1, v8

    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/entity/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-le v0, v6, :cond_4

    move v0, v6

    :cond_4
    invoke-interface {p0, v8, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_4
    invoke-interface {p0, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v7, 0x1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    move v7, v0

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-static {v9}, Lcn/com/xy/sms/sdk/net/util/j;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v3, Lcn/com/xy/sms/sdk/util/A;

    invoke-direct {v3, v9, p1, p2}, Lcn/com/xy/sms/sdk/util/A;-><init>(Ljava/util/List;IZ)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "queryscene"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public static isResDownloaded(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\uff1b"

    const-string v3, ";"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    :goto_0
    if-lt v3, v5, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static postqueryIccidScene()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    const-string v2, "PostCount"

    const-wide/16 v4, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v2, "LastPostIccidSceneTime"

    const-wide/16 v6, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v6, v7, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    const-string v2, "LastPostIccidSceneTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0xc

    const-wide/32 v8, 0x48190800

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/d;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    new-instance v0, Lcn/com/xy/sms/sdk/util/C;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/C;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->getImeiAndXinghao(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "990005"

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->STATSERVICE_URL:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeLoginBeforeHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0xd

    const-wide v8, 0x134fd9000L

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/z;

    iget v0, v0, Lcn/com/xy/sms/sdk/db/entity/z;->c:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static querySceneRuleByCondition(Ljava/util/List;)Lcn/com/xy/sms/sdk/db/entity/SceneRule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;)",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    :cond_0
    return-object v0
.end method

.method public static requestQuerySceneRuleRequest(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;I)V"
        }
    .end annotation

    const/16 v8, 0x19

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v6, v7

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-le v0, v8, :cond_2

    move v0, v8

    :cond_2
    invoke-interface {p0, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    invoke-interface {p0, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v6, 0x1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v9}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, Lcn/com/xy/sms/sdk/util/B;

    invoke-direct {v3, v9, p1}, Lcn/com/xy/sms/sdk/util/B;-><init>(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static updateData()V
    .locals 8

    const-wide/32 v6, 0x48190800

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v5, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(IJ)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4, v3}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->insertOrUpdateSceneConfigAndRequestScenceConfig(Ljava/util/List;IZ)V

    invoke-static {v3, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/A;->a(IJ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->insertOrUpdateSceneConfigAndRequestScenceConfig(Ljava/util/List;IZ)V

    invoke-static {v5, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/y;->a(IJ)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestQuerySceneRuleRequest(Ljava/util/List;I)V

    invoke-static {v3, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/y;->a(IJ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestQuerySceneRuleRequest(Ljava/util/List;I)V

    goto :goto_0
.end method
