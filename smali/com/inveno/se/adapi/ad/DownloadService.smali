.class public Lcom/inveno/se/adapi/ad/DownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/adapi/ad/DownloadService$a;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TASK_KEY:Ljava/lang/String; = "download_task"

.field private static final NEW_VERSION_NOTI_ID:I = 0x40

.field public static final TASK_CANCEL_DOWNLOAD_WF_HARD_AD:Ljava/lang/String; = "task_cancel_download_wf_hard_ad"

.field public static final TASK_DOWNLOAD_NEW_VERSION:I = 0x2

.field public static final TASK_DOWNLOAD_PUSHAPP:I = 0x3

.field public static final TASK_DOWNLOAD_TTS:I = 0x1

.field public static final TASK_DOWNLOAD_WF_HARD_AD:I = 0x4

.field public static final TASK_SILENT_DOWNLOAD_NEW_VERSION:I = 0x5

.field private static final TTS_NOTI_ID:I = 0x3f

.field private static final WF_HARD_AD_ID:I = 0x3e7


# instance fields
.field private context:Landroid/content/Context;

.field private downloadReceive:Lcom/inveno/se/adapi/ad/DownloadService$a;

.field private download_url:Ljava/lang/String;

.field private install_url:Ljava/lang/String;

.field private mDownloadManager:Lcom/inveno/se/adapi/ad/c;

.field private manager:Landroid/app/NotificationManager;

.field private packageNameMine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->install_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->packageNameMine:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/inveno/se/adapi/ad/DownloadService;)Lcom/inveno/se/adapi/ad/c;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->packageNameMine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->install_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getDownloadCallback(Ljava/lang/String;ZLjava/lang/String;II)Lcom/inveno/se/adapi/ad/a;
    .locals 6

    new-instance v0, Lcom/inveno/se/adapi/ad/e;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/adapi/ad/e;-><init>(Lcom/inveno/se/adapi/ad/DownloadService;ZLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private getSilentDownloadCallback(Ljava/lang/String;)Lcom/inveno/se/adapi/ad/a;
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/ad/f;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/ad/f;-><init>(Lcom/inveno/se/adapi/ad/DownloadService;)V

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->context:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->manager:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/inveno/se/adapi/ad/c;->a(Landroid/content/Context;)Lcom/inveno/se/adapi/ad/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    new-instance v0, Lcom/inveno/se/adapi/ad/DownloadService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/se/adapi/ad/DownloadService$a;-><init>(Lcom/inveno/se/adapi/ad/DownloadService;Lcom/inveno/se/adapi/ad/e;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->downloadReceive:Lcom/inveno/se/adapi/ad/DownloadService$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "task_cancel_download_wf_hard_ad"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/DownloadService;->downloadReceive:Lcom/inveno/se/adapi/ad/DownloadService$a;

    invoke-virtual {p0, v1, v0}, Lcom/inveno/se/adapi/ad/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->downloadReceive:Lcom/inveno/se/adapi/ad/DownloadService$a;

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v4, 0x0

    const-string v0, "\u4e0b\u8f7d\u670d\u52a1\u6267\u884c\u4e86onstartCommand"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/tools/SdcardUtil;->getSDPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SD\u5361\u5f02\u5e38\uff0c\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/inveno/se/tools/SdcardUtil;->getSdcardUsableSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "SD\u5361\u7a7a\u95f4\u5df2\u6ee1\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u540e\u518d\u8bd5\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    const-string v0, "download_task"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "hardAdUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "download_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->download_url:Ljava/lang/String;

    const-string v0, "install_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->install_url:Ljava/lang/String;

    iput-object v3, p0, Lcom/inveno/se/adapi/ad/DownloadService;->packageNameMine:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "notiId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/adapi/ad/DownloadService;->getDownloadCallback(Ljava/lang/String;ZLjava/lang/String;II)Lcom/inveno/se/adapi/ad/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " appName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u4e0b\u8f7dapp\u7684url\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " notiId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    invoke-virtual {v2, v1, v3, v5, v0}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "silentInstall"

    const-string v1, "\u5f00\u59cb\u9759\u9ed8\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    invoke-virtual {v3, v1}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/DownloadService;->mDownloadManager:Lcom/inveno/se/adapi/ad/c;

    invoke-direct {p0, v1}, Lcom/inveno/se/adapi/ad/DownloadService;->getSilentDownloadCallback(Ljava/lang/String;)Lcom/inveno/se/adapi/ad/a;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)V

    goto/16 :goto_0

    :cond_4
    move-object v6, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
