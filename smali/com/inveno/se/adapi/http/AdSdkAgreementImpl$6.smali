.class Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl$6;->this$0:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    const-string v0, "nx_ad_sdk"

    const-string v1, "ad \u4e0a\u62a5\u8fd4\u56de error"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
