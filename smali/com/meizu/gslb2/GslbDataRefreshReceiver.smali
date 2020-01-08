.class public Lcom/meizu/gslb2/GslbDataRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gslb2/GslbDataRefreshReceiver;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/meizu/gslb2/GslbDataRefreshReceiver;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, "gslb.invalidate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 50
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 51
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 24
    const-string v0, "com.meizu.flyme.gslb.push.broadcast"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;-><init>(Lcom/meizu/gslb2/GslbDataRefreshReceiver;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/meizu/flyme/internet/async/a;->a(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    return-void
.end method
