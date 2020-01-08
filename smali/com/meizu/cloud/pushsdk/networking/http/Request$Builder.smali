.class public Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/networking/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

.field private headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "GET"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Request;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->access$600(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    .line 108
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->access$700(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->access$800(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    .line 110
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->access$900(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->tag:Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->access$1000(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Request;Lcom/meizu/cloud/pushsdk/networking/http/Request$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 172
    return-object p0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/http/Request;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;Lcom/meizu/cloud/pushsdk/networking/http/Request$1;)V

    return-object v0
.end method

.method public delete()Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[B)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->delete(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 200
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 2

    .prologue
    .line 188
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 2

    .prologue
    .line 192
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 160
    return-object p0
.end method

.method public headers(Lcom/meizu/cloud/pushsdk/networking/http/Headers;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 183
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 3

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    .line 227
    return-object p0
.end method

.method public patch(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 212
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 196
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 208
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->method(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 177
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->tag:Ljava/lang/Object;

    .line 236
    return-object p0
.end method

.method public url(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 2

    .prologue
    .line 115
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    .line 117
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    .line 137
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 3

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->get(Ljava/net/URL;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->url(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    move-result-object v0

    return-object v0
.end method
