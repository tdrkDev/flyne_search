.class public Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;
.super Lcom/meizu/flyme/media/news/data/NewsFullDatabase;
.source "SourceFile"


# instance fields
.field private volatile _newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

.field private volatile _newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

.field private volatile _newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

.field private volatile _newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;Landroid/arch/persistence/a/b;)Landroid/arch/persistence/a/b;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mDatabase:Landroid/arch/persistence/a/b;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;Landroid/arch/persistence/a/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/a/b;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    .line 296
    :goto_0
    return-object v0

    .line 292
    :cond_0
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;

    monitor-exit p0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->assertNotMainThread()V

    .line 256
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->getOpenHelper()Landroid/arch/persistence/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v1

    .line 258
    :try_start_0
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->beginTransaction()V

    .line 259
    const-string v0, "DELETE FROM `articles`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 260
    const-string v0, "DELETE FROM `manual_articles`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 261
    const-string v0, "DELETE FROM `topics`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 262
    const-string v0, "DELETE FROM `config`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->endTransaction()V

    .line 266
    const-string v0, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-interface {v1}, Landroid/arch/persistence/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "VACUUM"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void

    .line 265
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;->endTransaction()V

    .line 266
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v1, v2}, Landroid/arch/persistence/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-interface {v1}, Landroid/arch/persistence/a/b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    const-string v2, "VACUUM"

    invoke-interface {v1, v2}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method public configDao()Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    .line 324
    :goto_0
    return-object v0

    .line 320
    :cond_0
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullConfigDao:Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;

    monitor-exit p0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/d;
    .locals 4

    .prologue
    .line 250
    new-instance v0, Landroid/arch/persistence/room/d;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "articles"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "manual_articles"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "topics"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "config"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/d;-><init>(Landroid/arch/persistence/room/f;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/a;)Landroid/arch/persistence/a/c;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Landroid/arch/persistence/room/h;

    new-instance v1, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;I)V

    const-string v2, "1fcef3731cb08da89e432d2dc14d7df8"

    const-string v3, "a24834a9e3cb8126987eb31aea8ee364"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/h;-><init>(Landroid/arch/persistence/room/a;Landroid/arch/persistence/room/h$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p1, Landroid/arch/persistence/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/a/c$b;->a(Landroid/content/Context;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/a;->c:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v2}, Landroid/arch/persistence/a/c$b$a;->a(Ljava/lang/String;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Landroid/arch/persistence/a/c$b$a;->a(Landroid/arch/persistence/a/c$a;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/arch/persistence/a/c$b$a;->a()Landroid/arch/persistence/a/c$b;

    move-result-object v0

    .line 244
    iget-object v1, p1, Landroid/arch/persistence/room/a;->a:Landroid/arch/persistence/a/c$c;

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/c$c;->a(Landroid/arch/persistence/a/c$b;)Landroid/arch/persistence/a/c;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    .line 282
    :goto_0
    return-object v0

    .line 278
    :cond_0
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsFullManualArticleDao:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;

    monitor-exit p0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    .line 310
    :goto_0
    return-object v0

    .line 306
    :cond_0
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    monitor-exit p0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
