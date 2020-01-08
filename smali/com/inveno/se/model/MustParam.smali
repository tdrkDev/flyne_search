.class public Lcom/inveno/se/model/MustParam;
.super Ljava/lang/Object;


# static fields
.field public static final AGREEMENT_VERSION:Ljava/lang/String; = "rver"

.field public static final APP_NAME:Ljava/lang/String; = "app"

.field public static final APP_VERSION:Ljava/lang/String; = "ver"

.field public static final IMEI:Ljava/lang/String; = "imi"

.field public static final LOCAL_TOKEN:Ljava/lang/String; = "ltk"

.field public static final MAC:Ljava/lang/String; = "mac"

.field public static final NET:Ljava/lang/String; = "net"

.field public static final OPERATORS:Ljava/lang/String; = "op"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final OS_LANGUAGE:Ljava/lang/String; = "lang"

.field public static final OS_VERSION:Ljava/lang/String; = "osver"

.field public static final PHONE_MODEL:Ljava/lang/String; = "pm"

.field public static final PULL:Ljava/lang/String; = "pull"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdk"

.field public static final TIME_CURRENT:Ljava/lang/String; = "tm"

.field public static final TOKEN:Ljava/lang/String; = "tk"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static appName:Ljava/lang/String;

.field private static mustParam:Lcom/inveno/se/model/MustParam;


# instance fields
.field private context:Landroid/content/Context;

.field private mLocalToken:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->uid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/inveno/se/model/MustParam;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PIKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    sget-object v0, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lcom/inveno/se/http/security/b;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->time:Ljava/lang/String;

    const-string v0, "ltk"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/inveno/se/model/MustParam;->context:Landroid/content/Context;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "packAge name not find!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;
    .locals 2

    const-class v1, Lcom/inveno/se/model/MustParam;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/model/MustParam;->mustParam:Lcom/inveno/se/model/MustParam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/model/MustParam;

    invoke-direct {v0, p0}, Lcom/inveno/se/model/MustParam;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/model/MustParam;->mustParam:Lcom/inveno/se/model/MustParam;

    :cond_0
    sget-object v0, Lcom/inveno/se/model/MustParam;->mustParam:Lcom/inveno/se/model/MustParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public mappingParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uid"

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->uid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->uid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/inveno/se/model/MustParam;->mappingParamsForUid(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public mappingParamsForUid(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "app"

    sget-object v1, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ver"

    sget-object v1, Lcom/inveno/se/tools/Const;->VERSION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->operator:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "op"

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->operator:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mac"

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "os"

    const-string v1, "android"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "osver"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pm"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lang"

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->time:Ljava/lang/String;

    const-string v0, "tm"

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->time:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk"

    sget v1, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rver"

    const-string v1, "5"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->context:Landroid/content/Context;

    invoke-static {v0}, Ld/d;->b(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "OTHER"

    :goto_0
    const-string v1, "net"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->token:Ljava/lang/String;

    const-string v0, "tk"

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->token:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ltk"

    const-string v1, ""

    iget-object v2, p0, Lcom/inveno/se/model/MustParam;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ltk"

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ltk"

    iget-object v1, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    :pswitch_3
    const-string v0, "5G"

    goto :goto_0

    :pswitch_4
    const-string v0, "WIFI"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public mappingTkWithUid(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/inveno/se/model/MustParam;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/model/MustParam;->mustParam:Lcom/inveno/se/model/MustParam;

    return-void
.end method

.method public setLocalToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/MustParam;->mLocalToken:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/MustParam;->uid:Ljava/lang/String;

    return-void
.end method
