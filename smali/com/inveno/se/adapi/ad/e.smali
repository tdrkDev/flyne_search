.class Lcom/inveno/se/adapi/ad/e;
.super Lcom/inveno/se/adapi/ad/a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/inveno/se/adapi/ad/DownloadService;

.field private f:Landroid/app/Notification;

.field private g:I


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/ad/DownloadService;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    iput-boolean p2, p0, Lcom/inveno/se/adapi/ad/e;->a:Z

    iput-object p3, p0, Lcom/inveno/se/adapi/ad/e;->b:Ljava/lang/String;

    iput p4, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    iput-object p5, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/inveno/se/adapi/ad/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-super {p0}, Lcom/inveno/se/adapi/ad/a;->a()V

    iget-boolean v0, p0, Lcom/inveno/se/adapi/ad/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/inveno/se/adapi/ad/g;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$500(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v0

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/DownloadService;->access$500(Lcom/inveno/se/adapi/ad/DownloadService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/adapi/AdApiMgr;->uploadEventTrack(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/DownloadService;->access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.inveno."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".downloadservice.fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/ad/DownloadService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " noti:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/DownloadService;->access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->b:Ljava/lang/String;

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    iget-object v4, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u66f4\u65b0\u8fdb\u5ea6 taskUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inveno/se/adapi/ad/e;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ge p5, v0, :cond_1

    iget v0, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    if-eq v0, v3, :cond_0

    :try_start_0
    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/ad/e;->g:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    iput v3, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    iput v3, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iput v3, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iput v3, p0, Lcom/inveno/se/adapi/ad/e;->g:I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/DownloadService;->access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/se/adapi/ad/e;->f:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u7ed3\u675f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/e;->e:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/DownloadService;->access$200(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/inveno/se/adapi/ad/e;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;)V

    return-void
.end method
