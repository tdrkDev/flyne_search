.class public Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPartBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageThresholdForCancelling:I

.field private mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 1315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    .line 1326
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mUrl:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method static synthetic access$4100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    return v0
.end method

.method static synthetic access$5000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mCustomContentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1371
    if-eqz p1, :cond_0

    .line 1372
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1373
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1376
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    return-object p0
.end method

.method public addMultipartFile(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1441
    if-eqz p1, :cond_0

    .line 1442
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1443
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1446
    :cond_0
    return-object p0
.end method

.method public addMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    return-object p0
.end method

.method public addMultipartParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1427
    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1429
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1432
    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1349
    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1351
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1354
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 1

    .prologue
    .line 1460
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1382
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1394
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1388
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mCustomContentType:Ljava/lang/String;

    .line 1456
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1412
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1400
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1406
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPercentageThresholdForCancelling(I)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1450
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    .line 1451
    return-object p0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1332
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mTag:Ljava/lang/Object;

    .line 1338
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->mUserAgent:Ljava/lang/String;

    .line 1418
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method
