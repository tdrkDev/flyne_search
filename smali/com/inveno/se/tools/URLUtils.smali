.class public Lcom/inveno/se/tools/URLUtils;
.super Ljava/lang/Object;


# static fields
.field private static HOST:Ljava/lang/String;

.field private static HWHOST:Ljava/lang/String;

.field private static SECOND_HOST:Ljava/lang/String;

.field private static ZZ_HOST:Ljava/lang/String;

.field private static mHostExpires:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->SECOND_HOST:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->ZZ_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->ZZ_HOST:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init static host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SECOND_HOST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->SECOND_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ZZ_HOST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->SECOND_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->SECOND_HOST:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->ZZ_HOST:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->ZZ_HOST:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/tools/URLUtils;->HWHOST:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/inveno/se/tools/URLUtils;->mHostExpires:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static change()V
    .locals 0

    return-void
.end method

.method public static change(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static existHost()Z
    .locals 1

    sget-object v0, Lcom/inveno/se/tools/URLUtils;->HWHOST:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/se/tools/URLUtils;->HWHOST:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostExpires()J
    .locals 2

    sget-wide v0, Lcom/inveno/se/tools/URLUtils;->mHostExpires:J

    return-wide v0
.end method

.method public static getOperateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->SECOND_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZZURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/URLUtils;->ZZ_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/tools/URLUtils;->HOST:Ljava/lang/String;

    sput-object p0, Lcom/inveno/se/tools/URLUtils;->HWHOST:Ljava/lang/String;

    return-void
.end method

.method public static setHostExpires(J)V
    .locals 0

    sput-wide p0, Lcom/inveno/se/tools/URLUtils;->mHostExpires:J

    return-void
.end method
