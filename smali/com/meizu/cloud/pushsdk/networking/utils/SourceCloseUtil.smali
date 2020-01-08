.class public final Lcom/meizu/cloud/pushsdk/networking/utils/SourceCloseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static close(Lcom/meizu/cloud/pushsdk/networking/http/Response;Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v0

    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/Response;->body()Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/ResponseBody;->source()Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSource;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_1
    const-string v0, "Unable to close source data"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_1
    throw v0
.end method
