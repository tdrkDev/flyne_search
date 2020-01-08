.class Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

.field final synthetic val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;->this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$4;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {p1}, Lcom/inveno/se/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
