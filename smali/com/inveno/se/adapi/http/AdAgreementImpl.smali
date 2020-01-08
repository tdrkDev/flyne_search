.class public Lcom/inveno/se/adapi/http/AdAgreementImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/adapi/http/IAdAgreement;


# instance fields
.field adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inveno/se/adapi/http/AdVolleyHttp;

    invoke-direct {v0, p1}, Lcom/inveno/se/adapi/http/AdVolleyHttp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    return-void
.end method


# virtual methods
.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$1;

    invoke-direct {v4, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$1;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$2;

    invoke-direct {v5, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$2;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v1, 0x1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .locals 8
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
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;

    invoke-direct {v4, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$4;

    invoke-direct {v5, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$4;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v1, 0x1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 8
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
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$5;

    invoke-direct {v4, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$5;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;

    invoke-direct {v5, p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v1, 0x1

    sget-object v2, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 8
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

    const/4 v1, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;

    invoke-direct {v4, p0, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$10;

    invoke-direct {v5, p0, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl$10;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v3, 0x0

    move-object v2, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 8
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

    const/4 v6, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$11;

    invoke-direct {v4, p0, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl$11;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$12;

    invoke-direct {v5, p0, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl$12;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method

.method public loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<[B>;)V"
        }
    .end annotation

    new-instance v3, Lcom/inveno/se/adapi/http/AdAgreementImpl$13;

    invoke-direct {v3, p0, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl$13;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$14;

    invoke-direct {v4, p0, p3}, Lcom/inveno/se/adapi/http/AdAgreementImpl$14;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdProto(Ljava/lang/String;[BLcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Z)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    return-void
.end method

.method public upLoadEvent(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v4, Lcom/inveno/se/adapi/http/AdAgreementImpl$7;

    invoke-direct {v4, p0, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl$7;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    new-instance v5, Lcom/inveno/se/adapi/http/AdAgreementImpl$8;

    invoke-direct {v5, p0, p2}, Lcom/inveno/se/adapi/http/AdAgreementImpl$8;-><init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl;->adVolleyHttp:Lcom/inveno/se/adapi/http/AdVolleyHttp;

    const/4 v3, 0x0

    move-object v2, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V

    return-void
.end method
