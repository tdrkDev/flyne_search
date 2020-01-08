.class public Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/f;

.field private final __deletionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/b;

.field private final __insertionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/c;

.field private final __preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetRead:Landroid/arch/persistence/room/j;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    .line 34
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__insertionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/c;

    .line 77
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$2;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__deletionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/b;

    .line 94
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$3;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    .line 101
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$4;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    .line 108
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$5;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    .line 115
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl$6;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    .line 122
    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__deletionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/b;->handleMultiple(Ljava/lang/Iterable;)I

    .line 140
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public deleteExpireData(J)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 226
    const/4 v0, 0x1

    .line 227
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 228
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 229
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 232
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 234
    return-void

    .line 231
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 232
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__insertionAdapterOfNewsLiteTopicEntity:Landroid/arch/persistence/room/c;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/c;->insert(Ljava/lang/Iterable;)V

    .line 129
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public query(I)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v4, "SELECT * FROM topics WHERE newsExposeTime = 0 ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    .line 258
    const-string v4, "SELECT * FROM topics WHERE newsExposeTime = 0 ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 259
    const/4 v4, 0x1

    .line 260
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 263
    :try_start_0
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 264
    const-string v7, "createDate"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 265
    const-string v8, "headImageUrl"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 266
    const-string v9, "label"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 267
    const-string v10, "title"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 268
    const-string v11, "url"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 269
    const-string v12, "cpEntityId"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 270
    const-string v13, "contentId"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 271
    const-string v14, "cpId"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 272
    const-string v15, "newsAddTime"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 273
    const-string v16, "newsReadTime"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 274
    const-string v17, "newsExposeTime"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 275
    const-string v18, "newsChangeTime"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 276
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 279
    new-instance v20, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;

    invoke-direct/range {v20 .. v20}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;-><init>()V

    .line 280
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->type:I

    .line 281
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->createDate:J

    .line 282
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->headImageUrl:Ljava/lang/String;

    .line 283
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->lable:Ljava/lang/String;

    .line 284
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->title:Ljava/lang/String;

    .line 285
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->url:Ljava/lang/String;

    .line 287
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 288
    invoke-virtual/range {v20 .. v21}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 290
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 291
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setContentId(J)V

    .line 293
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 294
    invoke-virtual/range {v20 .. v21}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setCpId(I)V

    .line 296
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 297
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setNewsAddTime(J)V

    .line 299
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 300
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setNewsReadTime(J)V

    .line 302
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 303
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setNewsExposeTime(J)V

    .line 305
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 306
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->setNewsChangeTime(J)V

    .line 307
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 311
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 312
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 311
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 312
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 309
    return-object v19
.end method

.method public setChanged(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 199
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 201
    const/4 v0, 0x1

    .line 202
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 203
    const/4 v0, 0x2

    .line 204
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 205
    const/4 v0, 0x3

    .line 206
    if-nez p5, :cond_0

    .line 207
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 211
    :goto_0
    const/4 v0, 0x4

    .line 212
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 213
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 214
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 217
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 219
    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 217
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setExposed(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 176
    const/4 v0, 0x1

    .line 177
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 178
    const/4 v0, 0x2

    .line 179
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 180
    const/4 v0, 0x3

    .line 181
    if-nez p5, :cond_0

    .line 182
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 186
    :goto_0
    const/4 v0, 0x4

    .line 187
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 188
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 189
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 192
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 194
    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 192
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setRead(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 149
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 151
    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 153
    const/4 v0, 0x2

    .line 154
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 155
    const/4 v0, 0x3

    .line 156
    if-nez p5, :cond_0

    .line 157
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 161
    :goto_0
    const/4 v0, 0x4

    .line 162
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 163
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 164
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 167
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 169
    return-void

    .line 159
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 167
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 238
    const-string v1, "SELECT COUNT(*) FROM topics"

    .line 239
    const-string v1, "SELECT COUNT(*) FROM topics"

    invoke-static {v1, v0}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsFullDatabase_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 243
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 250
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 251
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 248
    return v0

    .line 250
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 251
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method
