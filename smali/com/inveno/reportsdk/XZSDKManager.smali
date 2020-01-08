.class public Lcom/inveno/reportsdk/XZSDKManager;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DataSDK"

.field static context:Landroid/content/Context;

.field static resetListenerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/inveno/reportsdk/r;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonParamsMap()Ljava/util/Map;
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

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getCommonParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getUpack()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUpack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisibleActivityNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/inveno/reportsdk/a;->a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/a;->b()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/ab;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/inveno/reportsdk/ab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {p0}, Ld/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/reportsdk/CommonParams;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inveno/reportsdk/CommonParams;->setPromotion(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inveno/reportsdk/CommonParams;->setAppVer(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/inveno/reportsdk/CommonParams;->setAppLan(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    const-string v1, "2.1.0"

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setApiVer(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSid(I)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSeq(I)V

    sput-object p5, Lcom/inveno/reportsdk/d;->a:Ljava/lang/String;

    sput-object p6, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    sget-boolean v0, Ld/a;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setImei(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setAid(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setBrand(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setModel(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setOsv(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inveno/reportsdk/CommonParams;->setDeviceLan(Ljava/lang/String;)V

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->MCC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->MCC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->MCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setMcc(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->MCC:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setMnc(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setWidth(I)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setHeight(I)V

    sget-object v0, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/tools/DeviceConfig;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setMac(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/inveno/reportsdk/ag;->b()Lcom/inveno/reportsdk/ag;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/inveno/reportsdk/ag;->a(Lcom/inveno/reportsdk/ab;)V

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/i;->c()V

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->b()V

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    sget-boolean v0, Lcom/inveno/reportsdk/v;->a:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    new-instance v1, Lcom/inveno/reportsdk/ai;

    invoke-direct {v1}, Lcom/inveno/reportsdk/ai;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/inveno/reportsdk/a;->a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;

    :cond_4
    return-void
.end method

.method public static isInForeground(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/inveno/reportsdk/a;->a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/a;->a()Z

    move-result v0

    return v0
.end method

.method public static registerResetListener(Lcom/inveno/reportsdk/r;)V
    .locals 2
    .param p0    # Lcom/inveno/reportsdk/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static release()V
    .locals 1

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    invoke-static {}, Lcom/inveno/reportsdk/ag;->b()Lcom/inveno/reportsdk/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ag;->a()V

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/i;->b()V

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/n;->b()V

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/reportsdk/a;->a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/a;->c()V

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->d()V

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/y;->b()V

    invoke-static {}, Lcom/inveno/reportsdk/o;->a()Lcom/inveno/reportsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/o;->b()V

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/http/VolleyHttp;->newInstance(Landroid/content/Context;)Lcom/inveno/se/http/VolleyHttp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/http/VolleyHttp;->destroy()V

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/model/MustParam;->release()V

    invoke-static {}, Lcom/inveno/reportsdk/e;->a()Lcom/inveno/reportsdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/e;->b()V

    invoke-static {}, Lcom/inveno/reportsdk/u;->a()Lcom/inveno/reportsdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/u;->b()V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->release()V

    return-void
.end method

.method static reset()V
    .locals 2

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/inveno/reportsdk/r;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "DataSDK"

    const-string v1, "reset\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    return-void
.end method

.method static setContentMode(I)V
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/reportsdk/CommonParams;->setMode(I)V

    return-void
.end method

.method static setExpireDuration(J)V
    .locals 2

    invoke-static {}, Lcom/inveno/reportsdk/o;->a()Lcom/inveno/reportsdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inveno/reportsdk/o;->a(J)V

    return-void
.end method

.method public static setFuid(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/reportsdk/CommonParams;->setFuid(Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkVer(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/reportsdk/CommonParams;->setSdkVer(Ljava/lang/String;)V

    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/reportsdk/CommonParams;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method public static setUpack(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/reportsdk/CommonParams;->setUpack(Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterResetListener(Lcom/inveno/reportsdk/r;)V
    .locals 1
    .param p0    # Lcom/inveno/reportsdk/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->resetListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
