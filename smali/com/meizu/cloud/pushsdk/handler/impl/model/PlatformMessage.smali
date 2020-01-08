.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    }
.end annotation


# static fields
.field public static final PLATFORM_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PLATFORM_PUSH_TIMESTAMP:Ljava/lang/String; = "push_timestamp"

.field public static final PLATFORM_SEQ_ID:Ljava/lang/String; = "seq_id"

.field public static final PLATFORM_TASK_ID:Ljava/lang/String; = "task_id"


# instance fields
.field deviceId:Ljava/lang/String;

.field pushTimesTamp:Ljava/lang/String;

.field seqId:Ljava/lang/String;

.field taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$000(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$000(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->taskId:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$100(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$100(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->seqId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$200(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$200(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->pushTimesTamp:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$300(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->access$300(Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->deviceId:Ljava/lang/String;

    .line 74
    return-void

    .line 69
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 71
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 72
    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public static builder()Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushTimesTamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->pushTimesTamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->seqId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->deviceId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPushTimesTamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->pushTimesTamp:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSeqId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->seqId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->taskId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;-><init>()V

    .line 87
    const-string v1, "task_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "seq_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "push_timestamp"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->pushTimesTamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
