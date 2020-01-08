.class public abstract Landroid/arch/persistence/room/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/f$b;,
        Landroid/arch/persistence/room/f$d;,
        Landroid/arch/persistence/room/f$a;,
        Landroid/arch/persistence/room/f$c;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected volatile mDatabase:Landroid/arch/persistence/a/b;

.field private final mInvalidationTracker:Landroid/arch/persistence/room/d;

.field private mOpenHelper:Landroid/arch/persistence/a/c;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/f;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->createInvalidationTracker()Landroid/arch/persistence/room/d;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/f;->mInvalidationTracker:Landroid/arch/persistence/room/d;

    .line 101
    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/arch/persistence/room/f;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->assertNotMainThread()V

    .line 252
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    .line 253
    iget-object v1, p0, Landroid/arch/persistence/room/f;->mInvalidationTracker:Landroid/arch/persistence/room/d;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/d;->b(Landroid/arch/persistence/a/b;)V

    .line 254
    invoke-interface {v0}, Landroid/arch/persistence/a/b;->a()V

    .line 255
    return-void
.end method

.method public abstract clearAllTables()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public close()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 184
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    :cond_0
    return-void

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/arch/persistence/room/f;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/arch/persistence/a/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->assertNotMainThread()V

    .line 244
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/a/b;->a(Ljava/lang/String;)Landroid/arch/persistence/a/f;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createInvalidationTracker()Landroid/arch/persistence/room/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract createOpenHelper(Landroid/arch/persistence/room/a;)Landroid/arch/persistence/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/b;->b()V

    .line 262
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mInvalidationTracker:Landroid/arch/persistence/room/d;

    invoke-virtual {v0}, Landroid/arch/persistence/room/d;->a()V

    .line 267
    :cond_0
    return-void
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getInvalidationTracker()Landroid/arch/persistence/room/d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mInvalidationTracker:Landroid/arch/persistence/room/d;

    return-object v0
.end method

.method public getOpenHelper()Landroid/arch/persistence/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/b;->d()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/arch/persistence/room/a;)V
    .locals 3
    .param p1    # Landroid/arch/persistence/room/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/f;->createOpenHelper(Landroid/arch/persistence/room/a;)Landroid/arch/persistence/a/c;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 113
    iget-object v1, p1, Landroid/arch/persistence/room/a;->g:Landroid/arch/persistence/room/f$c;

    sget-object v2, Landroid/arch/persistence/room/f$c;->WRITE_AHEAD_LOGGING:Landroid/arch/persistence/room/f$c;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/c;->a(Z)V

    .line 116
    :cond_1
    iget-object v1, p1, Landroid/arch/persistence/room/a;->e:Ljava/util/List;

    iput-object v1, p0, Landroid/arch/persistence/room/f;->mCallbacks:Ljava/util/List;

    .line 117
    iget-boolean v1, p1, Landroid/arch/persistence/room/a;->f:Z

    iput-boolean v1, p0, Landroid/arch/persistence/room/f;->mAllowMainThreadQueries:Z

    .line 118
    iput-boolean v0, p0, Landroid/arch/persistence/room/f;->mWriteAheadLoggingEnabled:Z

    .line 119
    return-void
.end method

.method protected internalInitInvalidationTracker(Landroid/arch/persistence/a/b;)V
    .locals 1
    .param p1    # Landroid/arch/persistence/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 323
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mInvalidationTracker:Landroid/arch/persistence/room/d;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/d;->a(Landroid/arch/persistence/a/b;)V

    .line 324
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mDatabase:Landroid/arch/persistence/a/b;

    .line 174
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/arch/persistence/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->assertNotMainThread()V

    .line 233
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/a/b;->a(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    new-instance v1, Landroid/arch/persistence/a/a;

    invoke-direct {v1, p1, p2}, Landroid/arch/persistence/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/arch/persistence/a/b;->a(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 303
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->endTransaction()V

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in transaction"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 285
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 286
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 290
    return-void

    .line 288
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/arch/persistence/room/f;->mOpenHelper:Landroid/arch/persistence/a/c;

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/b;->c()V

    .line 274
    return-void
.end method
