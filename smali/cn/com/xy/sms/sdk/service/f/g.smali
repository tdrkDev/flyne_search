.class public final Lcn/com/xy/sms/sdk/service/f/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcn/com/xy/sms/sdk/service/f/a;

.field static b:Z

.field private static c:Lcn/com/xy/sms/sdk/service/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/com/xy/sms/sdk/service/f/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/com/xy/sms/sdk/service/f/a;-><init>(I)V

    sput-object v0, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    new-instance v0, Lcn/com/xy/sms/sdk/service/f/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcn/com/xy/sms/sdk/service/f/a;-><init>(I)V

    sput-object v0, Lcn/com/xy/sms/sdk/service/f/g;->c:Lcn/com/xy/sms/sdk/service/f/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p4}, Lcn/com/xy/sms/sdk/service/f/g;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "code"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "simIndex"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v0, p2, p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {p0, v3, p1}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, ""

    if-eqz p3, :cond_3

    const-string v2, "QUERY_NOW"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZ)V

    move-object v0, v8

    :goto_1
    invoke-static {v3, p2}, Lcn/com/xy/sms/sdk/service/f/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v10

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->c(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->pubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    :goto_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const-string v0, "SUPPORT_NET_QUERY"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZ)V

    move-object v0, v8

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move-object v0, v8

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v8

    invoke-interface {p4, v0}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "code"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "simIndex"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5, v6, p2, p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p3, :cond_6

    const-string v0, "EXCLUDE_CN"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, ""

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz p4, :cond_4

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-interface {p4, v2}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_4
    new-instance v2, Lcn/com/xy/sms/sdk/service/f/i;

    invoke-direct {v2, v1, p2}, Lcn/com/xy/sms/sdk/service/f/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    move v3, v8

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "title_num"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "scenetype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/i;->c()Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "menuMain"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->c(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/db/i;->c()Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->e:J

    const/4 v1, 0x5

    const-wide/32 v6, 0xa4cb800

    invoke-static {v1, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    invoke-static {v0, v9, v8, v9}, Lcn/com/xy/sms/sdk/db/i;->a(Lcn/com/xy/sms/sdk/db/entity/j;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZLjava/util/Map;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AUTO_UPDATE_DATA"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v8}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->b(Lcn/com/xy/sms/sdk/db/entity/j;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/service/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZ)V
    .locals 10

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QUERY_ONLINE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v9, Lcn/com/xy/sms/sdk/a/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/com/xy/sms/sdk/service/f/j;

    move/from16 v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/com/xy/sms/sdk/service/f/j;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    invoke-static {v4, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1, v5}, Lcn/com/xy/sms/sdk/db/entity/l;->a(Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "tb_netquery_time"

    const-string v4, "request_time < ? and request_time > 0 AND status = 0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v3, v2, v4, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-le v1, v6, :cond_2

    move v1, v6

    :cond_2
    invoke-interface {v7, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v3, "1"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/db/i;->c()Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "menuMain"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/i;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v3, p0

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v0, v1

    :goto_1
    if-lt v2, v3, :cond_3

    if-lez v0, :cond_2

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/C;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/C;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/C;->a:Ljava/lang/String;

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/G;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/C;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/C;)V

    :cond_2
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/G;)V

    goto :goto_0

    :cond_3
    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-ne v0, v5, :cond_4

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/C;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/C;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/com/xy/sms/sdk/db/entity/C;->a:Ljava/lang/String;

    sget-object v5, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v5}, Lcn/com/xy/sms/sdk/db/entity/G;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/com/xy/sms/sdk/db/entity/C;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/C;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "-1"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p4}, Lcn/com/xy/sms/sdk/service/f/g;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "cnum"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "code"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "simIndex"

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v0

    const-string v3, "id"

    invoke-static {p3, v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v0, p2, p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "QUERY_ONLINE"

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v2, p1}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, ""

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/a/f;->c(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v3, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;Z)V

    move-object v0, v9

    :goto_1
    invoke-static {v2, p2}, Lcn/com/xy/sms/sdk/service/f/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/a/f;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->pubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v3, 0x2

    aput-object v7, v1, v3

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object v0, v9

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    sget-object v0, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    sget-object v0, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    iput-object p1, v0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    new-instance v4, Lcn/com/xy/sms/sdk/service/f/h;

    invoke-direct {v4, p0, p1, p2}, Lcn/com/xy/sms/sdk/service/f/h;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "1"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/service/f/g;->c:Lcn/com/xy/sms/sdk/service/f/a;

    iget-boolean v0, v0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QUERY_ONLINE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/service/f/g;->c:Lcn/com/xy/sms/sdk/service/f/a;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    sget-object v0, Lcn/com/xy/sms/sdk/service/f/g;->c:Lcn/com/xy/sms/sdk/service/f/a;

    iput-object p1, v0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->c:Lcn/com/xy/sms/sdk/service/f/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
