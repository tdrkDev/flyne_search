.class public Lcom/meizu/cloud/pushsdk/analytics/FastTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/meizu/cloud/pushsdk/analytics/FastTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/FastTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDataLoad(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/analytics/FastTracker;->getPayloadSubject(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->getUserInfoSubject()Ljava/util/Map;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->getDeviceInfoSubject()Ljava/util/Map;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->getAppInfoSubject()Ljava/util/Map;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->getLocationInfoSubject()Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 22
    sget-object v5, Lcom/meizu/cloud/pushsdk/analytics/Params;->USER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 25
    sget-object v2, Lcom/meizu/cloud/pushsdk/analytics/Params;->DEVICE_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 28
    sget-object v2, Lcom/meizu/cloud/pushsdk/analytics/Params;->APP_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 31
    sget-object v2, Lcom/meizu/cloud/pushsdk/analytics/Params;->LOCATION_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_3
    return-object v0
.end method

.method private static getPayloadSubject(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;-><init>()V

    .line 50
    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;->context(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;->build()Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static uploadData(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->get()Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/analytics/FastTracker$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
