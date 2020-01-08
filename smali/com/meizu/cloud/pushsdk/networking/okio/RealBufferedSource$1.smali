.class Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->close()V

    .line 384
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->source:Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/Source;->read(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)J

    move-result-wide v0

    .line 360
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->access$000(Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 369
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->source:Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/Source;->read(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)J

    move-result-wide v0

    .line 371
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 374
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;->buffer:Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
