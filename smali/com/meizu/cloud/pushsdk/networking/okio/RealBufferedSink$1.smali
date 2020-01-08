.class Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->close()V

    .line 210
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->flush()V

    .line 206
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 192
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->emitCompleteSegments()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 193
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->write([BII)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 198
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;->emitCompleteSegments()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 199
    return-void
.end method
