.class final Lcn/com/xy/sms/sdk/service/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/service/g/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/service/g/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/g/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/g/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/g/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/g/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/g/d;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/g/d;->g:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 9

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/g/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/g/d;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_11

    array-length v0, p1

    if-ne v0, v1, :cond_11

    aget-object v0, p1, v8

    if-eqz v0, :cond_11

    const-string v0, "offNetwork"

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "offNetwork"

    move-object v4, v0

    :goto_1
    if-eqz p1, :cond_0

    :try_start_1
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/g/d;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const-string v0, "true"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :try_start_2
    const-string v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-le v0, v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/g/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/d;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :cond_5
    move-object v2, v3

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x5

    :try_start_3
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/g/d;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "true"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "networkState"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    array-length v0, p1

    if-le v0, v8, :cond_7

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const-string v1, "station_list"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/g/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/d;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_9
    :try_start_6
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/g/d;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_a

    const-string v0, "true"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_a
    :try_start_7
    const-string v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_b

    array-length v0, p1

    if-le v0, v8, :cond_b

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "station_list"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/g/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/d;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    if-nez v2, :cond_d

    const-string v0, "true"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    :try_start_8
    const-string v0, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "networkState"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_e

    array-length v0, p1

    if-le v0, v8, :cond_e

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "station_list"

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "station_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/g/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/g/d;->f:Ljava/lang/String;

    invoke-static {v3, v4, v0, v2, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_10
    :goto_4
    throw v1

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_11
    move-object v4, v3

    goto/16 :goto_1
.end method
