.class Lcom/inveno/se/adapi/http/AdAgreementImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

.field final synthetic val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;->this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 3

    const-string v0, "benny"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6Ads \u5931\u8d25  error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/se/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$6;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {p1}, Lcom/inveno/se/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
