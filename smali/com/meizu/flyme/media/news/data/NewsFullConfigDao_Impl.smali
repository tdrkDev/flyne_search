.class public Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/f;

.field private final __insertionAdapterOfNewsFullConfigEntity:Landroid/arch/persistence/room/c;

.field private final __preparedStmtOfDelete:Landroid/arch/persistence/room/j;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    .line 23
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__insertionAdapterOfNewsFullConfigEntity:Landroid/arch/persistence/room/c;

    .line 67
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl$2;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/j;

    .line 74
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 92
    const/4 v0, 0x1

    .line 93
    int-to-long v2, p1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 94
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 95
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 100
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 98
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public insert(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__insertionAdapterOfNewsFullConfigEntity:Landroid/arch/persistence/room/c;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/c;->insert(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public query(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 123
    const-string v0, "SELECT * FROM config WHERE articleChannelId = ? LIMIT 1"

    .line 124
    const-string v0, "SELECT * FROM config WHERE articleChannelId = ? LIMIT 1"

    invoke-static {v0, v4}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 126
    int-to-long v2, p1

    invoke-virtual {v1, v4, v2, v3}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 127
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 129
    :try_start_0
    const-string v0, "articleChannelId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 130
    const-string v0, "config"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 131
    const-string v0, "requestId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 132
    const-string v0, "disId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 133
    const-string v0, "algoVer"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 134
    const-string v0, "mainChannelId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 135
    const-string v0, "subChannelId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 136
    const-string v0, "hasMore"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 138
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;-><init>()V

    .line 140
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->articleChannelId:I

    .line 142
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->configFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->config:Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    .line 144
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->requestId:Ljava/lang/String;

    .line 145
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->disId:Ljava/lang/String;

    .line 146
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->algoVer:Ljava/lang/String;

    .line 147
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->mainChannelId:Ljava/lang/String;

    .line 148
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->subChannelId:Ljava/lang/String;

    .line 149
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;->hasMore:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 153
    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    const-string v1, "SELECT COUNT(*) FROM config"

    .line 105
    const-string v1, "SELECT COUNT(*) FROM config"

    invoke-static {v1, v0}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullConfigDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 109
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 114
    return v0

    .line 116
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method
