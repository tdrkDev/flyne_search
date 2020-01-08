.class public Lcom/inveno/se/http/VolleyHttp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/ab;


# static fields
.field public static final GET:I = 0x0

.field public static final POST:I = 0x1

.field private static volleyHttp:Lcom/inveno/se/http/VolleyHttp;


# instance fields
.field public requestQueue:Lcom/inveno/se/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/Volley;->getInstance(Landroid/content/Context;)Lcom/inveno/se/volley/toolbox/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/Volley;->newRequestQueue()Lcom/inveno/se/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " VolleyHttp init error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/Volley;->getInstance(Landroid/content/Context;)Lcom/inveno/se/volley/toolbox/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/Volley;->newRequestQueue()Lcom/inveno/se/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    goto :goto_0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/http/VolleyHttp;
    .locals 2

    const-class v1, Lcom/inveno/se/http/VolleyHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/http/VolleyHttp;

    invoke-direct {v0, p0}, Lcom/inveno/se/http/VolleyHttp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    :cond_0
    sget-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;
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
.method public cancelAll()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    new-instance v1, Lcom/inveno/se/http/VolleyHttp$1;

    invoke-direct {v1, p0}, Lcom/inveno/se/http/VolleyHttp$1;-><init>(Lcom/inveno/se/http/VolleyHttp;)V

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/RequestQueue;->cancelAll(Lcom/inveno/se/volley/RequestQueue$RequestFilter;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->getCache()Lcom/inveno/se/volley/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/inveno/se/volley/Cache;->clear()V

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    invoke-virtual {v0}, Lcom/inveno/se/http/VolleyHttp;->cancelAll()V

    sget-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    invoke-virtual {v0}, Lcom/inveno/se/http/VolleyHttp;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/http/VolleyHttp;->volleyHttp:Lcom/inveno/se/http/VolleyHttp;

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCache()Lcom/inveno/se/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->getCache()Lcom/inveno/se/volley/Cache;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->stop()V

    goto :goto_0
.end method

.method public requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "ZZ)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u7684url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    invoke-virtual {v0, p7}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    iget-object v1, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/inveno/se/volley/toolbox/JsonObjectRequest;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V

    goto :goto_0

    :pswitch_1
    if-eqz p6, :cond_0

    sget v0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p3, p2}, Lcom/inveno/se/http/security/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u660e\u6587\u52a0\u5bc6\u53c2\u6570\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v0, Lcom/inveno/se/http/JsonObjPostRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/http/JsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/inveno/se/http/JsonObjPostRequest;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/http/JsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestJsonObj(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZLcom/inveno/se/volley/RetryPolicy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "ZZ",
            "Lcom/inveno/se/volley/RetryPolicy;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u7684url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    invoke-virtual {v0, p7}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    invoke-virtual {v0, p8}, Lcom/inveno/se/volley/Request;->setRetryPolicy(Lcom/inveno/se/volley/RetryPolicy;)V

    iget-object v1, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/inveno/se/volley/toolbox/JsonObjectRequest;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/inveno/se/http/JsonObjPostRequest;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/http/JsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestString(ILjava/lang/String;Ljava/util/Map;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "ZZ)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u7684url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    invoke-virtual {v0, p7}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    iget-object v1, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/inveno/se/volley/toolbox/StringRequest;

    move v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/inveno/se/volley/toolbox/StringRequest;

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/reportsdk/q;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u7684url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v2, Lcom/inveno/se/http/VolleyHttp$2;

    invoke-direct {v2, p0, p3}, Lcom/inveno/se/http/VolleyHttp$2;-><init>(Lcom/inveno/se/http/VolleyHttp;Lcom/inveno/reportsdk/q;)V

    new-instance v3, Lcom/inveno/se/http/VolleyHttp$3;

    invoke-direct {v3, p0, p3}, Lcom/inveno/se/http/VolleyHttp$3;-><init>(Lcom/inveno/se/http/VolleyHttp;Lcom/inveno/reportsdk/q;)V

    new-instance v0, Lcom/inveno/se/http/JsonObjPostRequest;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/http/JsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void
.end method
