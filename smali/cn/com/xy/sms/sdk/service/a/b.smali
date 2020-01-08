.class public final Lcn/com/xy/sms/sdk/service/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Ljava/lang/String;

.field private static c:Lcn/com/xy/sms/sdk/service/a/a;

.field private static d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/com/xy/sms/sdk/service/a/b;->a:J

    sput-object v2, Lcn/com/xy/sms/sdk/service/a/b;->b:Ljava/lang/String;

    new-instance v0, Lcn/com/xy/sms/sdk/service/a/a;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/service/a/a;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    sput-object v2, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_1
    const-string v0, "isUseNewAction"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    const-string v0, "NEW_ADACTION"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ADACTION"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    .locals 18
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

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/Exception;

    const-string v5, " Context is null."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/Exception;

    const-string v5, " phoneNumber is null."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p3, :cond_2

    new-instance v4, Ljava/lang/Exception;

    const-string v5, " smsContent is null."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v13, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    const-string v4, "cn.com.xy.sms.sdk.service.baseparse.BaseParseService"

    const-string v5, "parseMsg"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p6, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    if-nez p6, :cond_1a

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    const-string v4, "ALLOW_VERCODE_MSG"

    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ALLOW_VERCODE_MSG"

    const-string v5, "true"

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v4, "ALLOW_PERSONAL_MSG"

    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ALLOW_PERSONAL_MSG"

    const-string v5, "false"

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v4, "version"

    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSceneVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "channel"

    const-string v5, "CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "smsCenterNum"

    move-object/from16 v0, p2

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/xy/sms/sdk/service/a/b;->b:Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-static {}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getProvince()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcn/com/xy/sms/sdk/service/a/b;->b:Ljava/lang/String;

    :cond_5
    sget-object v4, Lcn/com/xy/sms/sdk/service/a/b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "provice"

    sget-object v5, Lcn/com/xy/sms/sdk/service/a/b;->b:Ljava/lang/String;

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "RECOGNIZE_LEVEL"

    invoke-static {v4, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    const-string v5, "RECOGNIZE_LEVEL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v4

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    invoke-virtual {v4, v0, v1, v2}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getTimeSubInfo(Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "hwParseTime"

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_1
    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v9

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parseUtilMain"

    const-string v8, "jar"

    invoke-static {v4, v5, v8}, Lcn/com/xy/sms/sdk/util/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getJarPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "true"

    const-string v5, "parseVerifyCode"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    invoke-static {v0, v9, v12}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseVerifyCodeToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    :goto_2
    if-nez v13, :cond_8

    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v5, 0x10

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "num"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object p1, v8, v10

    const/4 v10, 0x2

    const-string v11, "msg"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v10, 0x4

    const-string v11, "smsTime"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    aput-object v6, v8, v10

    invoke-direct {v4, v5, v8}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v4

    const-string v5, "XIAOYUAN"

    const-string v8, "baseParseMsg is null."

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v8, v10}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    const-string v4, "1"

    const-string v5, "from"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v8, 0xe

    const/4 v4, 0x4

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "phoneNumber"

    aput-object v11, v10, v4

    const/4 v4, 0x1

    aput-object p1, v10, v4

    const/4 v4, 0x2

    const-string v11, "isSuccess"

    aput-object v11, v10, v4

    const/4 v11, 0x3

    if-eqz v13, :cond_c

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    :cond_9
    :goto_4
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v5, "parseStatu"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v5

    const-string v6, "XIAOYUAN"

    const-string v7, "parse msg parseStatu = -1"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v5, "cn.com.xy.sms.sdk.service.baseparse.BaseParseService"

    const-string v6, "parseMsg"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v12, v7, v8

    const/4 v8, 0x6

    aput-object v4, v7, v8

    invoke-static {v14, v5, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v13, v4

    :goto_5
    return-object v13

    :cond_a
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v4

    goto/16 :goto_1

    :cond_b
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v9, v12}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseMsgToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    goto/16 :goto_2

    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    :cond_d
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v4

    const-string v5, "XIAOYUAN"

    const-string v8, "parseUtilMain not valid."

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v8, v10}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/k;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    :goto_6
    :try_start_6
    invoke-static {v4}, Lcn/com/xy/sms/sdk/dex/DexUtil;->saveExceptionLog(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v4, "cn.com.xy.sms.sdk.service.baseparse.BaseParseService"

    const-string v5, "parseMsg"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v12, v6, v7

    const/4 v7, 0x6

    aput-object v13, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v10, Lcn/com/xy/sms/sdk/service/a/b;->a:J

    const-wide/32 v16, 0x927c0

    add-long v10, v10, v16

    cmp-long v4, v4, v10

    if-ltz v4, :cond_f

    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v4, v5, v8}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/com/xy/sms/sdk/service/a/b;->a:J

    :cond_f
    if-eqz v13, :cond_10

    const-string v4, "from_cache"

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v5, 0x9

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "num"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object p1, v8, v10

    const/4 v10, 0x2

    const-string v11, "msg"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v10, 0x4

    const-string v11, "cnum"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    aput-object p2, v8, v10

    const/4 v10, 0x6

    const-string v11, "smsTime"

    aput-object v11, v8, v10

    const/4 v10, 0x7

    aput-object v6, v8, v10

    invoke-direct {v4, v5, v8}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    const-string v4, "1"

    const-string v5, "from"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v5, 0xa

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "num"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object p1, v8, v10

    const/4 v10, 0x2

    const-string v11, "msg"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v10, 0x4

    const-string v11, "cnum"

    aput-object v11, v8, v10

    const/4 v10, 0x5

    aput-object p2, v8, v10

    const/4 v10, 0x6

    const-string v11, "smsTime"

    aput-object v11, v8, v10

    const/4 v10, 0x7

    aput-object v6, v8, v10

    invoke-direct {v4, v5, v8}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    :cond_11
    if-eqz v13, :cond_16

    const-string v4, "simIndex"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "simIndex"

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v4, "msgTime"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "msgTime"

    const-string v5, "msgTime"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_7
    const-string v4, "title_num"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "from_cache"

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "simIccid"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    new-instance v8, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v10, 0x1

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "simIccid"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    aput-object v5, v11, v15

    const/4 v5, 0x2

    const-string v15, "receiveNum"

    aput-object v15, v11, v5

    const/4 v5, 0x3

    aput-object p1, v11, v5

    const/4 v5, 0x4

    const-string v15, "sms"

    aput-object v15, v11, v5

    const/4 v5, 0x5

    aput-object v9, v11, v5

    const/4 v5, 0x6

    const-string v15, "centerNum"

    aput-object v15, v11, v5

    const/4 v5, 0x7

    aput-object p2, v11, v5

    const/16 v5, 0x8

    const-string v15, "sceneId"

    aput-object v15, v11, v5

    const/16 v5, 0x9

    aput-object v4, v11, v5

    invoke-direct {v8, v10, v11}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v8}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    :cond_14
    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v8, 0x6

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "titleNo"

    aput-object v15, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v8, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "titleNo"

    aput-object v15, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v8, 0x8

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "titleNo"

    aput-object v15, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v8, 0x5

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "titleNo"

    aput-object v15, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v4, 0x2

    const-string v11, "type"

    aput-object v11, v10, v4

    const/4 v4, 0x3

    const-string v11, "0"

    aput-object v11, v10, v4

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/provider/ContactsProvider;->addContactsToDb(Landroid/content/Context;Ljava/util/Map;)V

    :cond_15
    const-string v4, "pickUrl"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-static {v4, v0, v9, v6, v12}, Lcn/com/xy/sms/util/ParseMsgUrlManager;->pickUrlFromMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "url"

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v4, "parse_recognise_value"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "msgId"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v8, 0xf

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "msgId"

    aput-object v15, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v4, 0x2

    const-string v11, "num"

    aput-object v11, v10, v4

    const/4 v4, 0x3

    aput-object p1, v10, v4

    const/4 v4, 0x4

    const-string v11, "cnum"

    aput-object v11, v10, v4

    const/4 v4, 0x5

    aput-object p2, v10, v4

    const/4 v4, 0x6

    const-string v11, "msg"

    aput-object v11, v10, v4

    const/4 v4, 0x7

    aput-object v7, v10, v4

    const/16 v4, 0x8

    const-string v7, "smsTime"

    aput-object v7, v10, v4

    const/16 v4, 0x9

    aput-object v6, v10, v4

    invoke-direct {v5, v8, v10}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_17

    :try_start_8
    const-string v4, "ref_basevalue"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "ref_basevalue"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "ref_basevalue"

    invoke-interface {v13, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5, v4}, Lcn/com/xy/sms/sdk/queue/k;->a(Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_17
    :goto_8
    :try_start_9
    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    :cond_18
    const-string v4, "msgId"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-static/range {v5 .. v13}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handleParseMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v4, "cn.com.xy.sms.sdk.service.baseparse.BaseParseService"

    const-string v5, "parseMsg"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v12, v6, v7

    const/4 v7, 0x6

    aput-object v13, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_19
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_13

    :try_start_a
    const-string v4, "msgTime"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v4

    :goto_9
    const-string v5, "cn.com.xy.sms.sdk.service.baseparse.BaseParseService"

    const-string v6, "parseMsg"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v12, v7, v8

    const/4 v8, 0x6

    aput-object v13, v7, v8

    invoke-static {v14, v5, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object/from16 v12, p6

    move-object/from16 v9, p3

    goto :goto_9

    :catchall_2
    move-exception v4

    move-object/from16 v9, p3

    goto :goto_9

    :catchall_3
    move-exception v5

    move-object v13, v4

    move-object v4, v5

    goto :goto_9

    :catch_1
    move-exception v4

    move-object/from16 v12, p6

    move-object/from16 v9, p3

    goto/16 :goto_6

    :catch_2
    move-exception v4

    move-object/from16 v9, p3

    goto/16 :goto_6

    :catch_3
    move-exception v5

    move-object v13, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v12, p6

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
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
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, p4

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSmsType(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcn/com/xy/sms/sdk/service/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/service/a/d;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/service/a/d;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "cn.com.xy.sms.iccidinfo.action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 10
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
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcn/com/xy/sms/sdk/a/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/com/xy/sms/sdk/service/a/c;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcn/com/xy/sms/sdk/service/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "iccid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "simIndex"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->updateIccidCache(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    .locals 8
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

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const-class v3, Lcn/com/xy/sms/sdk/service/a/b;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/service/a/a;->a:Landroid/content/Context;

    iput-object p1, v0, Lcn/com/xy/sms/sdk/service/a/a;->b:Ljava/lang/String;

    iput-object p2, v0, Lcn/com/xy/sms/sdk/service/a/a;->c:Ljava/lang/String;

    iput-object p3, v0, Lcn/com/xy/sms/sdk/service/a/a;->d:Ljava/lang/String;

    iput-wide p4, v0, Lcn/com/xy/sms/sdk/service/a/a;->e:J

    iput-object p6, v0, Lcn/com/xy/sms/sdk/service/a/a;->f:Ljava/util/Map;

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->g:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz p6, :cond_1

    :try_start_1
    const-string v0, "PARSE_TIME_OUT"

    invoke-interface {p6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PARSE_TIME_OUT"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    :goto_0
    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const-wide/16 v4, 0x1388

    :cond_0
    if-eqz v1, :cond_6

    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    sget-object v1, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/service/a/a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit v3

    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    instance-of v4, v0, Ljava/util/concurrent/TimeoutException;

    if-nez v4, :cond_2

    instance-of v0, v0, Ljava/lang/InterruptedException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    :cond_2
    :try_start_5
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    const-string v2, "XIAOYUAN"

    const-string v4, " baseparse timeout or interrupted"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_4
    :try_start_6
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, v0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_5
    :try_start_8
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    const/4 v0, 0x1

    :try_start_9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "parseStatu"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_7
    :try_start_a
    sget-object v1, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/service/a/a;->a()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_b
    sget-object v1, Lcn/com/xy/sms/sdk/service/a/b;->c:Lcn/com/xy/sms/sdk/service/a/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/service/a/a;->a()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_7

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/service/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/b;->d:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "iccid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "simIndex"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->updateIccidCache(Ljava/lang/String;I)V

    goto :goto_0
.end method
