.class public Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;
    .locals 5

    .prologue
    .line 32
    const-string v0, "mz_push_control_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "extra_app_push_seq_Id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v2, "statistics_imei_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "pushMessage"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-direct {v4, v3, v0, v2, v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v4
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 97
    const/high16 v0, 0x10000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "AbstractMessageHandler"

    const-string v2, "start LogUploadMessageHandler match"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "mz_push_control_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->getPushType()I

    move-result v0

    .line 91
    :goto_0
    const-string v2, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "2"

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 91
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;)V
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getSeqId()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTime()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;)V

    return-void
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {}, Lcom/meizu/cloud/a/a;->a()V

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/Android/data/pushSdktmp/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/ZipTask;

    invoke-direct {v0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/ZipTask;-><init>(Ljava/lang/String;)V

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getFileList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/ZipTask;->zip(Ljava/util/List;)Z

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 59
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getMaxSize()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 60
    const-string v0, "the upload file exceeds the max size"

    .line 64
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->getInstance(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 73
    :cond_1
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_2
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v2, "AbstractMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zip error message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->isWifiUpload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/util/Connectivity;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v0, "current network not allowed upload log file"

    goto/16 :goto_1

    .line 75
    :cond_3
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/fileupload/LogUploadMessageHandler;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
