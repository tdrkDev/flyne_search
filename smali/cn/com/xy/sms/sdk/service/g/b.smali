.class final Lcn/com/xy/sms/sdk/service/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/g/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/g/b;->g:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    iput-object p10, p0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    iput-object p11, p0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    iput-object p12, p0, Lcn/com/xy/sms/sdk/service/g/b;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 19

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v2

    :goto_0
    if-eqz p1, :cond_0

    :try_start_1
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_1

    const-string v2, "true"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_2
    const-string v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v15, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v15, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :cond_3
    move-object v15, v4

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v16, Lorg/json/JSONArray;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v13, ""

    const-string v12, ""

    const-string v11, ""

    const-string v10, ""

    const-string v9, ""

    const-string v8, ""

    const-string v7, ""

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const/4 v2, 0x0

    move/from16 v18, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v18

    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v13, v14, :cond_7

    :cond_5
    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    :goto_3
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "FlightCompany"

    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightDeptimePlanDate"

    invoke-virtual {v2, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightArrtimePlanDate"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightHTerminal"

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightDep"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightArr"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightQueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "FlightDepAirport"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightArrAirport"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightState"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "FlightTerminal"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/xy/sms/sdk/service/g/b;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v15, :cond_6

    const-string v3, "true"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_6
    :try_start_5
    const-string v3, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v15, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v15, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v15, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_7
    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "FlightCompany"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "FlightDeptimePlanDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "FlightArrtimePlanDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "FlightHTerminal"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "FlightDep"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "FlightArr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "FlightDepAirport"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "FlightArrAirport"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "FlightState"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "FlightTerminal"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v7, ""

    const-string v10, ""

    const-string v5, ""

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v8, ""

    const-string v11, ""

    const-string v6, ""

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->h:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->i:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->j:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-static {v14}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/com/xy/sms/sdk/service/g/b;->k:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_e
    const-string v14, ""

    add-int/lit8 v12, v13, 0x1

    move v13, v12

    move-object v12, v14

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v15, :cond_10

    const-string v2, "true"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_10
    :try_start_7
    const-string v2, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v15, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v15, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v2, v3

    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->g:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v15, :cond_11

    const-string v3, "true"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_11
    :try_start_9
    const-string v3, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v15, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v2, :cond_12

    invoke-static {v15, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v15, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :goto_5
    if-nez v15, :cond_13

    const-string v4, "true"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_13
    :try_start_a
    const-string v4, "QueryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v15, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v3, :cond_14

    invoke-static {v15, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/sdk/service/g/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/com/xy/sms/sdk/service/g/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/sdk/service/g/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/xy/sms/sdk/service/g/b;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5, v15, v6}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_15
    :goto_6
    throw v2

    :catch_5
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method
