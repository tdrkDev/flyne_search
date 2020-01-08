.class public Lcom/inveno/se/NContext;
.super Ljava/lang/Object;


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mHasInited:Z

.field private static mSelf:Lcom/inveno/se/NContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/se/NContext;->mHasInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PIKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    :cond_0
    const-string v0, "inveno"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppName AppConfig.APP_NAME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZConfig.PIKEY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "inveno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppName error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDebug(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Ld/a;->a:Z

    if-nez v0, :cond_1a

    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "debug"

    invoke-static {p1, v2}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    :cond_0
    const-string v2, "log"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "log"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    :cond_1
    const-string v2, "host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :goto_0
    :try_start_1
    const-string v2, "second_host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "second_host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    const-string v2, "zzhost"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "zzhost"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    :try_start_3
    const-string v5, "zz_report_host"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "zz_report_host"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    :goto_3
    invoke-static {}, Lcom/inveno/se/CustomController;->getOpenTagLog()Z

    move-result v5

    if-eqz v5, :cond_2

    sput-boolean v7, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    :cond_2
    invoke-static {v4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    sput-object v5, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    :goto_4
    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    :goto_5
    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    :goto_7
    const-string v0, "inveno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppConfig.DEBUG_MODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AppConfig.LOG_SWITCH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detailHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AppConfig.HOST :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZHost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZ_REPORT_HOST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_3
    sput-object v4, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-static {v0}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_9
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {}, Lcom/inveno/se/CustomController;->getOpenTagLog()Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v7, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    :cond_7
    invoke-static {v4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    :goto_a
    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    :goto_b
    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    :goto_c
    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    :goto_d
    const-string v0, "inveno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppConfig.DEBUG_MODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AppConfig.LOG_SWITCH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detailHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AppConfig.HOST :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZHost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZ_REPORT_HOST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    sput-object v4, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    goto/16 :goto_a

    :cond_9
    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    goto :goto_b

    :cond_a
    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    invoke-static {v1}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_e
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/inveno/se/CustomController;->getOpenTagLog()Z

    move-result v0

    if-eqz v0, :cond_c

    sput-boolean v7, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    :cond_c
    invoke-static {v4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    :goto_f
    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    :goto_10
    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    :goto_11
    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    :goto_12
    const-string v0, "inveno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppConfig.DEBUG_MODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AppConfig.LOG_SWITCH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detailHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AppConfig.HOST :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZHost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ZZ_REPORT_HOST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    sput-object v4, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    goto/16 :goto_f

    :cond_e
    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    goto :goto_10

    :cond_f
    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    invoke-static {v1}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_13
    invoke-static {}, Lcom/inveno/se/CustomController;->getOpenTagLog()Z

    move-result v5

    if-eqz v5, :cond_11

    sput-boolean v7, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    :cond_11
    invoke-static {v4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    sput-object v5, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    :goto_14
    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v3, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    :goto_15
    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    :goto_16
    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    :goto_17
    const-string v2, "inveno"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppConfig.DEBUG_MODE:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AppConfig.LOG_SWITCH:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " host:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " detailHost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AppConfig.HOST :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ZZHost:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ZZ_REPORT_HOST:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_12
    sput-object v4, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    goto/16 :goto_14

    :cond_13
    sput-object v3, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    goto :goto_15

    :cond_14
    invoke-static {v2}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    goto :goto_16

    :cond_15
    invoke-static {v1}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_e

    :catch_4
    move-exception v0

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :catch_7
    move-exception v0

    goto/16 :goto_9

    :cond_16
    move-object v0, v1

    goto/16 :goto_3

    :cond_17
    move-object v2, v1

    goto/16 :goto_2

    :cond_18
    move-object v3, v1

    goto/16 :goto_1

    :cond_19
    move-object v4, v1

    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_3
.end method

.method public static declared-synchronized getInstance()Lcom/inveno/se/NContext;
    .locals 2

    const-class v1, Lcom/inveno/se/NContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/NContext;->mSelf:Lcom/inveno/se/NContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/NContext;

    invoke-direct {v0}, Lcom/inveno/se/NContext;-><init>()V

    sput-object v0, Lcom/inveno/se/NContext;->mSelf:Lcom/inveno/se/NContext;

    :cond_0
    sget-object v0, Lcom/inveno/se/NContext;->mSelf:Lcom/inveno/se/NContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->VERSION_NAME:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  versionName!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeSdcardName(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    sput-object v0, Lcom/inveno/se/tools/AppConfig;->SD_NAME:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not get packageName!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized release()V
    .locals 2

    const-class v1, Lcom/inveno/se/NContext;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inveno/se/NContext;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/NContext;->mSelf:Lcom/inveno/se/NContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/inveno/se/NContext;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inveno/se/NContext;->mHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/inveno/se/NContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/inveno/se/NContext;->mHasInited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context can not be null !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Ld/a;->a(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->CONTEXT_PK_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inveno/se/NContext;->makeSdcardName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/inveno/se/NContext;->getVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/inveno/se/NContext;->getAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConfig packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SdcardName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/AppConfig;->SD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/AppConfig;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/inveno/se/NContext;->getDebug(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/se/NContext;->mHasInited:Z

    goto :goto_0
.end method
