.class public Lcom/inveno/se/adapi/config/AppConfig;
.super Ljava/lang/Object;


# static fields
.field private static appConfig:Lcom/inveno/se/adapi/config/AppConfig;


# instance fields
.field private appData:Lcom/inveno/se/adapi/model/adreq/App;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/AppConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/App;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/App;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    iget-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/config/AppConfig;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/App;->setPackage_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/AppConfig;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/App;->setApp_version(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/App;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/AppConfig;
    .locals 2

    const-class v1, Lcom/inveno/se/adapi/config/AppConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/adapi/config/AppConfig;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/config/AppConfig;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/config/AppConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/config/AppConfig;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/config/AppConfig;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppData()Lcom/inveno/se/adapi/model/adreq/App;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    return-object v0
.end method

.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    sput-object v0, Lcom/inveno/se/adapi/config/AppConfig;->appConfig:Lcom/inveno/se/adapi/config/AppConfig;

    return-void
.end method

.method public setAppData(Lcom/inveno/se/adapi/model/adreq/App;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/config/AppConfig;->appData:Lcom/inveno/se/adapi/model/adreq/App;

    return-void
.end method
