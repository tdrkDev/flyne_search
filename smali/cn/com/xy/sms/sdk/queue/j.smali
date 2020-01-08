.class final Lcn/com/xy/sms/sdk/queue/j;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v10, 0x0

    :try_start_0
    const-string v2, "xiaoyuan_taskqueue"

    invoke-virtual {p0, v2}, Lcn/com/xy/sms/sdk/queue/j;->setName(Ljava/lang/String;)V

    sget v2, Lcn/com/xy/sms/sdk/queue/i;->b:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    :try_start_1
    sget-object v2, Lcn/com/xy/sms/sdk/queue/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/com/xy/sms/sdk/queue/k;

    move-object v8, v0

    if-eqz v8, :cond_0

    iget v2, v8, Lcn/com/xy/sms/sdk/queue/k;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->startQueryIccidLocation(Ljava/util/HashMap;Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/t;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_3
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/t;->b(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_4
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_5
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/d;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/e;->a()V

    goto :goto_0

    :pswitch_7
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v3, "titleNo"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcn/com/xy/sms/sdk/db/entity/z;

    invoke-direct {v4}, Lcn/com/xy/sms/sdk/db/entity/z;-><init>()V

    iput-object v2, v4, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, v4, Lcn/com/xy/sms/sdk/db/entity/z;->c:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, v4, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "tb_scene_config"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "scene_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "isUse"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "useCount"

    aput-object v7, v5, v6

    const-string v6, "scene_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v4, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    :goto_2
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    :try_start_4
    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_3
    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/lang/String;)I

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/c;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_2
    :try_start_5
    const-string v5, "useCount"

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    iput v6, v4, Lcn/com/xy/sms/sdk/db/entity/z;->e:I

    iput v5, v4, Lcn/com/xy/sms/sdk/db/entity/z;->c:I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "useCount"

    iget v7, v4, Lcn/com/xy/sms/sdk/db/entity/z;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "isUse"

    iget v7, v4, Lcn/com/xy/sms/sdk/db/entity/z;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "tb_scene_config"

    const-string v7, "scene_id = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v6, v5, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_4
    const/4 v4, 0x1

    :try_start_6
    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_5
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v2

    :pswitch_8
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/a/c;->a(Ljava/util/HashMap;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->b()V

    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/a/c;->b(Ljava/util/HashMap;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->c()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/K;->a(Ljava/util/HashMap;)J

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/u;->a(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v3, "phoneNum"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v4, "dbresoult"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/service/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v3, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v2, "phoneNumber"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "isSuccess"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/B;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v3, "msgId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v4, "num"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v5, "cnum"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    const-string v7, "smsTime"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8}, Lcn/com/xy/sms/sdk/queue/k;->a()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcn/com/xy/sms/util/ParseSmsMessage;->queryRecognisedValueFromApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :pswitch_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x23

    const-wide v6, 0x9a7ec800L

    invoke-static {v4, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-wide v4

    sub-long/2addr v2, v4

    :try_start_7
    const-string v4, "tb_shard_data"

    const-string v5, "msg_time<=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    :try_start_8
    iget-object v3, v8, Lcn/com/xy/sms/sdk/queue/k;->b:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_7
    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/b;->a()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_9
    const-string v2, "num"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "msg"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "smsTime"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/dex/DexUtil;->multiReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, v3}, Lcn/com/xy/sms/sdk/db/entity/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_4
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v2

    goto/16 :goto_5

    :catch_5
    move-exception v3

    move-object v3, v10

    goto/16 :goto_4

    :cond_5
    move-object v3, v10

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
