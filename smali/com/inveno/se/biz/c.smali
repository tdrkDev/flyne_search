.class Lcom/inveno/se/biz/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic c:Lcom/inveno/se/biz/UiConfigBiz;


# direct methods
.method constructor <init>(Lcom/inveno/se/biz/UiConfigBiz;Landroid/content/Context;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/c;->c:Lcom/inveno/se/biz/UiConfigBiz;

    iput-object p2, p0, Lcom/inveno/se/biz/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inveno/se/biz/c;->b:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/biz/c;->b:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "getRssInfoList get uid failed"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 3

    iget-object v0, p0, Lcom/inveno/se/biz/c;->c:Lcom/inveno/se/biz/UiConfigBiz;

    iget-object v1, p0, Lcom/inveno/se/biz/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/se/biz/c;->b:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/biz/UiConfigBiz;->getUiConfig(Landroid/content/Context;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method
