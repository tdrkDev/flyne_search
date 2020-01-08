.class public Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final UPLOAD_APP_LIST_TIME:Ljava/lang/String; = "upload_app_list_time"


# instance fields
.field private appInfoPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private deviceInfoPairs:Ljava/util/HashMap;
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

.field private locationPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoPairs:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->userInfoPairs:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->deviceInfoPairs:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->appInfoPairs:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->locationPairs:Ljava/util/HashMap;

    .line 67
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setDeviceInfo()V

    .line 69
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;->access$100(Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;->access$100(Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setContextualParams(Landroid/content/Context;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->TAG:Ljava/lang/String;

    const-string v1, "Subject created successfully."

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;-><init>(Lcom/meizu/cloud/pushsdk/analytics/PayloadSub$PayloadSubBuilder;)V

    return-void
.end method

.method private addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->appInfoPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_2
    return-void
.end method

.method private addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->deviceInfoPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    return-void
.end method

.method private addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->locationPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    return-void
.end method

.method private addUserInfoContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->userInfoPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-void
.end method

.method private getUploadAppListTime(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 34
    const-string v0, "mz_push_preference"

    const-string v1, "upload_app_list_time"

    invoke-static {p1, v0, v1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getLongByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private putUploadAppListTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 38
    const-string v0, "mz_push_preference"

    const-string v1, "upload_app_list_time"

    invoke-static {p1, v0, v1, p2, p3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putLongByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 39
    return-void
.end method

.method private setAppInfoContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 99
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_VERSION:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_VERSION_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->getUploadAppListTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_LIST:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getInstalledPackage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->putUploadAppListTime(Landroid/content/Context;J)V

    .line 106
    :cond_0
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_SDK_TYPE:Ljava/lang/String;

    const-string v0, "com.meizu.ups.push.intent.MESSAGE"

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    invoke-direct {p0, v1, v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addAppInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setConnectivityContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->MAC_ADDRESS:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/base/DeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->NETWORK_TYPE:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->WIFI_BSSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getBSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->WIFI_LIST:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getWifiList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method private setDeviceInfo()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->BRAND:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->DEVICE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OS_TYPE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OS_VERSION:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->LOCAL_LANGUAGE:Ljava/lang/String;

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private setLocation(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 111
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->TAG:Ljava/lang/String;

    const-string v1, "Location information not available."

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/Params;->LONGITUDE:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/Params;->ATITUDE:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/Params;->LATITUDE:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addLocationInfoContext(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setTelephonyContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMEI:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addUserInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMSI_1:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getSubId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addUserInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMSI_2:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getSubId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addUserInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getLineNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addUserInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OPERATOR:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->addDeviceInfoContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getAppInfoSubject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->appInfoPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeviceInfoSubject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->deviceInfoPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLocationInfoSubject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->locationPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUserInfoSubject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->userInfoPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public setContextualParams(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setLocation(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setTelephonyContext(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setDefaultScreenResolution(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setConnectivityContext(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setAppInfoContext(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public setDefaultScreenResolution(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    :try_start_0
    const-string v0, "window"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 151
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 153
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 154
    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 155
    const-class v3, Landroid/view/Display;

    const-string v4, "getSize"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 157
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v1}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setScreenResolution(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 159
    :goto_1
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->TAG:Ljava/lang/String;

    const-string v2, "Display.getSize isn\'t available on older devices."

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->setScreenResolution(II)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->TAG:Ljava/lang/String;

    const-string v1, "error get display"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setScreenResolution(II)V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/analytics/PayloadSub;->deviceInfoPairs:Ljava/util/HashMap;

    sget-object v2, Lcom/meizu/cloud/pushsdk/analytics/Params;->SCREEN_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method
