.class final Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;
.super Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;->val$contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;->val$contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

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
    .line 121
    const/4 v1, 0x0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->source(Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v1

    .line 124
    invoke-interface {p1, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeAll(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
