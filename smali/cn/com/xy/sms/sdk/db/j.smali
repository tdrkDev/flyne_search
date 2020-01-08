.class final Lcn/com/xy/sms/sdk/db/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Lcn/com/xy/sms/sdk/db/entity/j;

.field private final synthetic d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(ZLjava/util/Map;Lcn/com/xy/sms/sdk/db/entity/j;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/db/j;->a:Z

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/util/Map;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/j;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 12

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/j;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v4, v4, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->d:Ljava/lang/String;

    iput-object v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->e:J

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    iput-object v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    const/4 v4, 0x0

    iput v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->f:I

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->i:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcn/com/xy/sms/sdk/db/entity/j;->i:J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/db/entity/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/db/entity/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v3, Lcn/com/xy/sms/sdk/db/entity/j;->e:J

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget v3, v3, Lcn/com/xy/sms/sdk/db/entity/j;->f:I

    iget-object v6, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v6, v6, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    iget-object v8, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v8, v8, Lcn/com/xy/sms/sdk/db/entity/j;->i:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "version"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "update_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delaystart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delayend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tb_menu_list"

    const-string v2, "name = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v10, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/db/j;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AUTO_UPDATE_DATA"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/util/Map;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->b(Lcn/com/xy/sms/sdk/db/entity/j;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/j;->i:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcn/com/xy/sms/sdk/db/entity/j;->i:J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v2, v1, Lcn/com/xy/sms/sdk/db/entity/j;->h:J

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-wide v4, v1, Lcn/com/xy/sms/sdk/db/entity/j;->i:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "update_time"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "delaystart"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delayend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tb_menu_list"

    const-string v3, "name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/db/j;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AUTO_UPDATE_DATA"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/util/Map;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->b(Lcn/com/xy/sms/sdk/db/entity/j;)V

    goto/16 :goto_2

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/j;->b:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "update_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tb_menu_list"

    const-string v3, "name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    :try_start_8
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/db/j;->a:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AUTO_UPDATE_DATA"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/util/Map;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/j;->c:Lcn/com/xy/sms/sdk/db/entity/j;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/i;->b(Lcn/com/xy/sms/sdk/db/entity/j;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_9
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v1, "-2"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
