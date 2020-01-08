.class public Lcom/inveno/se/config/URLPath;
.super Ljava/lang/Object;


# static fields
.field public static CONFIG:Ljava/lang/String;

.field public static GET_CHANNEL_LIST_TAG:Ljava/lang/String;

.field public static GET_SDKUI_CONFIG:Ljava/lang/String;

.field public static GET_UID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "getuid"

    sput-object v0, Lcom/inveno/se/config/URLPath;->GET_UID:Ljava/lang/String;

    const-string v0, "getcfg"

    sput-object v0, Lcom/inveno/se/config/URLPath;->CONFIG:Ljava/lang/String;

    const-string v0, "ht_qcs"

    sput-object v0, Lcom/inveno/se/config/URLPath;->GET_CHANNEL_LIST_TAG:Ljava/lang/String;

    const-string v0, "ht_sdkui"

    sput-object v0, Lcom/inveno/se/config/URLPath;->GET_SDKUI_CONFIG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
