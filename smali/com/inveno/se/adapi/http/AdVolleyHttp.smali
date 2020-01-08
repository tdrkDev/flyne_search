.class public Lcom/inveno/se/adapi/http/AdVolleyHttp;
.super Lcom/inveno/se/http/VolleyHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/se/http/VolleyHttp;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestAdJsonObj(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "ZZ)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbf\u95ee\u7684url\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    iget-object v2, p0, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void

    :pswitch_0
    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, v4, v2

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v1, Lcom/inveno/se/adapi/http/AdJsonObjGetRequest;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/inveno/se/adapi/http/AdJsonObjGetRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v1, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    move-object v3, p2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestAdProto(Ljava/lang/String;[BLcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/inveno/se/volley/Response$Listener",
            "<[B>;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "Z)V"
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

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    new-instance v0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/inveno/se/adapi/http/AdProtoPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;[B)V

    invoke-virtual {v0, p5}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    iget-object v1, p0, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdVolleyHttp;->requestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void
.end method
