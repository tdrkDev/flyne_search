.class public Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;
.super Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
.source "SourceFile"


# instance fields
.field private bufferedSink:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

.field private final requestBody:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

.field private uploadProgressHandler:Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->requestBody:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;

    invoke-direct {v0, p2}, Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;-><init>(Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->uploadProgressHandler:Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;)Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->uploadProgressHandler:Lcom/meizu/cloud/pushsdk/networking/internal/UploadProgressHandler;

    return-object v0
.end method

.method private sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->requestBody:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->requestBody:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->bufferedSink:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->bufferedSink:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->requestBody:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->bufferedSink:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V

    .line 64
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/RequestProgressBody;->bufferedSink:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->flush()V

    .line 65
    return-void
.end method
