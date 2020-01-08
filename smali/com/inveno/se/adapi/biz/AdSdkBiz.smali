.class public Lcom/inveno/se/adapi/biz/AdSdkBiz;
.super Ljava/lang/Object;


# instance fields
.field private adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

.field private context:Landroid/content/Context;

.field private mUidBiz:Lcom/inveno/se/biz/UidBiz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    new-instance v0, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-direct {v0, p1}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/adapi/biz/AdSdkBiz;)Lcom/inveno/se/biz/UidBiz;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->getAdConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    new-instance v1, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/inveno/se/adapi/biz/AdSdkBiz$1;-><init>(Lcom/inveno/se/adapi/biz/AdSdkBiz;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getVersion(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 1
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

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->getVersion(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->destroy()V

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->mUidBiz:Lcom/inveno/se/biz/UidBiz;

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->release()V

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    iput-object v1, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->context:Landroid/content/Context;

    return-void
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/inveno/se/adapi/biz/AdSdkBiz;->adSdkAgreement:Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/adapi/http/AdSdkAgreementImpl;->update(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
