.class public Landroid/arch/persistence/room/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/d$a;,
        Landroid/arch/persistence/room/d$b;,
        Landroid/arch/persistence/room/d$c;
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field a:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:Landroid/arch/a/b/b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b",
            "<",
            "Landroid/arch/persistence/room/d$b;",
            "Landroid/arch/persistence/room/d$c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/Object;

.field private i:J

.field private final j:Landroid/arch/persistence/room/f;

.field private volatile k:Z

.field private volatile l:Landroid/arch/persistence/a/f;

.field private m:Landroid/arch/persistence/room/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/arch/persistence/room/d;->f:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/arch/persistence/room/f;[Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/arch/persistence/room/d;->h:[Ljava/lang/Object;

    .line 103
    iput-wide v6, p0, Landroid/arch/persistence/room/d;->i:J

    .line 107
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/arch/persistence/room/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-boolean v0, p0, Landroid/arch/persistence/room/d;->k:Z

    .line 116
    new-instance v1, Landroid/arch/a/b/b;

    invoke-direct {v1}, Landroid/arch/a/b/b;-><init>()V

    iput-object v1, p0, Landroid/arch/persistence/room/d;->d:Landroid/arch/a/b/b;

    .line 296
    new-instance v1, Landroid/arch/persistence/room/d$1;

    invoke-direct {v1, p0}, Landroid/arch/persistence/room/d$1;-><init>(Landroid/arch/persistence/room/d;)V

    iput-object v1, p0, Landroid/arch/persistence/room/d;->e:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Landroid/arch/persistence/room/d;->j:Landroid/arch/persistence/room/f;

    .line 128
    new-instance v1, Landroid/arch/persistence/room/d$a;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/arch/persistence/room/d$a;-><init>(I)V

    iput-object v1, p0, Landroid/arch/persistence/room/d;->m:Landroid/arch/persistence/room/d$a;

    .line 129
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/arch/persistence/room/d;->a:Landroid/support/v4/util/ArrayMap;

    .line 130
    array-length v1, p2

    .line 131
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/arch/persistence/room/d;->g:[Ljava/lang/String;

    .line 132
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    aget-object v2, p2, v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v3, p0, Landroid/arch/persistence/room/d;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Landroid/arch/persistence/room/d;->g:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    array-length v0, p2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/arch/persistence/room/d;->b:[J

    .line 138
    iget-object v0, p0, Landroid/arch/persistence/room/d;->b:[J

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 139
    return-void
.end method

.method static synthetic a(Landroid/arch/persistence/room/d;J)J
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Landroid/arch/persistence/room/d;->i:J

    return-wide p1
.end method

.method static synthetic a(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/room/f;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/d;->j:Landroid/arch/persistence/room/f;

    return-object v0
.end method

.method private a(Landroid/arch/persistence/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Landroid/arch/persistence/room/d;->g:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    sget-object v4, Landroid/arch/persistence/room/d;->f:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 182
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v3, v2, v6}, Landroid/arch/persistence/room/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "room_table_modification_trigger_"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    return-void
.end method

.method private b(Landroid/arch/persistence/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Landroid/arch/persistence/room/d;->g:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    sget-object v4, Landroid/arch/persistence/room/d;->f:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v3, v2, v6}, Landroid/arch/persistence/room/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v7, " AFTER "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 197
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ON `"

    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "` BEGIN INSERT OR REPLACE INTO "

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "room_table_modification_log"

    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES(null, "

    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 203
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); END"

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Landroid/arch/persistence/room/d;->j:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-boolean v1, p0, Landroid/arch/persistence/room/d;->k:Z

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Landroid/arch/persistence/room/d;->j:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->getOpenHelper()Landroid/arch/persistence/a/c;

    move-result-object v1

    invoke-interface {v1}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    .line 289
    :cond_1
    iget-boolean v1, p0, Landroid/arch/persistence/room/d;->k:Z

    if-nez v1, :cond_2

    .line 290
    const-string v1, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/arch/persistence/room/d;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/arch/persistence/room/d;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/arch/persistence/room/d;)Landroid/arch/persistence/a/f;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/d;->l:Landroid/arch/persistence/a/f;

    return-object v0
.end method

.method static synthetic d(Landroid/arch/persistence/room/d;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/d;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Landroid/arch/persistence/room/d;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/arch/persistence/room/d;->i:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Landroid/arch/persistence/room/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 387
    :cond_0
    return-void
.end method

.method a(Landroid/arch/persistence/a/b;)V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/persistence/room/d;->k:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit p0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 156
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 157
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->b()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/d;->b(Landroid/arch/persistence/a/b;)V

    .line 163
    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->a(Ljava/lang/String;)Landroid/arch/persistence/a/f;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/d;->l:Landroid/arch/persistence/a/f;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/room/d;->k:Z

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method b(Landroid/arch/persistence/a/b;)V
    .locals 5

    .prologue
    .line 402
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :goto_0
    return-void

    .line 432
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :try_start_1
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->b()V

    .line 436
    iget-object v0, p0, Landroid/arch/persistence/room/d;->m:Landroid/arch/persistence/room/d$a;

    invoke-virtual {v0}, Landroid/arch/persistence/room/d$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/d;->j:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 415
    :try_start_3
    iget-object v0, p0, Landroid/arch/persistence/room/d;->m:Landroid/arch/persistence/room/d$a;

    invoke-virtual {v0}, Landroid/arch/persistence/room/d$a;->a()[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 416
    if-nez v2, :cond_2

    .line 438
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    :goto_1
    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    :cond_2
    :try_start_5
    array-length v3, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 421
    :try_start_6
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->a()V

    .line 422
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    .line 423
    aget v4, v2, v0

    packed-switch v4, :pswitch_data_0

    .line 422
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 425
    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroid/arch/persistence/room/d;->b(Landroid/arch/persistence/a/b;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 434
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {p1}, Landroid/arch/persistence/a/b;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 438
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 441
    :catch_1
    move-exception v0

    goto :goto_1

    .line 428
    :pswitch_1
    :try_start_9
    invoke-direct {p0, p1, v0}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/a/b;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
