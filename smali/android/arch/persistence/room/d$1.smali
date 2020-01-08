.class Landroid/arch/persistence/room/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/persistence/room/d;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/d;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    .line 355
    iget-object v2, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v2}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;

    move-result-object v2

    const-string v3, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v4, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v4}, Landroid/arch/persistence/room/d;->d(Landroid/arch/persistence/room/d;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/arch/persistence/room/f;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 358
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 360
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 362
    iget-object v3, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    iget-object v3, v3, Landroid/arch/persistence/room/d;->b:[J

    aput-wide v4, v3, v0

    .line 365
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0, v4, v5}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 366
    goto :goto_0

    .line 368
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 370
    return v0

    .line 368
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 303
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->b(Landroid/arch/persistence/room/d;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    iget-object v0, v0, Landroid/arch/persistence/room/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 314
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->inTransaction()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 321
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->c(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/a/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/f;->a()I

    .line 322
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->d(Landroid/arch/persistence/room/d;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v4}, Landroid/arch/persistence/room/d;->e(Landroid/arch/persistence/room/d;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    .line 323
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;

    move-result-object v0

    iget-boolean v0, v0, Landroid/arch/persistence/room/f;->mWriteAheadLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    invoke-static {v0}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->getOpenHelper()Landroid/arch/persistence/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 328
    :try_start_4
    invoke-interface {v3}, Landroid/arch/persistence/a/b;->a()V

    .line 329
    invoke-direct {p0}, Landroid/arch/persistence/room/d$1;->a()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 330
    :try_start_5
    invoke-interface {v3}, Landroid/arch/persistence/a/b;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 332
    :try_start_6
    invoke-interface {v3}, Landroid/arch/persistence/a/b;->b()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 342
    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    :goto_2
    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    iget-object v1, v0, Landroid/arch/persistence/room/d;->d:Landroid/arch/a/b/b;

    monitor-enter v1

    .line 346
    :try_start_7
    iget-object v0, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    iget-object v0, v0, Landroid/arch/persistence/room/d;->d:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/d$c;

    iget-object v3, p0, Landroid/arch/persistence/room/d$1;->a:Landroid/arch/persistence/room/d;

    iget-object v3, v3, Landroid/arch/persistence/room/d;->b:[J

    invoke-virtual {v0, v3}, Landroid/arch/persistence/room/d$c;->a([J)V

    goto :goto_3

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 332
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_8
    invoke-interface {v3}, Landroid/arch/persistence/a/b;->b()V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 337
    :catch_0
    move-exception v0

    :goto_5
    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 339
    :goto_6
    :try_start_9
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 335
    :cond_4
    :try_start_a
    invoke-direct {p0}, Landroid/arch/persistence/room/d$1;->a()Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v0

    goto :goto_1

    .line 342
    :catchall_2
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 349
    :cond_5
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 337
    :catch_1
    move-exception v0

    :goto_7
    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_7

    .line 332
    :catchall_3
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_4
.end method
