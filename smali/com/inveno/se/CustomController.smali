.class public Lcom/inveno/se/CustomController;
.super Ljava/lang/Object;


# static fields
.field private static UID:Ljava/lang/String;

.field private static newsCustomNum:I

.field private static tagLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/inveno/se/CustomController;->newsCustomNum:I

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/CustomController;->UID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewsNum()I
    .locals 1

    sget v0, Lcom/inveno/se/CustomController;->newsCustomNum:I

    return v0
.end method

.method public static getOpenTagLog()Z
    .locals 1

    sget-boolean v0, Lcom/inveno/se/CustomController;->tagLog:Z

    return v0
.end method

.method public static getUID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/CustomController;->UID:Ljava/lang/String;

    return-object v0
.end method

.method public static setAdapiHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    return-void
.end method

.method public static setKeywordUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inveno/reportsdk/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setNewsNum(I)V
    .locals 0

    sput p0, Lcom/inveno/se/CustomController;->newsCustomNum:I

    return-void
.end method

.method public static setOpenHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    return-void
.end method

.method public static setOpenTagLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/inveno/se/CustomController;->tagLog:Z

    return-void
.end method

.method public static setOperateHost(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inveno/se/config/HostConfig;->setOPERATE_HOST(Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkVersion(I)V
    .locals 0

    sput p0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    return-void
.end method

.method public static setUID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/CustomController;->UID:Ljava/lang/String;

    return-void
.end method

.method public static setZZHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    return-void
.end method

.method public static setZZReportHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    return-void
.end method
