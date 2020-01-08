.class Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;
.super Lcom/meizu/cloud/pushsdk/networking/okio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bytesWritten:J

.field contentLength:J

.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;

    invoke-direct {p0, p2}, Lcom/meizu/cloud/pushsdk/networking/okio/ForwardingSink;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V

    .line 69
    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->bytesWritten:J

    .line 70
    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/okio/ForwardingSink;->write(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)V

    .line 75
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->contentLength:J

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->bytesWritten:J

    .line 79
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->access$000(Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;)Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->access$000(Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;)Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/model/Progress;

    iget-wide v4, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->bytesWritten:J

    iget-wide v6, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;->contentLength:J

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/meizu/cloud/pushsdk/networking/model/Progress;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    :cond_1
    return-void
.end method
