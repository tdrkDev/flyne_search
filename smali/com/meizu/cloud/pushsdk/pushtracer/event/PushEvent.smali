.class public Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;
.super Lcom/meizu/cloud/pushsdk/pushtracer/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder2;,
        Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;
    }
.end annotation


# instance fields
.field private brand:I

.field private deviceId:Ljava/lang/String;

.field private eventCreateTime:Ljava/lang/String;

.field private eventName:Ljava/lang/String;

.field private messageSeq:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pushsdkVersion:Ljava/lang/String;

.field private seqId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/Event;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/event/Event$Builder;)V

    .line 138
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$100(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->taskId:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$200(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->deviceId:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$300(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->eventName:Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$400(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->pushsdkVersion:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$500(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->packageName:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$600(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->seqId:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$700(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->messageSeq:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$800(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->eventCreateTime:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->access$900(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->brand:I

    .line 147
    return-void
.end method

.method public static builder()Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder2;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$1;)V

    return-object v0
.end method


# virtual methods
.method public getDataLoad()Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;-><init>()V

    .line 157
    const-string v1, "en"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "ti"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "di"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "pv"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->pushsdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "pn"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "si"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->seqId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "ms"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->messageSeq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "ect"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->eventCreateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "br"

    iget v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->brand:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->putDefaultParams(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;)Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    move-result-object v0

    return-object v0
.end method
