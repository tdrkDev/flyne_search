.class Lcom/inveno/reportsdk/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inveno/reportsdk/e;


# instance fields
.field private b:Lcom/inveno/reportsdk/g;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    new-instance v0, Lcom/inveno/reportsdk/f;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/f;-><init>(Lcom/inveno/reportsdk/e;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/e;->d:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/g;

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/reportsdk/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/inveno/reportsdk/h;

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/reportsdk/h;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/inveno/reportsdk/g;

    invoke-direct {v1, v0}, Lcom/inveno/reportsdk/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    invoke-virtual {v2}, Lcom/inveno/reportsdk/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    throw v0
.end method

.method static declared-synchronized a()Lcom/inveno/reportsdk/e;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/e;->a:Lcom/inveno/reportsdk/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/e;

    invoke-direct {v0}, Lcom/inveno/reportsdk/e;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/e;->a:Lcom/inveno/reportsdk/e;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/e;->a:Lcom/inveno/reportsdk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/inveno/reportsdk/e;)Lcom/inveno/reportsdk/g;
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/reportsdk/e;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/reportsdk/e;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a(Lcom/inveno/reportsdk/x;)J
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "promotion"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fuid"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_ver"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "api_ver"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tk"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "report_time"

    iget-wide v2, p1, Lcom/inveno/reportsdk/x;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "network"

    iget v2, p1, Lcom/inveno/reportsdk/x;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sid"

    iget v2, p1, Lcom/inveno/reportsdk/x;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "seq"

    iget v2, p1, Lcom/inveno/reportsdk/x;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "imei"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "brand"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osv"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_lan"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mcc"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mnc"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nmcc"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nmnc"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "upack"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    iget-object v2, p1, Lcom/inveno/reportsdk/x;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "report_data"

    invoke-direct {p0, v1, v0}, Lcom/inveno/reportsdk/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method a(I)Ljava/util/List;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/reportsdk/x;",
            ">;"
        }
    .end annotation

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-string v2, "%s DESC, %s DESC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "report_time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "seq"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-lez p1, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    invoke-virtual {v2}, Lcom/inveno/reportsdk/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "report_data"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    :try_start_1
    const-string v2, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    const-string v2, "product_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    const-string v2, "promotion"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    const-string v2, "fuid"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    const-string v2, "uid"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    const-string v2, "app_ver"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    const-string v2, "sdk_ver"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    const-string v2, "api_ver"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    const-string v2, "sid"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    const-string v2, "seq"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    const-string v2, "imei"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    const-string v2, "aid"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    const-string v2, "brand"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    const-string v2, "model"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    const-string v2, "osv"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    const-string v2, "platform"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    const-string v2, "language"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    const-string v2, "app_lan"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    const-string v2, "mcc"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    const-string v2, "mnc"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    const-string v2, "nmcc"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    const-string v2, "nmnc"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    const-string v2, "upack"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    const-string v2, "referrer"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    const-string v2, "data"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/inveno/reportsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/inveno/reportsdk/x$a;

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v14}, Ld/d;->b(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v2 .. v24}, Lcom/inveno/reportsdk/x$a;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->a(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->b(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->c(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->d(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->e(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->f(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->g(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->h(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/x$a;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/inveno/reportsdk/x$a;->a()Lcom/inveno/reportsdk/x;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v2, v25

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inveno/reportsdk/e;->a(Landroid/database/Cursor;)V

    invoke-direct/range {p0 .. p0}, Lcom/inveno/reportsdk/e;->c()V

    :goto_3
    return-object v26

    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/inveno/reportsdk/e;->a(Landroid/database/Cursor;)V

    invoke-direct/range {p0 .. p0}, Lcom/inveno/reportsdk/e;->c()V

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object/from16 v25, v11

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/inveno/reportsdk/e;->a(Landroid/database/Cursor;)V

    invoke-direct/range {p0 .. p0}, Lcom/inveno/reportsdk/e;->c()V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v2, v11

    goto :goto_2
.end method

.method b(Lcom/inveno/reportsdk/x;)I
    .locals 6

    const/4 v0, 0x0

    const-string v1, "_id = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v4, p1, Lcom/inveno/reportsdk/x;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :try_start_0
    iget-object v3, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    invoke-virtual {v3}, Lcom/inveno/reportsdk/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "report_data"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/inveno/reportsdk/e;->c()V

    throw v0
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/inveno/reportsdk/e;->b:Lcom/inveno/reportsdk/g;

    iget-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/e;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/e;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/e;->a:Lcom/inveno/reportsdk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
