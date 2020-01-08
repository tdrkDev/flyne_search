.class public final Lcn/com/xy/sms/sdk/db/entity/K;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "phone_num"

.field private static b:Ljava/lang/String; = "date"

.field private static c:Ljava/lang/String; = "click_times"

.field private static d:Ljava/lang/String; = "company_num"

.field private static e:Ljava/lang/String; = "function_mode"

.field private static f:Ljava/lang/String; = "tb_menu_action"

.field private static g:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_menu_action"

.field private static h:Ljava/lang/String; = "create table  if not exists tb_menu_action (phone_num TEXT, date TEXT, company_num TEXT, function_mode TEXT, click_times INTEGER DEFAULT \'0\'  ) "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string v0, "phoneNum"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "companyNum"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "functionMode"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/K;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/J;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    iget v0, v3, Lcn/com/xy/sms/sdk/db/entity/J;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcn/com/xy/sms/sdk/db/entity/J;->e:I

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/K;->a(Lcn/com/xy/sms/sdk/db/entity/J;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "tb_menu_action"

    const-string v2, "company_num = ? and function_mode = ? and date = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcn/com/xy/sms/sdk/db/entity/J;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcn/com/xy/sms/sdk/db/entity/J;->d:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {v1, v0, v2, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    new-instance v3, Lcn/com/xy/sms/sdk/db/entity/J;

    invoke-direct {v3}, Lcn/com/xy/sms/sdk/db/entity/J;-><init>()V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/J;->a:Ljava/lang/String;

    iput-object v1, v3, Lcn/com/xy/sms/sdk/db/entity/J;->b:Ljava/lang/String;

    iput-object v2, v3, Lcn/com/xy/sms/sdk/db/entity/J;->d:Ljava/lang/String;

    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v3, Lcn/com/xy/sms/sdk/db/entity/J;->e:I

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/K;->a(Lcn/com/xy/sms/sdk/db/entity/J;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "tb_menu_action"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v4

    goto :goto_0
.end method

.method private static a(Lcn/com/xy/sms/sdk/db/entity/J;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "phone_num"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/J;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "company_num"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/J;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "function_mode"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/J;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_times"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/J;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/J;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "click_times"

    aput-object v3, v1, v2

    const-string v2, "company_num = ? and date = ? and function_mode = ? "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "1"

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "phone_num"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "company_num"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "date"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "function_mode"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "click_times"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    move-object v0, v8

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    new-instance v8, Lcn/com/xy/sms/sdk/db/entity/J;

    invoke-direct {v8}, Lcn/com/xy/sms/sdk/db/entity/J;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcn/com/xy/sms/sdk/db/entity/J;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcn/com/xy/sms/sdk/db/entity/J;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcn/com/xy/sms/sdk/db/entity/J;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcn/com/xy/sms/sdk/db/entity/J;->e:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :cond_1
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v8

    move-object v8, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v8

    move-object v8, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v8, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    const-string v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "click_times"

    aput-object v3, v1, v2

    const-string v2, "date < ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x5

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "phone_num"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "company_num"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "function_mode"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "click_times"

    aput-object v3, v0, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadArrDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    invoke-static {v0, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a()V
    .locals 3

    :try_start_0
    const-string v0, "tb_menu_action"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "tb_menu_action"

    const-string v1, "date < ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/J;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "tb_menu_action"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "date"

    aput-object v3, v1, v2

    const-string v2, "date < ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string v4, "date"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    new-instance v2, Lcn/com/xy/sms/sdk/db/entity/J;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/db/entity/J;-><init>()V

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v0, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_3
    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v9, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :cond_1
    invoke-static {v0, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v9

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/J;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "click_times"

    aput-object v3, v1, v2

    const-string v2, "date = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "phone_num"

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "company_num"

    invoke-virtual {v0, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "date"

    invoke-virtual {v0, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "function_mode"

    invoke-virtual {v0, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "click_times"

    invoke-virtual {v0, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_0
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v0, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v9

    :cond_1
    :try_start_2
    new-instance v6, Lcn/com/xy/sms/sdk/db/entity/J;

    invoke-direct {v6}, Lcn/com/xy/sms/sdk/db/entity/J;-><init>()V

    new-instance v6, Lcn/com/xy/sms/sdk/db/entity/J;

    invoke-direct {v6}, Lcn/com/xy/sms/sdk/db/entity/J;-><init>()V

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/J;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/J;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/J;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/J;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcn/com/xy/sms/sdk/db/entity/J;->e:I

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v0, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v8, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_2
.end method
