.class public Lcom/inveno/reportsdk/CommonParams;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/inveno/reportsdk/CommonParams;


# instance fields
.field private aid:Ljava/lang/String;

.field private apiVer:Ljava/lang/String;

.field private appLan:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private deviceLan:Ljava/lang/String;

.field private fuid:Ljava/lang/String;

.field private height:I

.field private imei:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private mode:I

.field private model:Ljava/lang/String;

.field private nmcc:Ljava/lang/String;

.field private nmnc:Ljava/lang/String;

.field private osv:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private promotion:Ljava/lang/String;

.field private pushUpack:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private sdkVer:Ljava/lang/String;

.field private seq:I

.field private sid:I

.field private uid:Ljava/lang/String;

.field private upack:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/inveno/reportsdk/CommonParams;->seq:I

    const-string v0, "android"

    iput-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->platform:Ljava/lang/String;

    iput v1, p0, Lcom/inveno/reportsdk/CommonParams;->mode:I

    return-void
.end method

.method private addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    const-string p3, ""

    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inveno/reportsdk/CommonParams;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/CommonParams;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/CommonParams;->INSTANCE:Lcom/inveno/reportsdk/CommonParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/CommonParams;

    invoke-direct {v0}, Lcom/inveno/reportsdk/CommonParams;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/CommonParams;->INSTANCE:Lcom/inveno/reportsdk/CommonParams;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/CommonParams;->INSTANCE:Lcom/inveno/reportsdk/CommonParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getToken(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->aid:Ljava/lang/String;

    return-object v0
.end method

.method getAndIncreaseSeq()I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/CommonParams;->seq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inveno/reportsdk/CommonParams;->seq:I

    return v0
.end method

.method getApiVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->apiVer:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->appLan:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->brand:Ljava/lang/String;

    return-object v0
.end method

.method getCommonParams()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->productId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "promotion"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->promotion:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v1, "tk"

    const-string v4, ""

    invoke-static {v4, v2, v3}, Lcom/inveno/reportsdk/CommonParams;->getToken(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "request_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->uid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "fuid"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->fuid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "app_ver"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->appVer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->sdkVer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "api_ver"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->apiVer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "network"

    sget-object v2, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v2}, Ld/d;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "imei"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->imei:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "aid"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->aid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "brand"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->brand:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "model"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->model:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "osv"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->osv:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "platform"

    const-string v2, "android"

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "language"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->deviceLan:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "app_lan"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->appLan:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mcc"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->mcc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mnc"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->mnc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "nmcc"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->nmcc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "nmnc"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->nmnc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mac"

    sget-object v2, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "referrer"

    iget-object v2, p0, Lcom/inveno/reportsdk/CommonParams;->referrer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method getDeviceLan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->deviceLan:Ljava/lang/String;

    return-object v0
.end method

.method getFuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->fuid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->imei:Ljava/lang/String;

    return-object v0
.end method

.method getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method getMode()I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/CommonParams;->mode:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->model:Ljava/lang/String;

    return-object v0
.end method

.method getNmcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->nmcc:Ljava/lang/String;

    return-object v0
.end method

.method getNmnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->nmnc:Ljava/lang/String;

    return-object v0
.end method

.method getOsv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->osv:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method getPushUpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->pushUpack:Ljava/lang/String;

    return-object v0
.end method

.method getReferrer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method getSdkVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->sdkVer:Ljava/lang/String;

    return-object v0
.end method

.method getSeq()I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/CommonParams;->seq:I

    return v0
.end method

.method getSid()I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/CommonParams;->sid:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->uid:Ljava/lang/String;

    return-object v0
.end method

.method getUidParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/inveno/reportsdk/CommonParams;->mappingParams(Ljava/util/Map;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "aid"

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "imei"

    sget-object v2, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mac"

    sget-object v2, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "width"

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getUpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/CommonParams;->upack:Ljava/lang/String;

    return-object v0
.end method

.method mappingParams(Ljava/util/Map;)V
    .locals 6
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "tk"

    const-string v3, ""

    invoke-static {v3, v0, v1}, Lcom/inveno/reportsdk/CommonParams;->getToken(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "product_id"

    iget-object v3, p0, Lcom/inveno/reportsdk/CommonParams;->productId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "promotion"

    iget-object v3, p0, Lcom/inveno/reportsdk/CommonParams;->promotion:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "request_time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "fuid"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->fuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "app_ver"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->appVer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "sdk_ver"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->sdkVer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "api_ver"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->apiVer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "network"

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v1}, Ld/d;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "imei"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->imei:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "aid"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->aid:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "brand"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->brand:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "model"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->model:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "osv"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->osv:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "platform"

    const-string v1, "android"

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "language"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->deviceLan:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "app_lan"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->appLan:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "mcc"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->mcc:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "mnc"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->mnc:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "nmcc"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->nmcc:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "nmnc"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->nmnc:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "mac"

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "referrer"

    iget-object v1, p0, Lcom/inveno/reportsdk/CommonParams;->referrer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/inveno/reportsdk/CommonParams;->addKeyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/CommonParams;->INSTANCE:Lcom/inveno/reportsdk/CommonParams;

    return-void
.end method

.method setAid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->aid:Ljava/lang/String;

    return-void
.end method

.method setApiVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->apiVer:Ljava/lang/String;

    return-void
.end method

.method setAppLan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->appLan:Ljava/lang/String;

    return-void
.end method

.method setAppVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->appVer:Ljava/lang/String;

    return-void
.end method

.method setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->brand:Ljava/lang/String;

    return-void
.end method

.method setDeviceLan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->deviceLan:Ljava/lang/String;

    return-void
.end method

.method setFuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->fuid:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/reportsdk/CommonParams;->height:I

    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->imei:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->mac:Ljava/lang/String;

    return-void
.end method

.method setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->mcc:Ljava/lang/String;

    return-void
.end method

.method setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->mnc:Ljava/lang/String;

    return-void
.end method

.method setMode(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/reportsdk/CommonParams;->mode:I

    return-void
.end method

.method setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->model:Ljava/lang/String;

    return-void
.end method

.method setNmcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->nmcc:Ljava/lang/String;

    return-void
.end method

.method setNmnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->nmnc:Ljava/lang/String;

    return-void
.end method

.method setOsv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->osv:Ljava/lang/String;

    return-void
.end method

.method setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->productId:Ljava/lang/String;

    return-void
.end method

.method setPromotion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->promotion:Ljava/lang/String;

    return-void
.end method

.method setPushUpack(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->pushUpack:Ljava/lang/String;

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    const-string v1, "data_sdk"

    const-string v2, "push_upack"

    invoke-static {v0, v1, v2, p1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setReferrer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->referrer:Ljava/lang/String;

    return-void
.end method

.method setSdkVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->sdkVer:Ljava/lang/String;

    return-void
.end method

.method public setSeq(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/reportsdk/CommonParams;->seq:I

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/reportsdk/CommonParams;->sid:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->uid:Ljava/lang/String;

    return-void
.end method

.method setUpack(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/inveno/reportsdk/CommonParams;->upack:Ljava/lang/String;

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    const-string v1, "data_sdk"

    const-string v2, "upack"

    invoke-static {v0, v1, v2, p1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/reportsdk/CommonParams;->width:I

    return-void
.end method
