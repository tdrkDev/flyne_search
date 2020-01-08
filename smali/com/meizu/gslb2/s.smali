.class Lcom/meizu/gslb2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/meizu/gslb2/DomainIpInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v0, "key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v0, "load_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 40
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    const-wide/16 v4, 0x12c

    .line 43
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 44
    const v9, 0x1adb6

    if-eq v8, v9, :cond_0

    const v9, 0x1adb2

    if-ne v8, v9, :cond_2

    .line 45
    :cond_0
    new-instance v1, Lcom/meizu/gslb2/DomainIpInfo;

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/meizu/gslb2/DomainIpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 61
    :cond_1
    :goto_0
    return-object v1

    .line 47
    :cond_2
    const-string v4, "value"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    const-string v4, "expire"

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 50
    new-instance v1, Lcom/meizu/gslb2/DomainIpInfo;

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/meizu/gslb2/DomainIpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const-string v3, "targets"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/meizu/gslb2/s;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 53
    const-string v3, "baks"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/meizu/gslb2/s;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    new-instance v4, Lcom/meizu/gslb2/o;

    invoke-direct {v4, v1, v0}, Lcom/meizu/gslb2/o;-><init>(Lcom/meizu/gslb2/DomainIpInfo;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v1, v3}, Lcom/meizu/gslb2/DomainIpInfo;->addIpInfo(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 22
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    const-string v3, "ip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const-string v3, "ip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method
