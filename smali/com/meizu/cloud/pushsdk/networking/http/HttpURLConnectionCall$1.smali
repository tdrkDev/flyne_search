.class final Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;
.super Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->createOkBody(Ljava/net/HttpURLConnection;)Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

.field final synthetic val$urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;->val$urlConnection:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;->val$body:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;->val$urlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;->val$urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    goto :goto_0
.end method

.method public source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpURLConnectionCall$1;->val$body:Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    return-object v0
.end method
