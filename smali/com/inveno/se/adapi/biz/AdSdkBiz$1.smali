.class Lcom/inveno/se/adapi/biz/AdSdkBiz$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/biz/AdSdkBiz;

.field final synthetic val$adsdkVer:Ljava/lang/String;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/biz/AdSdkBiz;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->this$0:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    iput-object p2, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    iput-object p4, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$adsdkVer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "no uid"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uidSucces()V
    .locals 5

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->this$0:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    iget-object v1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$downloadCallback:Lcom/inveno/se/callback/DownloadCallback;

    iget-object v3, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->this$0:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    invoke-static {v3}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->access$000(Lcom/inveno/se/adapi/biz/AdSdkBiz;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inveno/se/biz/UidBiz;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;->val$adsdkVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->getConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
