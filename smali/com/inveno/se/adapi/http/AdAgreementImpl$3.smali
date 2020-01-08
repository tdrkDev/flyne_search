.class Lcom/inveno/se/adapi/http/AdAgreementImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/se/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

.field final synthetic val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "benny"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230Ads \u6570\u636e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230Ads \u6570\u636e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/adapi/model/adresp/AdResp;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/AdResp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getError_code()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->parseList(Lcom/inveno/se/adapi/model/adresp/AdResp;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "benny"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gson.fromJson adResp\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "no ad"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAds \u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    const-string v1, "kkkgetFlowAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAds \u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$3;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "no ad"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
