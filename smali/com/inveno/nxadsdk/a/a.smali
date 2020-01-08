.class public Lcom/inveno/nxadsdk/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/nxadsdk/a/a$a;
    }
.end annotation


# static fields
.field private static d:Lcom/inveno/nxadsdk/a/a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/inveno/nxadsdk/a/a$a;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    new-instance v0, Lcom/inveno/nxadsdk/a/a$a;

    invoke-direct {v0, p0}, Lcom/inveno/nxadsdk/a/a$a;-><init>(Lcom/inveno/nxadsdk/a/a;)V

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/a;->b:Lcom/inveno/nxadsdk/a/a$a;

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/a/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/a;
    .locals 2

    sget-object v0, Lcom/inveno/nxadsdk/a/a;->d:Lcom/inveno/nxadsdk/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/inveno/nxadsdk/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/nxadsdk/a/a;->d:Lcom/inveno/nxadsdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/nxadsdk/a/a;

    invoke-direct {v0, p0}, Lcom/inveno/nxadsdk/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/nxadsdk/a/a;->d:Lcom/inveno/nxadsdk/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/inveno/nxadsdk/a/a;->d:Lcom/inveno/nxadsdk/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v1, ""

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "event_type"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "max_retry"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getMax_retry()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "notify_url"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "retry"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getRetry()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "tm"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getTm()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "uTime"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getuTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    :goto_2
    const-string v0, "nx_ad_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto update   tojsonstring:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->b:Lcom/inveno/nxadsdk/a/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/a/a$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/inveno/se/adapi/model/adresp/EventTrack;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "AUTO_UPLOAD_DATE_KEY"

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/inveno/nxadsdk/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/inveno/se/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "AUTO_UPLOAD_DATE_KEY"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-direct {v4}, Lcom/inveno/se/adapi/model/adresp/EventTrack;-><init>()V

    const-string v5, "uTime"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setuTime(Ljava/lang/String;)V

    const-string v5, "notify_url"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setNotify_url(Ljava/lang/String;)V

    const-string v5, "retry"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setRetry(I)V

    const-string v5, "event_type"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setEvent_type(I)V

    const-string v5, "max_retry"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setMax_retry(I)V

    const-string v5, "tm"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setTm(J)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public b()V
    .locals 8

    const-string v0, "nx_ad_sdk"

    const-string v1, "auto update   upload  "

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/inveno/nxadsdk/a/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "AUTO_UPLOAD_DATE_KEY"

    const-string v2, ""

    iget-object v3, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/inveno/se/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getRetry()I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getMax_retry()I

    move-result v3

    if-ge v5, v3, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getuTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getuTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/inveno/nxadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/inveno/nxadsdk/a/a$1;

    invoke-direct {v2, p0, v5, v0}, Lcom/inveno/nxadsdk/a/a$1;-><init>(Lcom/inveno/nxadsdk/a/a;ILcom/inveno/se/adapi/model/adresp/EventTrack;)V

    :cond_0
    const-string v3, "&"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "?"

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "retry="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/inveno/nxadsdk/a/a;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/inveno/se/adapi/AdApiMgr;->uploadEventTrack(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    const-string v2, "nx_ad_sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto update   upload  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  retry:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  url:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inveno/se/tools/LogTools;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
