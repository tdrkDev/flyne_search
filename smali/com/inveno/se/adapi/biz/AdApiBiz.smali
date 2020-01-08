.class public Lcom/inveno/se/adapi/biz/AdApiBiz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/biz/CanReleaseBiz;


# static fields
.field private static adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;


# instance fields
.field private adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

.field private appConfig:Lcom/inveno/se/adapi/config/AppConfig;

.field private appData:Lcom/inveno/se/adapi/model/adreq/App;

.field private bid:Ljava/lang/String;

.field private deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

.field private deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

.field private errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

.field private mContext:Landroid/content/Context;

.field private netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

.field private user:Lcom/inveno/se/adapi/model/adreq/User;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Device;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/App;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/App;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/User;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/User;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    iput-object p1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-direct {v0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    new-instance v0, Lcom/inveno/se/adapi/biz/AdApiBiz$1;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/biz/AdApiBiz$1;-><init>(Lcom/inveno/se/adapi/biz/AdApiBiz;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/AppConfig;->newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/NetWorkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/config/DeviceConfig;->getDevice()Lcom/inveno/se/adapi/model/adreq/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/config/AppConfig;->getAppData()Lcom/inveno/se/adapi/model/adreq/App;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/App;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    return-void
.end method

.method private getUidFromSD()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/se/biz/UidBiz;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->getUid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u672c\u5730uid\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "\u83b7\u53d6\u672c\u5730uid\u5931\u8d25"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/biz/AdApiBiz;
    .locals 2

    const-class v1, Lcom/inveno/se/adapi/biz/AdApiBiz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;
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
.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {}, Lcom/inveno/se/adapi/config/URLS;->isDebug()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v15}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZII)V

    return-void
.end method

