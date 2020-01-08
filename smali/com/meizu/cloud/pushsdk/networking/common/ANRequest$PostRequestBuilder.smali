.class public Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    name = "PostRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mBodyParameterMap:Ljava/util/HashMap;
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

.field private mByte:[B

.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

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

.field private mJsonArray:Lorg/json/JSONArray;

.field private mJsonObject:Lorg/json/JSONObject;

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

.field private mStringBody:Ljava/lang/String;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;
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

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 999
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mMethod:I

    .line 1002
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonObject:Lorg/json/JSONObject;

    .line 1003
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonArray:Lorg/json/JSONArray;

    .line 1004
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    .line 1005
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mByte:[B

    .line 1006
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1019
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    .line 1020
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mMethod:I

    .line 1021
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 999
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mMethod:I

    .line 1002
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonObject:Lorg/json/JSONObject;

    .line 1003
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonArray:Lorg/json/JSONArray;

    .line 1004
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    .line 1005
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mByte:[B

    .line 1006
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1024
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    .line 1025
    iput p2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mMethod:I

    .line 1026
    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)I
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mMethod:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/io/File;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)[B
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mByte:[B

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mCustomContentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1122
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    return-object p0
.end method

.method public addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1132
    if-eqz p1, :cond_0

    .line 1133
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

    .line 1134
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1137
    :cond_0
    return-object p0
.end method

.method public addByteBody([B)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mByte:[B

    .line 1171
    return-object p0
.end method

.method public addFileBody(Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    .line 1166
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1064
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1070
    if-eqz p1, :cond_0

    .line 1071
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

    .line 1072
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1075
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addJSONArrayBody(Lorg/json/JSONArray;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonArray:Lorg/json/JSONArray;

    .line 1156
    return-object p0
.end method

.method public addJSONObjectBody(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mJsonObject:Lorg/json/JSONObject;

    .line 1151
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1058
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1042
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1048
    if-eqz p1, :cond_0

    .line 1049
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

    .line 1050
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1053
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addStringBody(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    .line 1161
    return-object p0
.end method

.method public addUrlEncodeFormBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1127
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    return-object p0
.end method

.method public addUrlEncodeFormBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
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
    .line 1141
    if-eqz p1, :cond_0

    .line 1142
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

    .line 1143
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1146
    :cond_0
    return-object p0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 1

    .prologue
    .line 1180
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1081
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->doNotCacheResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1093
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->getResponseOnlyFromNetwork()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1087
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->getResponseOnlyIfCached()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mCustomContentType:Ljava/lang/String;

    .line 1176
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1111
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1099
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1105
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1031
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mTag:Ljava/lang/Object;

    .line 1037
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->mUserAgent:Ljava/lang/String;

    .line 1118
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/RequestBuilder;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method
