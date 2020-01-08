.class public Lcom/meizu/cloud/pushsdk/networking/http/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

.field private final headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

.field private volatile javaNetUri:Ljava/net/URI;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$000(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    .line 23
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$100(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$200(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    .line 25
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$300(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    .line 26
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$400(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;->access$400(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->tag:Ljava/lang/Object;

    .line 27
    return-void

    :cond_0
    move-object v0, p0

    .line 26
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;Lcom/meizu/cloud/pushsdk/networking/http/Request$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Request;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->body:Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    return-object v0
.end method

.method public getmethod()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    .line 39
    const-string v1, "GET"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    const-string v1, "POST"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "PUT"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const/4 v0, 0x2

    goto :goto_0

    .line 45
    :cond_3
    const-string v1, "DELETE"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    const/4 v0, 0x3

    goto :goto_0

    .line 47
    :cond_4
    const-string v1, "HEAD"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    const/4 v0, 0x4

    goto :goto_0

    .line 49
    :cond_5
    const-string v1, "PATCH"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/meizu/cloud/pushsdk/networking/http/Headers;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Request$Builder;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Request;Lcom/meizu/cloud/pushsdk/networking/http/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public url()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Request;->url:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    return-object v0
.end method
