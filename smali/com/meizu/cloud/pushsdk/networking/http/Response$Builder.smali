.class public Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/networking/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

.field private cacheResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

.field private code:I

.field private headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

.field private priorResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

.field private request:Lcom/meizu/cloud/pushsdk/networking/http/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    .line 176
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 177
    return-void
.end method

.method private constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    .line 180
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$900(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->request:Lcom/meizu/cloud/pushsdk/networking/http/Request;

    .line 181
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1000(Lcom/meizu/cloud/pushsdk/networking/http/Response;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    .line 182
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1100(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->message:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1200(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 184
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1300(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    .line 185
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1400(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->networkResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 186
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1500(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->cacheResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 187
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1600(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->priorResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/Response;Lcom/meizu/cloud/pushsdk/networking/http/Response$1;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Request;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->request:Lcom/meizu/cloud/pushsdk/networking/http/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->networkResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->cacheResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;)Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->priorResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    return-object v0
.end method

.method private checkPriorResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 2

    .prologue
    .line 270
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1300(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 3

    .prologue
    .line 252
    invoke-static {p2}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1300(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    invoke-static {p2}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1400(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    invoke-static {p2}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1500(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    invoke-static {p2}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->access$1600(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 220
    return-object p0
.end method

.method public body(Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->body:Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    .line 236
    return-object p0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/http/Response;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->request:Lcom/meizu/cloud/pushsdk/networking/http/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;Lcom/meizu/cloud/pushsdk/networking/http/Response$1;)V

    return-object v0
.end method

.method public cacheResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 246
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->cacheResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 248
    return-object p0
.end method

.method public code(I)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->code:I

    .line 197
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 211
    return-object p0
.end method

.method public headers(Lcom/meizu/cloud/pushsdk/networking/http/Headers;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 231
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->message:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public networkResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->networkResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 242
    return-object p0
.end method

.method public priorResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 0

    .prologue
    .line 264
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->checkPriorResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->priorResponse:Lcom/meizu/cloud/pushsdk/networking/http/Response;

    .line 266
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->headers:Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    .line 225
    return-object p0
.end method

.method public request(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/Response$Builder;->request:Lcom/meizu/cloud/pushsdk/networking/http/Request;

    .line 192
    return-object p0
.end method
