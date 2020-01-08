.class public Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;
.super Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;
.source "SourceFile"


# instance fields
.field private volatile _newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

.field private volatile _newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;Landroid/arch/persistence/a/b;)Landroid/arch/persistence/a/b;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mDatabase:Landroid/arch/persistence/a/b;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;Landroid/arch/persistence/a/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/a/b;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public articleDao()Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

    .line 188
    :goto_0
    return-object v0

    .line 184
    :cond_0
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteArticleDao:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;

    monitor-exit p0

    goto :goto_0

    .line 189
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
    .line 163
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->assertNotMainThread()V

    .line 164
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->getOpenHelper()Landroid/arch/persistence/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/a/c;->a()Landroid/arch/persistence/a/b;

    move-result-object v1

    .line 166
    :try_start_0
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->beginTransaction()V

    .line 167
    const-string v0, "DELETE FROM `articles`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 168
    const-string v0, "DELETE FROM `topics`"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 169
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->endTransaction()V

    .line 172
    const-string v0, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-interface {v1}, Landroid/arch/persistence/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "VACUUM"

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;->endTransaction()V

    .line 172
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v1, v2}, Landroid/arch/persistence/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-interface {v1}, Landroid/arch/persistence/a/b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const-string v2, "VACUUM"

    invoke-interface {v1, v2}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/d;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Landroid/arch/persistence/room/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "articles"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "topics"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/d;-><init>(Landroid/arch/persistence/room/f;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/a;)Landroid/arch/persistence/a/c;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Landroid/arch/persistence/room/h;

    new-instance v1, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;I)V

    const-string v2, "190b73b653766bea7125455bc9ae6dc5"

    const-string v3, "1a2c113dd1d732a521b168bac4de804c"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/h;-><init>(Landroid/arch/persistence/room/a;Landroid/arch/persistence/room/h$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p1, Landroid/arch/persistence/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/a/c$b;->a(Landroid/content/Context;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/a;->c:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v2}, Landroid/arch/persistence/a/c$b$a;->a(Ljava/lang/String;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Landroid/arch/persistence/a/c$b$a;->a(Landroid/arch/persistence/a/c$a;)Landroid/arch/persistence/a/c$b$a;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/arch/persistence/a/c$b$a;->a()Landroid/arch/persistence/a/c$b;

    move-result-object v0

    .line 152
    iget-object v1, p1, Landroid/arch/persistence/room/a;->a:Landroid/arch/persistence/a/c$c;

    invoke-interface {v1, v0}, Landroid/arch/persistence/a/c$c;->a(Landroid/arch/persistence/a/c$b;)Landroid/arch/persistence/a/c;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    .line 202
    :goto_0
    return-object v0

    .line 198
    :cond_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;-><init>(Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase_Impl;->_newsLiteTopicDao:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;

    monitor-exit p0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
