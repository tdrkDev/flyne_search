.class public Lcom/inveno/se/tools/LogTools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/inveno/se/tools/ysj/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/inveno/se/tools/ysj/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/inveno/se/tools/ysj/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static isOPENLOG()Z
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    return v0
.end method

.method public static setOPENLOG(Z)V
    .locals 0

    sput-boolean p0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "info"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/inveno/se/tools/ysj/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showLogA(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "blueming.liu"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLogB(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "blueming.wu"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLogH(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "zheng.hu"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLogL(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "benny.liu"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLogM(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "liang.min"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showLogR(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "ruihua.wu"

    invoke-static {v0, p0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
