.class public Lcn/com/xy/sms/util/ParseManager;
.super Ljava/lang/Object;


# static fields
.field public static final UPDATE_ICCID_INFO_CACHE_ACTION:Ljava/lang/String; = "cn.com.xy.sms.iccidinfo.action"

.field private static final a:Ljava/lang/String; = "yyyyMMdd"

.field private static b:Z

.field private static c:Landroid/content/BroadcastReceiver;

.field public static checkDataForUpdateTime:J

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static isCheckDataForUpdate:Z

.field public static isupdateData:Z

.field public static mins:J

.field public static updateDataTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->b:Z

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/com/xy/sms/util/ParseManager;->mins:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcn/com/xy/sms/util/ParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
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

    invoke-static/range {p0 .. p6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    const-string v0, "CHANNEL"

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bubbleViewVersion"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string v2, "bubbleViewVersion"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addQueryTrafficAndChargeToMenuData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p7, :cond_0

    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p4, p5, p6}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz p7, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    if-eqz p7, :cond_0

    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bubbleViewVersion"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string v2, "bubbleViewVersion"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static checkDataForUpdate(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    :cond_0
    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    if-eqz v0, :cond_1

    const-string v0, "-2"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-1"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDataForUpdate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/k;->b(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    throw v0

    :cond_4
    :try_start_5
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanToken(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/constant/Constant;->initContext(Landroid/content/Context;)V

    const-string v0, "tb_sdk_param"

    const-string v1, "p_key = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NEWHTTPTOKEN"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "tb_sdk_param"

    const-string v1, "p_key = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "HTTPTOKEN"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "tb_sdk_param"

    const-string v1, "p_key = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AESKEY"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearHistorySmsByNum(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removeBusinessMessageByNum(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static clearRecognisedSdkCache(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/D;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/D;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteMatchCache(Ljava/lang/String;J)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteMatchCache(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static doAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->doAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static findLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IIILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    const/4 v13, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v5, "findLogoByLogoName"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p5, v6, v7

    const/4 v7, 0x6

    aput-object p6, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "duoqu_publiclogo"

    invoke-static {v4}, Lcn/com/xy/sms/sdk/constant/Constant;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v6, "findLogoByLogoName"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object p6, v7, v8

    const/4 v8, 0x7

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    :cond_0
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    :try_start_2
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v6, "findLogoByLogoName"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object p6, v7, v8

    const/4 v8, 0x7

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    :cond_3
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x13

    const-wide/16 v16, 0x3c

    sget-wide v18, Lcn/com/xy/sms/util/ParseManager;->mins:J

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v16

    add-long v4, v4, v16

    cmp-long v4, v10, v4

    if-gez v4, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v5, "findLogoByLogoName"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p5, v6, v7

    const/4 v7, 0x6

    aput-object p6, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_7

    :cond_6
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/com/xy/sms/sdk/net/NetUtil;->BIZPORT_DOWN_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    if-eqz p5, :cond_9

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v4, "true"

    const-string v5, "syn"

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_9
    if-nez v4, :cond_c

    invoke-static {}, Lcn/com/xy/sms/sdk/a/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    new-instance v4, Lcn/com/xy/sms/util/i;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcn/com/xy/sms/util/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v15, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v13

    :goto_1
    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v6, "findLogoByLogoName"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object p6, v7, v8

    const/4 v8, 0x7

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_b

    :cond_a
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_2
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v6, 0xc

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "state"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "256"

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p6

    :try_start_5
    invoke-static/range {v5 .. v12}, Lcn/com/xy/sms/util/ParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v5, v13

    :goto_3
    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v6, "findLogoByLogoName"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object p6, v7, v8

    const/4 v8, 0x7

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_b

    :cond_d
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    move-object v5, v4

    :goto_4
    const-string v4, "cn.com.xy.sms.util.ParseManager"

    const-string v6, "findLogoByLogoName"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object p6, v7, v8

    const/4 v8, 0x7

    aput-object v13, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_f

    :cond_e
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->d:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    throw v5

    :catchall_1
    move-exception v4

    move-object v13, v5

    move-object v5, v4

    goto :goto_4

    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public static geOnOffByType(I)Z
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->geOnOffByType(I)Z

    move-result v0

    return v0
.end method

.method public static getAlgorithmVerion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHH"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBubbleViewVersion(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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

    const-string v0, "20151014"

    sget-object v1, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bubbleViewVersion"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sput-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    const-string v2, "yyyyMMdd"

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMdd"

    invoke-static {v2, v1, v3}, Lcn/com/xy/sms/sdk/util/DateUtils;->compareDateString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/com/xy/sms/util/j;

    invoke-direct {v1, v2}, Lcn/com/xy/sms/util/j;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConfigByType(ILjava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONArray;
    .locals 1

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getConfigByType(ILjava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorByNum(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorByNum(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getOperatorNumByPubNum(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParseVersion(Landroid/content/Context;Ljava/util/Map;)I
    .locals 2

    :try_start_0
    const-string v0, "PARSE_VERSION"

    invoke-static {p0, v0}, Lcn/com/xy/sms/util/SdkParamUtil;->getParamValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRecogniseActionConfig(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getRecogniseActionConfig(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getUIVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "context is null,please check."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p5, :cond_1

    const-string v0, "RSAPRVKEY"

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "rsa key is null,please check."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Lcn/com/xy/sms/sdk/constant/Constant;->initContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getCurProcessName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz p5, :cond_3

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "INIT_MAIN_PROCCESS"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/com/xy/sms/sdk/net/util/n;->a()V

    new-instance v0, Lcn/com/xy/sms/util/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/xy/sms/util/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V

    if-eqz p5, :cond_5

    const-string v1, "SYNCHRONIZED"

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseUtilMain"

    const-string v2, "jar"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getJarPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFixedPhone(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isFixedPhone(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitData()Z
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    return v0
.end method

.method public static isVerifyCodeSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/service/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static ismUseNewDes()Z
    .locals 1

    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->b:Z

    return v0
.end method

.method public static loadAllPubInfo(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static loadAllPubNum(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/util/Set;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static loadLocation(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p2, p3, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static needUpdateJar()Z
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/h;->g()Z

    move-result v0

    return v0
.end method

.method public static parseMsgCallBack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundHandleMapByType(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseMsgToBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v7, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v1, "parseMsgToBubble"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v8, v0, v1, v2}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v1, "parseMsgToBubble"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v8, v0, v1, v2}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p4, :cond_3

    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    const-string v0, "popup_type"

    const-string v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v6}, Lcn/com/xy/sms/sdk/service/a/b;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_3
    new-instance v1, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "64"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v2, "parseMsgToBubble"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-static {v8, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, p4

    :goto_2
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v1, "parseMsgToBubble"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object v6, v2, v3

    const/4 v3, 0x5

    aput-object v7, v2, v3

    invoke-static {v8, v0, v1, v2}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, p4

    :goto_4
    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v2, "parseMsgToBubble"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v7, v3, v4

    invoke-static {v8, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move-object v0, v7

    :cond_2
    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v2, "parseMsgToBubble"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-static {v8, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v7, v0

    goto :goto_2

    :cond_3
    move-object v6, p4

    goto/16 :goto_1
.end method

.method public static parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
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

    const/16 v2, 0x9

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const-string v2, "msgId"

    move-object/from16 v0, p8

    invoke-static {v0, v2, p1}, Lcn/com/xy/sms/util/ParseManager;->putValueToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v11}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcn/com/xy/sms/sdk/db/ParseItemManager;->execNqSql:Z

    if-eqz v2, :cond_3

    if-nez v11, :cond_2

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    const-string v2, "parseStatu"

    const-string v3, "-2"

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-static/range {v3 .. v12}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;

    move-result-object v11

    goto :goto_0
.end method

.method public static parseMsgToMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    if-nez p4, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v0, "popup_type"

    const-string v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v6, p4

    goto :goto_0
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
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

    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    if-eqz p6, :cond_7

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p5, :cond_0

    const-string v2, "msgId"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "msgTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundParseSmsBubble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/util/Map;Ljava/util/Map;)V

    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundHandleMapByType(Ljava/util/Map;Ljava/util/Map;)V

    const-string v2, "POPUP_SHOW_MASTER"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v3, "1"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "title_num"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "POPUP_SHOW_BANK"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "POPUP_SHOW_SP"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "POPUP_SHOW_LIFE"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const-string v3, "2"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xd

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "01025"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "02044"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "03006"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "03015"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "04010"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-string v3, "05035"

    aput-object v3, v5, v2

    const/4 v2, 0x6

    const-string v3, "08104"

    aput-object v3, v5, v2

    const/4 v2, 0x7

    const-string v3, "12003"

    aput-object v3, v5, v2

    const/16 v2, 0x8

    const-string v3, "13004"

    aput-object v3, v5, v2

    const/16 v2, 0x9

    const-string v3, "15003"

    aput-object v3, v5, v2

    const/16 v2, 0xa

    const-string v3, "16002"

    aput-object v3, v5, v2

    const/16 v2, 0xb

    const-string v3, "17005"

    aput-object v3, v5, v2

    const/16 v2, 0xc

    const-string v3, "00000"

    aput-object v3, v5, v2

    const-string v2, "title_num"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0xd

    if-lt v4, v6, :cond_5

    move v2, v3

    :goto_2
    if-nez v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    aget-object v6, v5, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p4

    invoke-static {p0, p1, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    const/4 v2, 0x0

    if-eqz p6, :cond_8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8
    invoke-static {v3, p1, p3, v2, p0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    if-eqz p6, :cond_a

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "POPUP_SHOW_MASTER"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    if-eqz p6, :cond_b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, p1, p3, v2, p0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, " Context is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, " phoneNumber is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, " smsContent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    :cond_3
    if-nez p5, :cond_5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v0, "popup_type"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "from"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v6, p5

    goto :goto_0
.end method

.method public static parseMsgToRichAndSimpleBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
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

    const/16 v0, 0x9

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseRecogniseValue(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p4}, Lcn/com/xy/sms/util/ParseManager;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, p1, p2, p3, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseRecogniseValue(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseSensitive(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseSensitive(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseSmsToClassify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseSmsType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    const/4 v7, -0x1

    if-nez p4, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    :try_start_0
    const-string v0, "popup_type"

    const-string v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-static {v0, p5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSmsTypeByMap(Ljava/util/Map;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    move-object v6, p4

    goto :goto_0
.end method

.method public static parseValidCodeSms(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/service/h/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static putValueToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static queryAllSimCardTrafficAndChargeActionData(Landroid/content/Context;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getIccidAreaCodeMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iccidMap is null"

    aput-object v2, v0, v1

    invoke-interface {p2, v0}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcn/com/xy/sms/util/k;

    invoke-direct {v5, p2, v3}, Lcn/com/xy/sms/util/k;-><init>(Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseManager;->queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-interface {p2, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static queryCommingMovie(ILjava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "count"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    sget-object v2, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetWebUtil;->WEB_SERVER_URL_COMMING_MOVIE:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static queryDefService(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "defService"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryDiscoverData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "city"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sceneId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    sget-object v2, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetWebUtil;->WEB_SERVER_URL_DISCOVER:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static queryFlightData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V

    return-void
.end method

.method public static queryFlightData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p3}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    return-void
.end method

.method public static queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-string v2, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->saveExceptionLog(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "cn.com.xy.sms.util.ParseManager"

    const-string v4, "queryMenuByPhoneNum"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v0, 0x4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v2, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    const/4 v5, 0x6

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->saveExceptionLog(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryMenuByPhoneNum"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    const/4 v5, 0x6

    aput-object v2, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    const-string v3, "cn.com.xy.sms.util.ParseManager"

    const-string v4, "queryMenuByPhoneNum"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object p5, v5, v6

    const/4 v6, 0x6

    aput-object v2, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static queryMoviePosters(Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "movieName"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    sget-object v2, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetWebUtil;->WEB_SERVER_URL_MOVIE_POSTERS:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static queryPublicInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v1, "queryPublicInfo"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v0, v1, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v1, "queryPublicInfo"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v0, v1, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "cn.com.xy.sms.util.ParseManager"

    const-string v4, "queryPublicInfo"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static queryPublicInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v0, 0x5

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfo"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v3, "cn.com.xy.sms.util.ParseManager"

    const-string v4, "queryPublicInfo"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static queryPublicInfoWithId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v0, 0x5

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfoWithId"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/f/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfoWithId"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "cn.com.xy.sms.util.ParseManager"

    const-string v3, "queryPublicInfoWithId"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v3, "cn.com.xy.sms.util.ParseManager"

    const-string v4, "queryPublicInfoWithId"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static queryTrainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0
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
            "Ljava/lang/Object;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V

    return-void
.end method

.method public static reInitAlgorithm(Landroid/content/Context;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/util/g;->a(Landroid/content/Context;Lcn/com/xy/sms/util/SdkCallBack;)V

    return-void
.end method

.method public static setDefServiceSwitch(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string v0, "defService"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static setLogSdkDoAction(Lcn/com/xy/sms/sdk/util/n;)V
    .locals 0

    sput-object p0, Lcn/com/xy/sms/sdk/util/DuoquUtils;->logSdkDoAction:Lcn/com/xy/sms/sdk/util/n;

    return-void
.end method

.method public static setSdkDoAction(Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;)V
    .locals 0

    sput-object p0, Lcn/com/xy/sms/sdk/util/DuoquUtils;->sdkAction:Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    return-void
.end method

.method public static setSmartEnhance(Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smartsms_enhance"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string v1, "smartsms_enhance"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setmUseNewDes(Z)V
    .locals 0

    sput-boolean p0, Lcn/com/xy/sms/util/ParseManager;->b:Z

    return-void
.end method

.method public static unRegisterReceiver(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static updateData(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    :cond_0
    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    if-eqz v0, :cond_1

    const-string v0, "-3"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    new-instance v0, Lcn/com/xy/sms/util/h;

    invoke-direct {v0, p0, p1}, Lcn/com/xy/sms/util/h;-><init>(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static updateMatchCacheManager(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "phoneNum"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getTitleNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getSmsId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static updateNow()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/k;->a(ZZ)V

    return-void
.end method
