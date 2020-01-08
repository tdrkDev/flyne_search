.class public Lcom/inveno/se/http/AgreeMentImplVolley;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/http/IAgreement;


# instance fields
.field private context:Landroid/content/Context;

.field private volleyHttp:Lcom/inveno/se/http/VolleyHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/inveno/se/http/VolleyHttp;->newInstance(Landroid/content/Context;)Lcom/inveno/se/http/VolleyHttp;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    sget-boolean v0, Ld/a;->c:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/inveno/se/tools/DeviceConfig;->initDeviceData(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcom/inveno/se/tools/DeviceConfig;->initScreenSize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getUiConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 9
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

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/MustParam;->mappingParams(Ljava/util/Map;)V

    const-string v0, "chash"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/inveno/se/http/AgreeMentImplVolley$3;

    invoke-direct {v4, p0, p2}, Lcom/inveno/se/http/AgreeMentImplVolley$3;-><init>(Lcom/inveno/se/http/AgreeMentImplVolley;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/http/AgreeMentImplVolley$4;

    invoke-direct {v5, p0, p2}, Lcom/inveno/se/http/AgreeMentImplVolley$4;-><init>(Lcom/inveno/se/http/AgreeMentImplVolley;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    sget-object v2, Lcom/inveno/se/config/URLPath;->GET_SDKUI_CONFIG:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/se/tools/URLUtils;->getOperateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v8, 0x4

    if-le v6, v8, :cond_0

    move v6, v1

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public getUid(Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v3, v2}, Lcom/inveno/se/model/MustParam;->mappingParamsForUid(Ljava/util/Map;Ljava/lang/String;)V

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "imi"

    sget-object v2, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mac"

    sget-object v2, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "w"

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "h"

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ram"

    const-string v2, "2G"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/inveno/se/http/AgreeMentImplVolley$1;

    invoke-direct {v4, p0, p1}, Lcom/inveno/se/http/AgreeMentImplVolley$1;-><init>(Lcom/inveno/se/http/AgreeMentImplVolley;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/http/AgreeMentImplVolley$2;

    invoke-direct {v5, p0, p1}, Lcom/inveno/se/http/AgreeMentImplVolley$2;-><init>(Lcom/inveno/se/http/AgreeMentImplVolley;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    sget-object v2, Lcom/inveno/se/config/URLPath;->GET_UID:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/se/tools/URLUtils;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/http/VolleyHttp;->requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public getVolleyHttp()Lcom/inveno/se/http/VolleyHttp;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/http/AgreeMentImplVolley;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    return-object v0
.end method
