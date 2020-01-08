.class public Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPLICATION_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field private static sInstance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->context:Landroid/content/Context;

    .line 32
    :try_start_0
    const-string v0, "sun.net.http.allowRestrictedHeaders"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->init(Landroid/content/Context;)V

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private attachKeyHeader(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 172
    :cond_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->getsKey64()[B

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 174
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 175
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach x_s_key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "X-S-Key"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_1
    :goto_0
    return-object p1

    .line 178
    :cond_2
    invoke-static {}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->getaKey64()[B

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->getaKey64()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 181
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach x_a_key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "X-A-Key"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getByteArrayByInputStream(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 213
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_1
    throw v0

    .line 215
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 218
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    :goto_2
    return-object v0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->sInstance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    if-nez v0, :cond_1

    .line 41
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->sInstance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->sInstance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->sInstance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getKeyTimeout(Ljava/net/URLConnection;)V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    const-string v0, "Key-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get keyTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getsKey(Ljava/net/URLConnection;)V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    const-string v0, "X-S-Key"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get x_s_key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->saveSKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private realStringPartRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7530

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 67
    .line 69
    if-eqz p3, :cond_7

    .line 71
    invoke-static {}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->encrypt([B)[B

    move-result-object v1

    .line 73
    if-eqz v1, :cond_a

    .line 74
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v4, v0

    .line 78
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://norma-external-collect.meizu.com/push/android/external/add.do"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 86
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 90
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 146
    :goto_2
    return-object v3

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->writeBody(Ljava/net/HttpURLConnection;[B)V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 106
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->getsKey(Ljava/net/URLConnection;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->getKeyTimeout(Ljava/net/URLConnection;)V

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 111
    if-eqz v2, :cond_9

    .line 112
    :try_start_2
    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->getByteArrayByInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 113
    if-eqz v4, :cond_1

    .line 114
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 115
    sget-object v6, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "body = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "code"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    const v6, 0x30573

    if-ne v1, v6, :cond_1

    .line 126
    :cond_1
    :goto_3
    if-eqz v4, :cond_4

    .line 127
    :try_start_4
    new-instance v1, Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v5, v6}, Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :goto_4
    if-eqz v2, :cond_2

    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 141
    :cond_2
    :goto_5
    if-eqz v0, :cond_8

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :goto_6
    move-object v3, v0

    .line 146
    goto :goto_2

    .line 121
    :catch_1
    move-exception v1

    .line 122
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 132
    :catch_2
    move-exception v1

    .line 133
    :goto_7
    :try_start_7
    sget-object v4, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realStringPartRequest error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    if-eqz v2, :cond_3

    .line 137
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 141
    :cond_3
    :goto_8
    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto :goto_6

    .line 129
    :cond_4
    :try_start_9
    new-instance v1, Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 135
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v2, :cond_5

    .line 137
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 141
    :cond_5
    :goto_a
    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1

    .line 138
    :catch_3
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v2

    goto :goto_a

    .line 135
    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_9

    .line 132
    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_7

    :cond_7
    move-object v0, v3

    goto :goto_6

    :cond_8
    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v4, v3

    goto :goto_3

    :cond_a
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private writeBody(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 160
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 163
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 162
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public stringPartRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->attachKeyHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 57
    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-direct {p0, p1, v1, p3}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->realStringPartRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
