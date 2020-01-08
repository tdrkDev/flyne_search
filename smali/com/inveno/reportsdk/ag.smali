.class public Lcom/inveno/reportsdk/ag;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inveno/reportsdk/ag;


# instance fields
.field private b:Lcom/inveno/reportsdk/ab;

.field private c:Lcom/inveno/reportsdk/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    new-instance v0, Lcom/inveno/reportsdk/k;

    invoke-direct {v0}, Lcom/inveno/reportsdk/k;-><init>()V

    iput-object v0, p0, Lcom/inveno/reportsdk/ag;->b:Lcom/inveno/reportsdk/ab;

    return-void
.end method

.method static synthetic a(Lcom/inveno/reportsdk/ag;)Lcom/inveno/reportsdk/p;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/inveno/reportsdk/ag;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/ag;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/ag;->a:Lcom/inveno/reportsdk/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/ag;

    invoke-direct {v0}, Lcom/inveno/reportsdk/ag;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/ag;->a:Lcom/inveno/reportsdk/ag;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/ag;->a:Lcom/inveno/reportsdk/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V
    .locals 2

    new-instance v0, Lcom/inveno/reportsdk/ah;

    invoke-direct {v0, p0, p1, p3}, Lcom/inveno/reportsdk/ah;-><init>(Lcom/inveno/reportsdk/ag;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V

    iget-object v1, p0, Lcom/inveno/reportsdk/ag;->b:Lcom/inveno/reportsdk/ab;

    invoke-interface {v1, p1, p2, v0}, Lcom/inveno/reportsdk/ab;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    invoke-virtual {v0}, Lcom/inveno/reportsdk/p;->b()V

    iput-object v1, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    :cond_0
    iput-object v1, p0, Lcom/inveno/reportsdk/ag;->b:Lcom/inveno/reportsdk/ab;

    sput-object v1, Lcom/inveno/reportsdk/ag;->a:Lcom/inveno/reportsdk/ag;

    return-void
.end method

.method public a(Landroid/content/Context;IIILcom/inveno/reportsdk/q;)V
    .locals 3

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p5, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p5, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title_count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title_min_length"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title_max_length"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->u:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p5}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;IIIILcom/inveno/reportsdk/q;)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p8, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p8, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_type"

    invoke-static {p5, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display"

    invoke-static {p6, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link_type"

    invoke-static {p7, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p8}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V
    .locals 3

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p3, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method a(Lcom/inveno/reportsdk/ab;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "requestTool should not be null!"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/inveno/reportsdk/ag;->b:Lcom/inveno/reportsdk/ab;

    goto :goto_0
.end method

.method public a(Lcom/inveno/reportsdk/q;)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUidParams()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "request_time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tk"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIIILcom/inveno/reportsdk/q;I)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p6, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/inveno/reportsdk/o;->a()Lcom/inveno/reportsdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/o;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p7, 0x1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scenario"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_type"

    invoke-static {p3, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display"

    invoke-static {p4, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link_type"

    invoke-static {p5, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p6}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/q;I)V
    .locals 3

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p11, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p11, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/inveno/reportsdk/o;->a()Lcom/inveno/reportsdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/o;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p12, 0x1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation"

    invoke-static {p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scenario"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_type"

    const/16 v2, 0x8

    invoke-static {p3, v2}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display"

    const/16 v2, 0x8

    invoke-static {p4, v2}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link_type"

    const/16 v2, 0x8

    invoke-static {p5, v2}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "country"

    invoke-virtual {v1, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "citycode"

    invoke-virtual {v1, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "province"

    invoke-virtual {v1, v0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adcode"

    invoke-virtual {v1, v0, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "district"

    invoke-virtual {v1, v0, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p11}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/reportsdk/q;)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p8, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p8, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scenario"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keywords"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_type"

    invoke-static {p5, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display"

    invoke-static {p7, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link_type"

    invoke-static {p6, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p8}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIILcom/inveno/reportsdk/q;)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p6, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scenario"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_type"

    invoke-static {p3, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link_type"

    invoke-static {p4, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display"

    invoke-static {p5, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->t:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p6}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/reportsdk/q;I)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p8, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p8, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scenario"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    invoke-static {p5, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "display"

    invoke-static {p7, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "link_type"

    invoke-static {p6, v3}, Ld/g;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operation"

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "count"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    sget-object v1, Lcom/inveno/reportsdk/p;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p8}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V
    .locals 3

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "\u6ca1\u6709Uid"

    invoke-interface {p3, v0}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/inveno/reportsdk/XZSDKManager;->getCommonParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scenario"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->c:Lcom/inveno/reportsdk/p;

    iget-object v0, v0, Lcom/inveno/reportsdk/p;->s:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/inveno/reportsdk/ag;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/ag;->b:Lcom/inveno/reportsdk/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/inveno/reportsdk/ab;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    return-void
.end method
