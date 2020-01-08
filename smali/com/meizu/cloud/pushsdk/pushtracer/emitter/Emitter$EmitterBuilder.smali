.class public Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmitterBuilder"
.end annotation


# static fields
.field protected static defaultEmitterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field protected byteLimitGet:J

.field protected byteLimitPost:J

.field protected call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

.field protected final context:Landroid/content/Context;

.field private emitterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;",
            ">;"
        }
    .end annotation
.end field

.field protected emitterTick:I

.field protected emptyLimit:I

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

.field protected requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

.field protected requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

.field protected sendLimit:I

.field protected sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->defaultEmitterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x9c40

    const/4 v1, 0x5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    .line 73
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->POST:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 74
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->Single:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 75
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;->HTTPS:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 76
    iput v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emitterTick:I

    .line 77
    const/16 v0, 0xfa

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->sendLimit:I

    .line 78
    iput v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emptyLimit:I

    .line 79
    iput-wide v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitGet:J

    .line 80
    iput-wide v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitPost:J

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 84
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    .line 101
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->uri:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->context:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emitterClass:Ljava/lang/Class;

    .line 104
    return-void
.end method


# virtual methods
.method public byteLimitGet(J)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitGet:J

    .line 195
    return-object p0
.end method

.method public byteLimitPost(J)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 1

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->byteLimitPost:J

    .line 205
    return-object p0
.end method

.method public call(Lcom/meizu/cloud/pushsdk/networking/http/Call;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 3

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    .line 223
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set new call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_0
    return-object p0
.end method

.method public call(Ljava/lang/Class;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/meizu/cloud/pushsdk/networking/http/Call;",
            ">;)",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 230
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/http/Call;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    .line 231
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set new call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-object p0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-class v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error new call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public callback(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    .line 157
    return-object p0
.end method

.method public emptyLimit(I)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emptyLimit:I

    .line 185
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 148
    return-object p0
.end method

.method public method(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 112
    return-object p0
.end method

.method public option(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 121
    return-object p0
.end method

.method public security(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 130
    return-object p0
.end method

.method public sendLimit(I)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->sendLimit:I

    .line 175
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    return-object p0
.end method

.method public tick(I)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->emitterTick:I

    .line 166
    return-object p0
.end method

.method public timeUnit(Ljava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 214
    return-object p0
.end method
