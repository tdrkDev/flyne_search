.class public Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/networking/http/Call;


# instance fields
.field sslExtensionSocketFactory:Lcom/meizu/cloud/pushsdk/networking/ssl/SSLExtensionSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/ssl/SSLExtensionSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/ssl/SSLExtensionSocketFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->sslExtensionSocketFactory:Lcom/meizu/cloud/pushsdk/networking/ssl/SSLExtensionSocketFactory;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->body()Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 178
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V

    .line 181
    invoke-interface {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->close()V

    .line 183
    :cond_0
    return-void
.end method

.method private static createOkBody(Ljava/net/HttpURLConnection;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->isSuccessfulSend(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 63
    :goto_1
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->source(Ljava/io/InputStream;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v1

    .line 65
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;-><init>(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1
.end method

.method protected static isSuccessfulSend(I)Z
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openConnection(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xea60

    .line 112
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "HttpURLConnectionCall"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 117
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 119
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://api-push.meizu.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 124
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->sslExtensionSocketFactory:Lcom/meizu/cloud/pushsdk/networking/ssl/SSLExtensionSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 127
    :cond_1
    return-object v1
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->getmethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 152
    :pswitch_1
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 156
    invoke-static {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 160
    invoke-static {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    goto :goto_0

    .line 163
    :pswitch_4
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_5
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    invoke-static {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 87
    if-nez p0, :cond_0

    .line 91
    :goto_0
    return-wide v0

    .line 89
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 138
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 139
    return-object v0
.end method

.method public execute(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->openConnection(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers()Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current header name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->i(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 42
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 44
    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;-><init>()V

    .line 45
    invoke-virtual {v3, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code(I)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers()Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers(Lcom/meizu/cloud/pushsdk/networking/http/Headers;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->message(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->request(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    move-result-object v0

    .line 49
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->createOkBody(Ljava/net/HttpURLConnection;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->body(Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
