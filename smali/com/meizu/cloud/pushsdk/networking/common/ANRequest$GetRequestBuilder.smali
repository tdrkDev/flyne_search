.class public Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    name = "GetRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

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

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

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

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 833
    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 849
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    .line 850
    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 851
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 854
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    .line 855
    iput p2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 856
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMethod:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    .line 894
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    .line 900
    if-eqz p1, :cond_0

    .line 901
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

    .line 902
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 905
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    .line 888
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    .line 872
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
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
    .line 878
    if-eqz p1, :cond_0

    .line 879
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

    .line 880
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 883
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 911
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 923
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 917
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 951
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 952
    return-object p0
.end method

.method public setBitmapMaxHeight(I)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 956
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMaxHeight:I

    .line 957
    return-object p0
.end method

.method public setBitmapMaxWidth(I)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 961
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mMaxWidth:I

    .line 962
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 940
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 941
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 966
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 967
    return-object p0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 929
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 935
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 860
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 861
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 866
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mTag:Ljava/lang/Object;

    .line 867
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 946
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->mUserAgent:Ljava/lang/String;

    .line 947
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method
