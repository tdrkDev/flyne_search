.class final Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/analytics/FastTracker;->uploadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/analytics/FastTracker;->buildDataLoad(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;

    move-result-object v1

    const-string v2, "POST"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpSecureRequester;->stringPartRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/analytics/secure/NetResponse;

    .line 43
    return-void
.end method
