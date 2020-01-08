.class public Lcom/inveno/se/biz/UiConfigBiz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/biz/CanReleaseBiz;


# static fields
.field public static final LISTSTYLE_CONFIG:Ljava/lang/String; = "list_style_config"

.field private static uiConfigBiz:Lcom/inveno/se/biz/UiConfigBiz;


# instance fields
.field private UI_CCONFIG_PATH:Ljava/lang/String;

.field private agreeMentImplVolley:Lcom/inveno/se/http/AgreeMentImplVolley;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inveno/se/http/AgreeMentImplVolley;

    invoke-direct {v0, p1}, Lcom/inveno/se/http/AgreeMentImplVolley;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/se/biz/UiConfigBiz;->agreeMentImplVolley:Lcom/inveno/se/http/AgreeMentImplVolley;

    const-string v0, "uiconfig"

    invoke-static {p1, v0}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/biz/UiConfigBiz;->UI_CCONFIG_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/biz/UiConfigBiz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/biz/UiConfigBiz;->UI_CCONFIG_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UiConfigBiz;
    .locals 2

    const-class v1, Lcom/inveno/se/biz/UiConfigBiz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/biz/UiConfigBiz;->uiConfigBiz:Lcom/inveno/se/biz/UiConfigBiz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/biz/UiConfigBiz;

    invoke-direct {v0, p0}, Lcom/inveno/se/biz/UiConfigBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/biz/UiConfigBiz;->uiConfigBiz:Lcom/inveno/se/biz/UiConfigBiz;

    :cond_0
    sget-object v0, Lcom/inveno/se/biz/UiConfigBiz;->uiConfigBiz:Lcom/inveno/se/biz/UiConfigBiz;
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
.method public getListStyleConfig(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uihash"

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/inveno/se/biz/UiConfigBiz;->agreeMentImplVolley:Lcom/inveno/se/http/AgreeMentImplVolley;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/inveno/se/biz/d;

    invoke-direct {v2, p0, p1}, Lcom/inveno/se/biz/d;-><init>(Lcom/inveno/se/biz/UiConfigBiz;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/inveno/se/http/AgreeMentImplVolley;->getUiConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    new-instance v1, Lcom/inveno/se/biz/e;

    invoke-direct {v1, p0, p1}, Lcom/inveno/se/biz/e;-><init>(Lcom/inveno/se/biz/UiConfigBiz;Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getUiConfig(Landroid/content/Context;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/uiconfig/UiConfig;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UiConfigBiz;->UI_CCONFIG_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hzj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u672c\u5730UIconfig json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/biz/UiConfigBiz;->agreeMentImplVolley:Lcom/inveno/se/http/AgreeMentImplVolley;

    const-string v1, "-1"

    new-instance v2, Lcom/inveno/se/biz/a;

    invoke-direct {v2, p0, p2, p1}, Lcom/inveno/se/biz/a;-><init>(Lcom/inveno/se/biz/UiConfigBiz;Lcom/inveno/se/callback/DownloadCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/http/AgreeMentImplVolley;->getUiConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    new-instance v1, Lcom/inveno/se/biz/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/inveno/se/biz/c;-><init>(Lcom/inveno/se/biz/UiConfigBiz;Landroid/content/Context;Lcom/inveno/se/callback/DownloadCallback;)V

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method
