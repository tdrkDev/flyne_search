.class Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;
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
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

.field final synthetic val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->parse(Ljava/lang/String;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getReportUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "INVENO_AD_UPDATE_URL_KEY"

    invoke-static {}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-static {v3}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->access$100(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inveno/se/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/DownloadCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "config is null"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
