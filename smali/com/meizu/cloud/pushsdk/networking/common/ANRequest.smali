.class public Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PatchRequestBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DeleteRequestBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PutRequestBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;,
        Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$HeadRequestBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final JSON_MEDIA_TYPE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private static final MEDIA_TYPE_MARKDOWN:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private static final TAG:Ljava/lang/String;

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

.field private customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private future:Ljava/util/concurrent/Future;

.field private isCancelled:Z

.field private isDelivered:Z

.field private mAnalyticsListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;

.field private mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

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

.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private mDirPath:Ljava/lang/String;

.field private mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

.field private mDownloadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

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

.field private mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

.field private mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

.field private mJsonArray:Lorg/json/JSONArray;

.field private mJsonObject:Lorg/json/JSONObject;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

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

.field private mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

.field private mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

.field private mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

.field private mOkHttpResponseAndParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;

.field private mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

.field private mOkHttpResponseListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;

.field private mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

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

.field private mProgress:I

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

.field private mRequestType:I

.field private mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mStringBody:Ljava/lang/String;

.field private mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

.field private mTag:Ljava/lang/Object;

.field private mType:Ljava/lang/reflect/Type;

.field private mUploadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;

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

.field private sequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->TAG:Ljava/lang/String;

    .line 95
    const-string v0, "application/json; charset=utf-8"

    .line 96
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->JSON_MEDIA_TYPE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 97
    const-string v0, "text/x-markdown; charset=utf-8"

    .line 98
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    .line 94
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 107
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    .line 176
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    .line 177
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 178
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDirPath:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFileName:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 183
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 184
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 185
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 186
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$3900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 187
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;->access$4000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    .line 94
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 107
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 135
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    .line 136
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    .line 137
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 138
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 141
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMaxHeight:I

    .line 143
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMaxWidth:I

    .line 144
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 145
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 146
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$1000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 147
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$1100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->access$1200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    .line 94
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    .line 193
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 194
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 196
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 197
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 198
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 199
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 200
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 201
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$4900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 202
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$5000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 203
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$5100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$5200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->access$5200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 207
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    .line 94
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 107
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 152
    iput v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    .line 153
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    .line 154
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 155
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 158
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 159
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$1900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 160
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2000(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 161
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2100(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 162
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2200(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    .line 163
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    .line 164
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    .line 166
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2600(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    .line 167
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 168
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->access$2900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$5300(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mProgress:I

    return p1
.end method

.method static synthetic access$5700(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUploadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->deliverSuccessResponse(Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;

    return-object v0
.end method

.method private deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

    if-eqz v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 685
    :cond_6
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    if-eqz v0, :cond_7

    .line 686
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 687
    :cond_7
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

    if-eqz v0, :cond_8

    .line 688
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 689
    :cond_8
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

    if-eqz v0, :cond_9

    .line 690
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 691
    :cond_9
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;

    if-eqz v0, :cond_a

    .line 692
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 693
    :cond_a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0
.end method

.method private deliverSuccessResponse(Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

    if-eqz v0, :cond_1

    .line 649
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;->onResponse(Lorg/json/JSONObject;)V

    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->finish()V

    .line 670
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    if-eqz v0, :cond_2

    .line 651
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;->onResponse(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    if-eqz v0, :cond_3

    .line 653
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    if-eqz v0, :cond_4

    .line 655
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;->onResponse(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :cond_5
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    if-eqz v0, :cond_6

    .line 659
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 660
    :cond_6
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    if-eqz v0, :cond_7

    .line 661
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-interface {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 662
    :cond_7
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

    if-eqz v0, :cond_8

    .line 663
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_8
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

    if-eqz v0, :cond_9

    .line 665
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndParsedRequestListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2

    .prologue
    .line 481
    if-nez p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mProgress:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPercentageThresholdForCancelling:I

    if-ge v0, v1, :cond_4

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelling request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    .line 485
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Call;->cancel()V

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 491
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z

    if-nez v0, :cond_3

    .line 492
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 500
    :cond_3
    :goto_0
    return-void

    .line 495
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not cancelling request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 2

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z

    if-nez v0, :cond_1

    .line 601
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 605
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering anError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V

    .line 608
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deliverOkHttpResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z

    .line 701
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$7;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 722
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V

    .line 736
    :goto_1
    return-void

    .line 713
    :cond_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getInstance()Lcom/meizu/cloud/pushsdk/networking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getExecutorSupplier()Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$8;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/http/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 724
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    .line 725
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 726
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 727
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;

    if-eqz v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->finish()V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering cancelled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deliverResponse(Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V
    .locals 2

    .prologue
    .line 617
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z

    .line 618
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$5;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 633
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V

    .line 645
    :goto_1
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getInstance()Lcom/meizu/cloud/pushsdk/networking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getExecutorSupplier()Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$6;

    invoke-direct {v1, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$6;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 635
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    .line 636
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 638
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 639
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->finish()V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering cancelled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    .line 524
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    .line 525
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    .line 526
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    .line 527
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mParsedRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ParsedRequestListener;

    .line 528
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;

    .line 529
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUploadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;

    .line 530
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    .line 531
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mAnalyticsListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;

    .line 532
    return-void
.end method

.method public executeForBitmap()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->BITMAP:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 311
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForDownload()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 321
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForJSONArray()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_ARRAY:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 296
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForJSONObject()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_OBJECT:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 291
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForOkHttpResponse()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 306
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->STRING:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 301
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/SynchronousCall;->execute(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->destroy()V

    .line 536
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->finish(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V

    .line 537
    return-void
.end method

.method public getAnalyticsListener()Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mAnalyticsListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;

    return-object v0
.end method

.method public getAsBitmap(Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;)V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->BITMAP:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 235
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;

    .line 236
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 237
    return-void
.end method

.method public getAsJSONArray(Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;)V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_ARRAY:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 217
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONArrayRequestListener;

    .line 218
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 219
    return-void
.end method

.method public getAsJSONObject(Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;)V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_OBJECT:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 211
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/JSONObjectRequestListener;

    .line 212
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 213
    return-void
.end method

.method public getAsOkHttpResponse(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;)V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 229
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseListener;

    .line 230
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 231
    return-void
.end method

.method public getAsOkHttpResponseAndBitmap(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;)V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->BITMAP:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 267
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndBitmapRequestListener;

    .line 268
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 269
    return-void
.end method

.method public getAsOkHttpResponseAndJSONArray(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;)V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_ARRAY:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 254
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    .line 255
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 256
    return-void
.end method

.method public getAsOkHttpResponseAndJSONObject(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;)V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->JSON_OBJECT:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 248
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    .line 249
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 250
    return-void
.end method

.method public getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->STRING:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 260
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;

    .line 261
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 262
    return-void
.end method

.method public getAsString(Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;)V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->STRING:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 223
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringRequestListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/StringRequestListener;

    .line 224
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 225
    return-void
.end method

.method public getCall()Lcom/meizu/cloud/pushsdk/networking/http/Call;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadProgressListener()Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$1;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getHeaders()Lcom/meizu/cloud/pushsdk/networking/http/Headers;
    .locals 4

    .prologue
    .line 813
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;-><init>()V

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 816
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    :cond_0
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/http/Headers$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    return v0
.end method

.method public getMultiPartRequestBody()Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 9

    .prologue
    .line 785
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;-><init>()V

    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->FORM:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;->setType(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;)Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;

    move-result-object v2

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 788
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Content-Disposition"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "form-data; name=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 789
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 788
    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->of([Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v1

    const/4 v4, 0x0

    .line 790
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    .line 788
    invoke-virtual {v2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;->addPart(Lcom/meizu/cloud/pushsdk/networking/http/Headers;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    :cond_0
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;

    move-result-object v0

    return-object v0

    .line 792
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 793
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 796
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 797
    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v5

    .line 798
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 797
    invoke-static {v5, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v1

    .line 799
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Content-Disposition"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 800
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\"; filename=\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 799
    invoke-static {v5}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->of([Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;->addPart(Lcom/meizu/cloud/pushsdk/networking/http/Headers;Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;)Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;

    .line 802
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;->setType(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;)Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method public getRequestBody()Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 4

    .prologue
    .line 739
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    .line 780
    :goto_0
    return-object v0

    .line 743
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->JSON_MEDIA_TYPE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_2
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->JSON_MEDIA_TYPE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 750
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_4
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mStringBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_5
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 755
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_6

    .line 756
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 758
    :cond_6
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_7
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    if-eqz v0, :cond_8

    .line 761
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->customMediaType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[B)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_8
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mByte:[B

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[B)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_9
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;-><init>()V

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 768
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 777
    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    :cond_b
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/FormBody;

    move-result-object v0

    goto/16 :goto_0

    .line 772
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 773
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 774
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/FormBody$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    return v0
.end method

.method public getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->sequenceNumber:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUploadProgressListener()Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$4;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$4;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 355
    goto :goto_0

    .line 356
    :cond_0
    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v2

    .line 357
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    return v0
.end method

.method public parseNetworkError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1

    .prologue
    .line 587
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    .line 590
    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-object p1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseResponse(Lcom/meizu/cloud/pushsdk/networking/http/Response;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 5

    .prologue
    .line 540
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$9;->$SwitchMap$com$meizu$cloud$pushsdk$networking$common$ResponseType:[I

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 582
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 543
    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto :goto_0

    .line 550
    :pswitch_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v1

    .line 550
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v1

    .line 551
    invoke-interface {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Okio;->buffer(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 560
    :catch_2
    move-exception v0

    .line 561
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto :goto_0

    .line 564
    :pswitch_3
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_3
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMaxWidth:I

    iget v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMaxHeight:I

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v0, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->decodeBitmap(Lcom/meizu/cloud/pushsdk/networking/http/Response;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 568
    :catch_3
    move-exception v0

    .line 569
    :try_start_5
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/utils/Utils;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 580
    :pswitch_4
    const-string v0, "prefetch"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public prefetch()V
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->PREFETCH:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 286
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 287
    return-void
.end method

.method public setAnalyticsListener(Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 335
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mAnalyticsListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/AnalyticsListener;

    .line 336
    return-object p0
.end method

.method public setCall(Lcom/meizu/cloud/pushsdk/networking/http/Call;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->call:Lcom/meizu/cloud/pushsdk/networking/http/Call;

    .line 512
    return-void
.end method

.method public setDownloadProgressListener(Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadProgressListener;

    .line 326
    return-object p0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    .line 520
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 372
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mProgress:I

    .line 373
    return-void
.end method

.method public setResponseAs(Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 377
    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .prologue
    .line 368
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->sequenceNumber:I

    .line 369
    return-void
.end method

.method public setType(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 405
    return-void
.end method

.method public setUploadProgressListener(Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 330
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUploadProgressListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/UploadProgressListener;

    .line 331
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public startDownload(Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    .line 281
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANRequestQueue;->addRequest(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANRequest{sequenceNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDownloadCompletion()V
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isDelivered:Z

    .line 420
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mDownloadListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/DownloadListener;

    if-eqz v0, :cond_2

    .line 421
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$2;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$2;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 453
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getInstance()Lcom/meizu/cloud/pushsdk/networking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getExecutorSupplier()Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$3;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$3;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 447
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->finish()V

    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prefetch done : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->finish()V

    goto :goto_0
.end method
