.class public Lcom/inveno/se/config/HostConfig;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_H5_LINK:Ljava/lang/String; = "http://h5.inveno.com"

.field public static INVENO_AD_API_URL:Ljava/lang/String;

.field public static OPEN_HOST:Ljava/lang/String;

.field public static OPERATE_HOST:Ljava/lang/String;

.field public static ZZ_HOST:Ljava/lang/String;

.field public static ZZ_REPORT_HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://business.inveno.com/"

    sput-object v0, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    const-string v0, "https://zhizi.inveno.com/"

    sput-object v0, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    const-string v0, "https://malacca.inveno.com/malacca/sdkPullAds.do"

    sput-object v0, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->ZZ_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->ZZ_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setINVENO_AD_API_URL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->INVENO_AD_API_URL:Ljava/lang/String;

    return-void
.end method

.method public static setOPEN_HOST(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->OPEN_HOST:Ljava/lang/String;

    return-void
.end method

.method public static setOPERATE_HOST(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    return-void
.end method

.method public static setZZ_HOST(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->ZZ_HOST:Ljava/lang/String;

    invoke-static {p0}, Lcom/inveno/reportsdk/p;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setZZ_REPORT_HOST(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/config/HostConfig;->ZZ_REPORT_HOST:Ljava/lang/String;

    invoke-static {p0}, Lcom/inveno/reportsdk/p;->b(Ljava/lang/String;)V

    return-void
.end method
