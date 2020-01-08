.class public abstract Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    }
.end annotation


# instance fields
.field protected final JSON:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field protected POST_STM_BYTES:I

.field protected POST_WRAPPER_BYTES:I

.field private final TAG:Ljava/lang/String;

.field protected bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field protected byteLimitGet:J

.field protected byteLimitPost:J

.field protected call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

.field protected context:Landroid/content/Context;

.field protected emitterTick:I

.field protected emptyLimit:I

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

.field protected isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

.field protected requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

.field protected sendLimit:I

.field protected sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected uri:Ljava/lang/String;

.field protected uriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x58

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_WRAPPER_BYTES:I

    .line 37
    const/16 v0, 0x16

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_STM_BYTES:I

    .line 39
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->JSON:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 248
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    .line 249
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->context:Landroid/content/Context;

    .line 250
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 251
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 252
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 253
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 254
    iget v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emitterTick:I

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->emitterTick:I

    .line 255
    iget v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emptyLimit:I

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->emptyLimit:I

    .line 256
    iget v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->sendLimit:I

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->sendLimit:I

    .line 257
    iget-wide v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitGet:J

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitGet:J

    .line 258
    iget-wide v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitPost:J

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitPost:J

    .line 259
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uri:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 261
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    .line 262
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->buildEmitterUri()V

    .line 265
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Emitter created successfully!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method private addStmToEvent(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 529
    const-string v0, "stm"

    const-string v1, ""

    .line 530
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Util;->getTimestamp()Ljava/lang/String;

    move-result-object p2

    .line 529
    :cond_0
    invoke-interface {p1, v0, p2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private buildEmitterUri()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;->HTTP:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    if-ne v0, v1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->GET:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    if-ne v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 284
    :goto_1
    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "push_data_report/mobile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method private buildHttpsSecurity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;->HTTPS:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Https Ensure you have set SSLSocketFactory"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Https Ensure you have set HostnameVerifier"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_1
    return-void
.end method

.method private requestBuilderGet(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)Lcom/meizu/cloud/pushsdk/networking/http/Request;
    .locals 5

    .prologue
    .line 473
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->addStmToEvent(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 479
    invoke-interface {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 481
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v4, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;-><init>()V

    .line 489
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->get()Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v0

    .line 488
    return-object v0
.end method

.method private requestBuilderPost(Ljava/util/ArrayList;)Lcom/meizu/cloud/pushsdk/networking/http/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;",
            ">;)",
            "Lcom/meizu/cloud/pushsdk/networking/http/Request;"
        }
    .end annotation

    .prologue
    .line 502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 503
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 504
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;

    .line 505
    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    const-string v2, "push_group_data"

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final SelfDescribingJson "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->JSON:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    .line 515
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;-><init>()V

    .line 516
    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->post(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v0

    .line 515
    return-object v0
.end method


# virtual methods
.method public abstract add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)V
.end method

.method public abstract add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;Z)V
.end method

.method protected buildRequests(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;)Ljava/util/LinkedList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;->getEventIds()Ljava/util/LinkedList;

    move-result-object v12

    .line 395
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    sget-object v3, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->GET:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    if-ne v2, v3, :cond_1

    .line 398
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v9, :cond_6

    .line 401
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 402
    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;

    .line 406
    invoke-interface {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->getByteSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_STM_BYTES:I

    int-to-long v10, v3

    add-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitGet:J

    cmp-long v3, v6, v10

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 407
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestBuilderGet(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v2

    .line 408
    new-instance v6, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    invoke-direct {v6, v3, v2, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;-><init>(ZLcom/meizu/cloud/pushsdk/networking/http/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 406
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 411
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_6

    .line 413
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 414
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 415
    const-wide/16 v2, 0x0

    move-object v8, v6

    move-wide v6, v2

    move v3, v4

    .line 417
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->getCode()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_4

    if-ge v3, v9, :cond_4

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;

    .line 419
    invoke-interface {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;->getByteSize()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_STM_BYTES:I

    int-to-long v14, v14

    add-long/2addr v10, v14

    .line 421
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_WRAPPER_BYTES:I

    int-to-long v14, v14

    add-long/2addr v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitPost:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 422
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 426
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v2

    .line 429
    new-instance v10, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    const/4 v14, 0x1

    invoke-direct {v10, v14, v2, v11}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;-><init>(ZLcom/meizu/cloud/pushsdk/networking/http/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v13, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 417
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 431
    :cond_2
    add-long v14, v6, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->POST_WRAPPER_BYTES:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 432
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitPost:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 433
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v5

    .line 434
    new-instance v6, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;-><init>(ZLcom/meizu/cloud/pushsdk/networking/http/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 438
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 441
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-wide v6, v10

    .line 444
    goto :goto_4

    .line 446
    :cond_3
    add-long/2addr v6, v10

    .line 447
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 453
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v2

    .line 455
    new-instance v3, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v2, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;-><init>(ZLcom/meizu/cloud/pushsdk/networking/http/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v13, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->getCode()I

    move-result v2

    add-int/2addr v4, v2

    goto/16 :goto_2

    .line 459
    :cond_6
    return-object v13
.end method

.method protected close(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 3

    .prologue
    .line 373
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Unable to close source data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract flush()V
.end method

.method public getBufferOption()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    return-object v0
.end method

.method public getByteLimitGet()J
    .locals 2

    .prologue
    .line 665
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitGet:J

    return-wide v0
.end method

.method public getByteLimitPost()J
    .locals 2

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->byteLimitPost:J

    return-wide v0
.end method

.method public abstract getEmitterStatus()Z
.end method

.method public getEmitterTick()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->emitterTick:I

    return v0
.end method

.method public getEmitterUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyLimit()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->emptyLimit:I

    return v0
.end method

.method public abstract getEventStore()Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;
.end method

.method public getHttpMethod()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    return-object v0
.end method

.method public getRequestCallback()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    return-object v0
.end method

.method public getRequestSecurity()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    return-object v0
.end method

.method public getSendLimit()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->sendLimit:I

    return v0
.end method

.method protected isSuccessfulSend(I)Z
    .locals 1

    .prologue
    .line 553
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected performSyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 335
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    .line 336
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getRequest()Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSender(Lcom/meizu/cloud/pushsdk/networking/http/Request;)I

    move-result v3

    .line 337
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->isOversize()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    new-instance v3, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_0
    new-instance v4, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;

    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isSuccessfulSend(I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    return-object v1
.end method

.method protected requestSender(Lcom/meizu/cloud/pushsdk/networking/http/Request;)I
    .locals 6

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v2, "Sending request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Call;->execute(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->code()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 363
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->close(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    .line 361
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    :try_start_1
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->TAG:Ljava/lang/String;

    const-string v3, "Request sending failed: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    const/4 v0, -0x1

    .line 363
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->close(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->close(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    throw v0
.end method

.method public setBufferOption(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 566
    :cond_0
    return-void
.end method

.method public setEmitterUri(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->uri:Ljava/lang/String;

    .line 600
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->buildEmitterUri()V

    .line 602
    :cond_0
    return-void
.end method

.method public setHttpMethod(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 576
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->buildEmitterUri()V

    .line 578
    :cond_0
    return-void
.end method

.method public setRequestSecurity(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 588
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->buildEmitterUri()V

    .line 590
    :cond_0
    return-void
.end method

.method public abstract shutdown()V
.end method
