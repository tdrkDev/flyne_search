.class public Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_BLACK_LIST:I = -0x1

.field public static final RESULT_ERROR_PARA:I = -0x4

.field public static final RESULT_NOT_FIND:I = 0x196

.field public static final RESULT_NOT_IMPL:I = -0x3e7

.field public static final RESULT_NOT_YUMING:I = 0x1

.field public static final RESULT_NO_NET:I = 0x195

.field public static final RESULT_SERVER_ERROR:I = 0x194

.field public static final RESULT_THIRD_MIN_LEVLE:I = -0x1

.field public static final RESULT_TOKEN_FLASH:I = 0x193

.field public static final RESULT_WHITE_LIST:I = 0x2

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONArray;)I
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const/16 v1, 0x194

    :cond_1
    :goto_0
    return v1

    :cond_2
    const v1, 0x7fffffff

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "validStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v1, :cond_3

    move v1, v2

    :cond_3
    if-gez v2, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_num_md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "phonenum"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "msg_id"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p0, v2, v0

    const/4 v0, 0x6

    const-string v3, "urls_result"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    aput-object p5, v2, v0

    const/16 v0, 0x8

    const-string v3, "urls_lasttime"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_num_md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "phonenum"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "msg_id"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p0, v2, v0

    const/4 v0, 0x6

    const-string v3, "urls_result"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    aput-object p3, v2, v0

    const/16 v0, 0x8

    const-string v3, "urls_lasttime"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 9

    if-eqz p4, :cond_0

    :try_start_0
    const-string v0, "hasSensitive"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "urls"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const-string v0, "breviary"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "breviary"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    const/16 v1, 0x196

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, p4, v2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p5, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    invoke-static {p2}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseSensitive(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->catchUrls(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v0, "_ARR_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lcn/com/xy/sms/sdk/db/entity/k;->a([Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v6

    const-string v0, "statu"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v7

    const-string v8, "hasNotCheck"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    const/4 v0, 0x1

    if-nez v7, :cond_2

    const/16 v1, 0x195

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    invoke-static {p1, v5, v4}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    const-string v2, "URLValidity"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v0

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-static {v2, v3, v1, p4, v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p5, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-ltz p4, :cond_0

    :try_start_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-le p4, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/e;

    move v1, p4

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/msgurlservice/e;-><init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "hasSensitive"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "urls"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_5

    const-string v0, "breviary"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "breviary"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v1

    :goto_1
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    const/16 v1, 0x196

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, p3, v2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseSensitive(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->catchUrls(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v0, "_ARR_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcn/com/xy/sms/sdk/db/entity/k;->a([Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v7

    const-string v0, "statu"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x2

    invoke-static {v8}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v8

    const-string v9, "hasNotCheck"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    if-nez v8, :cond_3

    const/16 v0, 0x195

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_3
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    invoke-static {p0, v6, v5}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    const-string v2, "URLValidity"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-static {v2, v3, v1, p3, v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_3

    :cond_4
    move v1, v0

    move v0, v4

    goto :goto_3

    :cond_5
    move v5, v4

    goto/16 :goto_1
.end method

.method static synthetic a(Lorg/json/JSONObject;)Z
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private static b(Lorg/json/JSONArray;)I
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const/16 v1, 0x194

    :cond_1
    :goto_0
    return v1

    :cond_2
    const v1, 0x7fffffff

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "validStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v1, :cond_3

    move v1, v2

    :cond_3
    if-gez v2, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p3, :cond_1

    const-string v0, "results"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    :goto_0
    :try_start_0
    const-string v1, "urls"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasSensitive"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "validStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string v1, "results"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "msg_id=?"

    new-array v1, v5, [Ljava/lang/String;

    aput-object p0, v1, v4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "msg_id"

    aput-object v3, v2, v4

    const-string v3, "msg_num_md5"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "urls_result"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "urls_lasttime"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v2, "msg_num_md5"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "urls_result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    const-string v2, "urls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "validStatus"

    const/16 v3, 0x196

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v3, :cond_2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static checkUrlFromMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "msgid or phoneNum or smsContent is null but they need value."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/D;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/D;

    move-result-object v9

    iget-object v2, v9, Lcn/com/xy/sms/sdk/util/D;->p:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p0, v3, v2

    const/4 v2, 0x3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, v9, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, " inQueueUrlsData"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, v9, Lcn/com/xy/sms/sdk/util/D;->o:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    const-string v3, "urls_result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "msg_num_md5"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :cond_4
    if-nez p8, :cond_5

    iget-object v2, v9, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, " need parse"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/a/a;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcn/com/xy/sms/sdk/service/msgurlservice/h;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lcn/com/xy/sms/sdk/service/msgurlservice/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;Lcn/com/xy/sms/sdk/util/D;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, " is scrolling"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")I"
        }
    .end annotation

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;I)I

    move-result v9

    :try_start_0
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    :cond_0
    const/4 v0, -0x4

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    const-string v0, "_ARR_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v0, v8

    if-gtz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    :cond_4
    const/4 v0, -0x4

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_6

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->queryLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "localfind"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p5, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v9, v1, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v5, p4

    :try_start_3
    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->thirdValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateCheckStatu(Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p5, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, -0x1

    if-eq v9, v1, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x1

    if-ne v9, v0, :cond_a

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_9

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    :cond_9
    const/16 v0, 0x195

    goto/16 :goto_0

    :cond_a
    :try_start_5
    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcn/com/xy/sms/sdk/service/msgurlservice/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_b

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    :cond_b
    :goto_2
    invoke-virtual {v7, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_b

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, -0x1

    if-eq v9, v1, :cond_c

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    :cond_c
    throw v0

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/16 v0, 0x196

    goto/16 :goto_0
.end method

.method public static checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p4}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcn/com/xy/sms/sdk/service/msgurlservice/c;

    move/from16 v3, p6

    move-object v4, p5

    move-object/from16 v6, p7

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcn/com/xy/sms/sdk/service/msgurlservice/c;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    const-string v3, "URLValidity"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v2

    move-object v5, v1

    move/from16 v6, p6

    move-object v9, p5

    invoke-static/range {v3 .. v9}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static checkValidUrlNetBatch(Lorg/json/JSONArray;Z)V
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/com/xy/sms/sdk/service/msgurlservice/g;

    invoke-direct {v2, v1, p1, v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/g;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "URLValidity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_2
    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_3
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static executeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pickUrlFromMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->catchUrls(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/com/xy/sms/sdk/service/msgurlservice/a;

    invoke-direct {v1, v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static putUrlsResultData(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/D;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/D;

    move-result-object v0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/D;->o:Ljava/util/Map;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/D;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/D;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static queryLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move/from16 v0, p5

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/db/entity/k;->a(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localfind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v11

    :goto_0
    return-object v1

    :cond_0
    invoke-static/range {p4 .. p5}, Lcn/com/xy/sms/sdk/db/entity/k;->a([Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v3

    const-string v1, "statu"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v1, "hasNotCheck"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "result"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localfind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v11

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    if-gez v4, :cond_4

    const/4 v1, 0x1

    move v10, v1

    :goto_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v9}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    if-eqz v10, :cond_3

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localfind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v11

    goto :goto_0

    :cond_2
    if-gez v4, :cond_4

    const/4 v1, 0x1

    move v10, v1

    goto :goto_2

    :cond_3
    move-object v1, v11

    goto :goto_0

    :cond_4
    move v10, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public static saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/k;->a(Lorg/json/JSONArray;)V

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateCheckStatu(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/xy/sms/sdk/service/msgurlservice/d;-><init>(Lorg/json/JSONArray;Ljava/lang/String;I)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static thirdValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v6, -0x1

    const v7, 0x7fffffff

    array-length v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/db/entity/k;->a(Ljava/lang/String;I)J

    :goto_0
    return v0

    :cond_0
    const/4 v9, 0x0

    move v8, v6

    :goto_1
    :try_start_0
    array-length v0, p4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v9, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, v8

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/Map;)V

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    aget-object v4, p4, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    aget-object v1, p4, v9

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/entity/k;->a(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v7, :cond_2

    move v7, v0

    :cond_2
    if-gez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, v9

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/Map;)V

    move v0, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v8, v9

    move v9, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, v8

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, v8

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/Map;)V

    throw v6
.end method

.method public static declared-synchronized updateCheckValidUrl()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/f;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/f;-><init>()V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
