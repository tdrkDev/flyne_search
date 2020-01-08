.class public Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/adapi/http/IAdSdkAgreement;


# static fields
.field private static final INVENO_AD_UPDATE_URL_KEY:Ljava/lang/String; = "INVENO_AD_UPDATE_URL_KEY"

.field private static updateUrl:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mustParam:Lcom/inveno/se/model/MustParam;

.field private versionCode:I

.field private volleyHttp:Lcom/inveno/se/http/VolleyHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->versionCode:I

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/inveno/se/http/VolleyHttp;->newInstance(Landroid/content/Context;)Lcom/inveno/se/http/VolleyHttp;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    invoke-static {p1}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    const-string v0, "INVENO_AD_UPDATE_URL_KEY"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->versionCode:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAdConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, p3}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/MustParam;->mappingParams(Ljava/util/Map;)V

    const-string v0, "appid"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "api_ver"

    sget-object v2, Lcom/inveno/se/adapi/config/URLS;->API_VERSION:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adsdk_ver"

    invoke-interface {v3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_ver_code"

    iget v2, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;

    invoke-direct {v4, p0, p2}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$2;

    invoke-direct {v5, p0, p2}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$2;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "ht_adui"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v8, 0x4

    if-le v6, v8, :cond_1

    move v6, v1

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public getAdConfigJSONObject(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, p3}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/MustParam;->mappingParams(Ljava/util/Map;)V

    const-string v0, "appid"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$3;

    invoke-direct {v4, p0, p2}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$3;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;

    invoke-direct {v5, p0, p2}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "ht_adui"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v8, 0x4

    if-le v6, v8, :cond_1

    move v6, v1

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public getVersion(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p4}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, p4}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/MustParam;->mappingParams(Ljava/util/Map;)V

    const-string v0, "vcode"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dexname"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$7;

    invoke-direct {v4, p0, p3}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$7;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$8;

    invoke-direct {v5, p0, p3}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$8;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "ht_dex"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v8, 0x4

    if-le v6, v8, :cond_1

    move v6, v1

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public getVersionCode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    invoke-virtual {v0}, Lcom/inveno/se/http/VolleyHttp;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/model/MustParam;->release()V

    :cond_1
    iput-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    return-void
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->mustParam:Lcom/inveno/se/model/MustParam;

    invoke-virtual {v1, v2}, Lcom/inveno/se/model/MustParam;->mappingParams(Ljava/util/Map;)V

    new-instance v3, Lcom/inveno/se/adapi/model/update/UpdateParam;

    invoke-direct {v3}, Lcom/inveno/se/adapi/model/update/UpdateParam;-><init>()V

    const-string v1, "uid"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setDid(Ljava/lang/String;)V

    const-string v1, "app"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setAppName(Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setAppVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setOs(I)V

    const-string v1, "lang"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setLan(Ljava/lang/String;)V

    const-string v1, "1.0"

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setVer(Ljava/lang/String;)V

    const-string v1, "app"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setChannel(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setMmodel(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setSdkVersion(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setEt(I)V

    invoke-virtual {v3, p2}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setSdk(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setMsg(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setAdType(I)V

    invoke-virtual {v3, p5}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setAdUnitId(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Lcom/inveno/se/adapi/model/update/UpdateParam;->setInvenoSpaceId(Ljava/lang/String;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$5;

    invoke-direct {v5, p0}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$5;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;)V

    new-instance v6, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$6;

    invoke-direct {v6, p0}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$6;-><init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;)V

    sget-object v1, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "INVENO_AD_UPDATE_URL_KEY"

    const-string v2, ""

    iget-object v4, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->context:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    const/4 v2, 0x0

    sget-object v4, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->updateUrl:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/inveno/se/adapi/tools/a;->a(Ljava/lang/String;Lcom/inveno/se/adapi/model/update/UpdateParam;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v7, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