.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZII)V"
        }
    .end annotation

    const-string v2, "start!!"

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3}, Lcom/inveno/se/adapi/model/adreq/App;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    new-instance v2, Lcom/inveno/se/adapi/model/adreq/AdReq;

    invoke-direct {v2}, Lcom/inveno/se/adapi/model/adreq/AdReq;-><init>()V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/adapi/config/URLS;->getAPI_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApi_version(Ljava/lang/String;)V

    sget-object v3, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUa(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3, p2}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_id(Ljava/lang/String;)V

    invoke-static {p9}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3, p9}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_name(Ljava/lang/String;)V

    :cond_0
    invoke-static {p8}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3, p8}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/App;->setReport_pv_method(I)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApp(Lcom/inveno/se/adapi/model/adreq/App;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-virtual {v3}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkData()Lcom/inveno/se/adapi/model/adreq/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setNetwork(Lcom/inveno/se/adapi/model/adreq/Network;)V

    if-eqz p6, :cond_4

    invoke-virtual {v2, p6}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setGps(Lcom/inveno/se/adapi/model/adreq/Gps;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpsData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/inveno/se/adapi/model/adreq/Gps;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const-string v3, "\u672c\u6b21\u8bf7\u6c42\u5df2\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :goto_1
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setIs_debug(Z)V

    new-instance v3, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-direct {v3}, Lcom/inveno/se/adapi/model/adreq/Adspace;-><init>()V

    invoke-virtual {v3, p3}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_id(Ljava/lang/String;)V

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_type(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAllowed_html(Ljava/lang/Boolean;)V

    invoke-virtual {v3, p4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setWidth(I)V

    invoke-virtual {v3, p5}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setHeight(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_num(I)V

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setOpen_type(I)V

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setInteraction_type(Ljava/util/List;)V

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAssets(Ljava/util/List;)V

    if-lez p14, :cond_1

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_time(I)V

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setAdspaces(Ljava/util/List;)V

    invoke-static {p7}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v3, p7}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/AdReq;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5e7f\u544a\u53c2\u6570 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ads request json error !!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    sget-object v4, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "\u672c\u6b21\u8bf7\u6c42\u672a\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iget-object v4, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

    invoke-virtual {v3, p1, v2, v4}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/App;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/AdReq;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;-><init>()V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/adapi/config/URLS;->getAPI_VERSION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApi_version(Ljava/lang/String;)V

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUa(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1, p2}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1, v4}, Lcom/inveno/se/adapi/model/adreq/App;->setReport_pv_method(I)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApp(Lcom/inveno/se/adapi/model/adreq/App;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkData()Lcom/inveno/se/adapi/model/adreq/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setNetwork(Lcom/inveno/se/adapi/model/adreq/Network;)V

    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setGps(Lcom/inveno/se/adapi/model/adreq/Gps;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpsData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/inveno/se/adapi/model/adreq/Gps;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u5df2\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setIs_debug(Z)V

    new-instance v1, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adreq/Adspace;-><init>()V

    invoke-virtual {v1, p3}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_id(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_type(I)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAllowed_html(Ljava/lang/Boolean;)V

    invoke-virtual {v1, p4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setWidth(I)V

    invoke-virtual {v1, p5}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setHeight(I)V

    invoke-virtual {v1, p8}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_num(I)V

    invoke-virtual {v1, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setOpen_type(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setInteraction_type(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAssets(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setAdspaces(Ljava/util/List;)V

    invoke-static {p7}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v1, p7}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5e7f\u544a\u53c2\u6570 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ads request json error !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u672a\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iget-object v2, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

    invoke-virtual {v1, p1, v0, v2}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3}, Lcom/inveno/se/adapi/model/adreq/App;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    new-instance v2, Lcom/inveno/se/adapi/model/adreq/AdReq;

    invoke-direct {v2}, Lcom/inveno/se/adapi/model/adreq/AdReq;-><init>()V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/adapi/config/URLS;->getAPI_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApi_version(Ljava/lang/String;)V

    sget-object v3, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUa(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3, p2}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_id(Ljava/lang/String;)V

    invoke-static/range {p10 .. p10}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_name(Ljava/lang/String;)V

    :cond_0
    invoke-static {p9}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v3, p9}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/App;->setReport_pv_method(I)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApp(Lcom/inveno/se/adapi/model/adreq/App;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-virtual {v3}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkData()Lcom/inveno/se/adapi/model/adreq/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setNetwork(Lcom/inveno/se/adapi/model/adreq/Network;)V

    if-eqz p6, :cond_4

    invoke-virtual {v2, p6}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setGps(Lcom/inveno/se/adapi/model/adreq/Gps;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpsData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Lcom/inveno/se/adapi/model/adreq/Gps;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const-string v3, "\u672c\u6b21\u8bf7\u6c42\u5df2\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :goto_1
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setIs_debug(Z)V

    new-instance v3, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-direct {v3}, Lcom/inveno/se/adapi/model/adreq/Adspace;-><init>()V

    invoke-virtual {v3, p3}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_id(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_type(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAllowed_html(Ljava/lang/Boolean;)V

    invoke-virtual {v3, p4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setWidth(I)V

    invoke-virtual {v3, p5}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setHeight(I)V

    invoke-virtual {v3, p8}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_num(I)V

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setOpen_type(I)V

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setInteraction_type(Ljava/util/List;)V

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAssets(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p15, :cond_1

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_time(I)V

    :cond_1
    invoke-virtual {v2, v4}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setAdspaces(Ljava/util/List;)V

    invoke-static {p7}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v3, p7}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adreq/AdReq;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5e7f\u544a\u53c2\u6570 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ads request json error !!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    sget-object v4, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "\u672c\u6b21\u8bf7\u6c42\u672a\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iget-object v4, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

    invoke-virtual {v3, p1, v2, v4}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/App;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/AdReq;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;-><init>()V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->bid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/adapi/config/URLS;->getAPI_VERSION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApi_version(Ljava/lang/String;)V

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUa(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1, p2}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_id(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1, p6}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_name(Ljava/lang/String;)V

    :cond_0
    invoke-static {p5}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1, p5}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/App;->setReport_pv_method(I)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setApp(Lcom/inveno/se/adapi/model/adreq/App;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkData()Lcom/inveno/se/adapi/model/adreq/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setNetwork(Lcom/inveno/se/adapi/model/adreq/Network;)V

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setGps(Lcom/inveno/se/adapi/model/adreq/Gps;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpsData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/inveno/se/adapi/model/adreq/Gps;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u5df2\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p8}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setIs_debug(Z)V

    invoke-virtual {v0, p7}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setAdspaces(Ljava/util/List;)V

    invoke-static {p4}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v1, p4}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/AdReq;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5e7f\u544a\u53c2\u6570 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ads request json error !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    sget-object v2, Lcom/inveno/se/tools/AppConfig;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/App;->setChannel_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u672a\u643a\u5e26\u5b9a\u4f4d\u4fe1\u606f\uff01"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-direct {p0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getUidFromSD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adreq/User;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/AdReq;->setUser(Lcom/inveno/se/adapi/model/adreq/User;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v1, p1, v0}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx_ad_sdk"

    const-string v1, "loadAdGet url is empty"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx_ad_sdk"

    const-string v1, "loadAdPost url is empty"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<[B>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx_ad_sdk"

    const-string v1, "loadAdPostProto url is empty"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/config/DeviceConfig;->release()V

    :cond_0
    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->release()V

    :cond_1
    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->errorListener:Lcom/inveno/se/volley/Response$ErrorListener;

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->deviceData:Lcom/inveno/se/adapi/model/adreq/Device;

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/config/AppConfig;->release()V

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    :cond_2
    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->user:Lcom/inveno/se/adapi/model/adreq/User;

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/config/NetWorkConfig;->release()V

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->netWorkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    :cond_3
    sput-object v1, Lcom/inveno/se/adapi/biz/AdApiBiz;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->mContext:Landroid/content/Context;

    return-void
.end method

.method public uploadEventTrack(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uploadEventTrack url isEmpty !!!"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadEventTrack\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->upLoadEvent(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    goto :goto_0
.end method

.method public uploadEventTrack(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 3

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nx"

    const-string v1, "uploadEventTrack url isEmpty !!!"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadEventTrack\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdApiBiz;->adAgreementImpl:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl;->upLoadEvent(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    goto :goto_0
.end method
