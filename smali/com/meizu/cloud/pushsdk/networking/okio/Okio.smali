.class public final Lcom/meizu/cloud/pushsdk/networking/okio/Okio;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;
    .locals 2

    .prologue
    .line 56
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSink;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;
    .locals 2

    .prologue
    .line 46
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/RealBufferedSource;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)V

    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 2

    .prologue
    .line 66
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->source(Ljava/io/InputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->source(Ljava/io/InputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;
    .locals 2

    .prologue
    .line 125
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$2;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->source(Ljava/io/InputStream;Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->source(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
