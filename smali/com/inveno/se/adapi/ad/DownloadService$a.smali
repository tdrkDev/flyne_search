.class Lcom/inveno/se/adapi/ad/DownloadService$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/se/adapi/ad/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/DownloadService;


# direct methods
.method private constructor <init>(Lcom/inveno/se/adapi/ad/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/se/adapi/ad/DownloadService;Lcom/inveno/se/adapi/ad/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/ad/DownloadService$a;-><init>(Lcom/inveno/se/adapi/ad/DownloadService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wf"

    const-string v2, "downloadService receive a cancelable noti!!!"

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "task_cancel_download_wf_hard_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "hardAdUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const/16 v2, 0x3e7

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "wf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cancel url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/DownloadService;->access$100(Lcom/inveno/se/adapi/ad/DownloadService;)Lcom/inveno/se/adapi/ad/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/DownloadService;->access$100(Lcom/inveno/se/adapi/ad/DownloadService;)Lcom/inveno/se/adapi/ad/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/ad/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u63a5\u6536\u5230\u5b89\u88c5\u5b8c\u6210\u4e8b\u4ef6"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/DownloadService;->access$300(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$400(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/DownloadService$a;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/DownloadService;->access$400(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/AdApiMgr;->uploadEventTrack(Ljava/lang/String;)V

    const-string v0, "\u4e0a\u4f20\u5b89\u88c5\u5b8c\u6210"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u68c0\u6d4b\u5230\u5b89\u88c5\u5305\u4e0d\u662fInvenoAd\u4e0b\u8f7d\u63a8\u5e7f\u7684\u5b89\u88c5\u5305\u4e0d\u8fdb\u884c\u6570\u636e\u56de\u4f20"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
