.class public Lcom/meizu/cloud/pushsdk/analytics/Params;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APP_INFO:Ljava/lang/String;

.field public static ATITUDE:Ljava/lang/String;

.field public static BRAND:Ljava/lang/String;

.field public static CITY:Ljava/lang/String;

.field public static COUNTRY:Ljava/lang/String;

.field public static DEVICE:Ljava/lang/String;

.field public static DEVICE_INFO:Ljava/lang/String;

.field public static IMEI:Ljava/lang/String;

.field public static IMSI_1:Ljava/lang/String;

.field public static IMSI_2:Ljava/lang/String;

.field public static LATITUDE:Ljava/lang/String;

.field public static LOCAL_LANGUAGE:Ljava/lang/String;

.field public static LOCATION_INFO:Ljava/lang/String;

.field public static LONGITUDE:Ljava/lang/String;

.field public static MAC_ADDRESS:Ljava/lang/String;

.field public static NETWORK_TYPE:Ljava/lang/String;

.field public static OPERATOR:Ljava/lang/String;

.field public static OS_TYPE:Ljava/lang/String;

.field public static OS_VERSION:Ljava/lang/String;

.field public static PACKAGE_LIST:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PACKAGE_SDK_TYPE:Ljava/lang/String;

.field public static PACKAGE_TYPE:Ljava/lang/String;

.field public static PACKAGE_VERSION:Ljava/lang/String;

.field public static PACKAGE_VERSION_CODE:Ljava/lang/String;

.field public static PHONE_NUMBER:Ljava/lang/String;

.field public static PROVINCE:Ljava/lang/String;

.field public static SCREEN_SIZE:Ljava/lang/String;

.field public static USER_INFO:Ljava/lang/String;

.field public static WIFI_BSSID:Ljava/lang/String;

.field public static WIFI_LIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "ui"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->USER_INFO:Ljava/lang/String;

    .line 6
    const-string v0, "ie"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMEI:Ljava/lang/String;

    .line 7
    const-string v0, "is1"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMSI_1:Ljava/lang/String;

    .line 8
    const-string v0, "is2"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->IMSI_2:Ljava/lang/String;

    .line 9
    const-string v0, "phn"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PHONE_NUMBER:Ljava/lang/String;

    .line 11
    const-string v0, "di"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->DEVICE_INFO:Ljava/lang/String;

    .line 13
    const-string v0, "br"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->BRAND:Ljava/lang/String;

    .line 14
    const-string v0, "dc"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->DEVICE:Ljava/lang/String;

    .line 15
    const-string v0, "ma"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->MAC_ADDRESS:Ljava/lang/String;

    .line 16
    const-string v0, "ot"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OS_TYPE:Ljava/lang/String;

    .line 17
    const-string v0, "ov"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OS_VERSION:Ljava/lang/String;

    .line 18
    const-string v0, "ss"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->SCREEN_SIZE:Ljava/lang/String;

    .line 19
    const-string v0, "ll"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->LOCAL_LANGUAGE:Ljava/lang/String;

    .line 20
    const-string v0, "op"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->OPERATOR:Ljava/lang/String;

    .line 23
    const-string v0, "ai"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->APP_INFO:Ljava/lang/String;

    .line 25
    const-string v0, "st"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_SDK_TYPE:Ljava/lang/String;

    .line 26
    const-string v0, "pt"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_TYPE:Ljava/lang/String;

    .line 27
    const-string v0, "pn"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "pv"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_VERSION:Ljava/lang/String;

    .line 29
    const-string v0, "pvc"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_VERSION_CODE:Ljava/lang/String;

    .line 30
    const-string v0, "pl"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PACKAGE_LIST:Ljava/lang/String;

    .line 32
    const-string v0, "li"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->LOCATION_INFO:Ljava/lang/String;

    .line 34
    const-string v0, "ct"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->COUNTRY:Ljava/lang/String;

    .line 35
    const-string v0, "pr"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->PROVINCE:Ljava/lang/String;

    .line 36
    const-string v0, "ci"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->CITY:Ljava/lang/String;

    .line 37
    const-string v0, "nt"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->NETWORK_TYPE:Ljava/lang/String;

    .line 38
    const-string v0, "wb"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->WIFI_BSSID:Ljava/lang/String;

    .line 39
    const-string v0, "lt"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->LONGITUDE:Ljava/lang/String;

    .line 40
    const-string v0, "at"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->ATITUDE:Ljava/lang/String;

    .line 41
    const-string v0, "lat"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->LATITUDE:Ljava/lang/String;

    .line 42
    const-string v0, "wl"

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/Params;->WIFI_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
