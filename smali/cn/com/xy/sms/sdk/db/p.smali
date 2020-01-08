.class final Lcn/com/xy/sms/sdk/db/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/p;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/p;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/p;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/p;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/p;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/p;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/i;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/p;->c:Ljava/lang/String;

    const-string v3, "\u6b21"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "cc"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/p;->d:Ljava/lang/String;

    :cond_2
    const-string v4, "day"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/TrainManager;->getTrainData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/TrainManager;->getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "tb_train6"

    const-string v6, "train_num = ? AND day = ? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v1, v7, v3

    invoke-static {v0, v5, v4, v6, v7}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->saveOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/p;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/p;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/p;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/p;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/p;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/p;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/p;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/p;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/p;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1
.end method
