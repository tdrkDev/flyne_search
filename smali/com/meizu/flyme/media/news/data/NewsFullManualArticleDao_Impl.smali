.class public Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/f;

.field private final __deletionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/b;

.field private final __insertionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/c;

.field private final __preparedStmtOfDeleteAll:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetRead:Landroid/arch/persistence/room/j;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    .line 36
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__insertionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/c;

    .line 184
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$2;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__deletionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/b;

    .line 201
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$3;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/j;

    .line 208
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$4;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    .line 215
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$5;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    .line 222
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$6;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    .line 229
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$7;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    .line 236
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
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__deletionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/b;->handleMultiple(Ljava/lang/Iterable;)I

    .line 254
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public deleteAll(I)V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 263
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 265
    const/4 v0, 0x1

    .line 266
    int-to-long v2, p1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 267
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 268
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 271
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 273
    return-void

    .line 270
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 271
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteAll:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public deleteExpireData(J)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 353
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 355
    const/4 v0, 0x1

    .line 356
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 357
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 358
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 361
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 363
    return-void

    .line 360
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 361
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

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
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__insertionAdapterOfNewsFullManualArticleEntity:Landroid/arch/persistence/room/c;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/c;->insert(Ljava/lang/Iterable;)V

    .line 243
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public query(II)Ljava/util/List;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY manualPosition ASC LIMIT ?"

    .line 526
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY manualPosition ASC LIMIT ?"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 527
    const/4 v4, 0x1

    .line 528
    move/from16 v0, p2

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 529
    const/4 v4, 0x2

    .line 530
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 533
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 534
    const-string v7, "type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 535
    const-string v8, "title"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 536
    const-string v9, "subTitle"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 537
    const-string v10, "keyWords"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 538
    const-string v11, "keyWords_freq"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 539
    const-string v12, "videoDuration"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 540
    const-string v13, "desc"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 541
    const-string v14, "category"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 542
    const-string v15, "categoryId"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 543
    const-string v16, "tag"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 544
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 545
    const-string v18, "h5Url"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 546
    const-string v19, "json_url"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 547
    const-string v20, "share_url"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 548
    const-string v21, "status"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 549
    const-string v22, "author"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 550
    const-string v23, "authorId"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 551
    const-string v24, "ruleId"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 552
    const-string v25, "ruleSign"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 553
    const-string v26, "viewCount"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 554
    const-string v27, "commentCount"

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 555
    const-string v28, "shareCount"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 556
    const-string v29, "collectCount"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 557
    const-string v30, "diggCount"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 558
    const-string v31, "buryCount"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 559
    const-string v32, "publishTime"

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 560
    const-string v33, "createTime"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 561
    const-string v34, "cp_recom_time"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 562
    const-string v35, "release_time"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 563
    const-string v36, "update_time"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 564
    const-string v37, "extend"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 565
    const-string v38, "content"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 566
    const-string v39, "contentSourceId"

    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 567
    const-string v40, "requestId"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 568
    const-string v41, "suggestShowType"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 569
    const-string v42, "manualShowType"

    move-object/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 570
    const-string v43, "scheme"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 571
    const-string v44, "manualPosition"

    move-object/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 572
    const-string v45, "cpRecomPos"

    move-object/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 573
    const-string v46, "userInfo"

    move-object/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 574
    const-string v47, "imgInfo"

    move-object/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 575
    const-string v48, "articleChannelId"

    move-object/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 576
    const-string v49, "cpEntityId"

    move-object/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 577
    const-string v50, "contentId"

    move-object/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 578
    const-string v51, "cpId"

    move-object/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 579
    const-string v52, "newsAddTime"

    move-object/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 580
    const-string v53, "newsReadTime"

    move-object/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 581
    const-string v54, "newsExposeTime"

    move-object/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 582
    const-string v55, "newsChangeTime"

    move-object/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 583
    new-instance v56, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v57

    invoke-direct/range {v56 .. v57}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v57

    if-eqz v57, :cond_0

    .line 586
    new-instance v57, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-direct/range {v57 .. v57}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;-><init>()V

    .line 587
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 588
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    .line 589
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    .line 590
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    .line 591
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    .line 592
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 593
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    .line 594
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    .line 595
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    .line 596
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    .line 597
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    .line 598
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    .line 599
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    .line 600
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    .line 601
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    .line 602
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->status:I

    .line 603
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    .line 604
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->authorId:I

    .line 605
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleId:I

    .line 606
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    .line 607
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    .line 608
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->commentCount:I

    .line 609
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->shareCount:I

    .line 610
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->collectCount:I

    .line 611
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->diggCount:I

    .line 612
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->buryCount:I

    .line 613
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    .line 614
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    .line 615
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cp_recom_time:J

    .line 616
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->release_time:J

    .line 617
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->update_time:J

    .line 618
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    .line 619
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    .line 620
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->contentSourceId:I

    .line 621
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    .line 622
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->suggestShowType:I

    .line 623
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    .line 624
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    .line 625
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    .line 626
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cpRecomPos:J

    .line 628
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 629
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 631
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 632
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 633
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    .line 635
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 636
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 638
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 639
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setContentId(J)V

    .line 641
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 642
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpId(I)V

    .line 644
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 645
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsAddTime(J)V

    .line 647
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 648
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsReadTime(J)V

    .line 650
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 651
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsExposeTime(J)V

    .line 653
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 654
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsChangeTime(J)V

    .line 655
    invoke-interface/range {v56 .. v57}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 659
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 660
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 659
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 660
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 657
    return-object v56
.end method

.method public queryAll(I)Ljava/util/List;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY manualPosition ASC"

    .line 387
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY manualPosition ASC"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 388
    const/4 v4, 0x1

    .line 389
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 393
    const-string v7, "type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 394
    const-string v8, "title"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 395
    const-string v9, "subTitle"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 396
    const-string v10, "keyWords"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 397
    const-string v11, "keyWords_freq"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 398
    const-string v12, "videoDuration"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 399
    const-string v13, "desc"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 400
    const-string v14, "category"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 401
    const-string v15, "categoryId"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 402
    const-string v16, "tag"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 403
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 404
    const-string v18, "h5Url"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 405
    const-string v19, "json_url"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 406
    const-string v20, "share_url"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 407
    const-string v21, "status"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 408
    const-string v22, "author"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 409
    const-string v23, "authorId"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 410
    const-string v24, "ruleId"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 411
    const-string v25, "ruleSign"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 412
    const-string v26, "viewCount"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 413
    const-string v27, "commentCount"

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 414
    const-string v28, "shareCount"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 415
    const-string v29, "collectCount"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 416
    const-string v30, "diggCount"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 417
    const-string v31, "buryCount"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 418
    const-string v32, "publishTime"

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 419
    const-string v33, "createTime"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 420
    const-string v34, "cp_recom_time"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 421
    const-string v35, "release_time"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 422
    const-string v36, "update_time"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 423
    const-string v37, "extend"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 424
    const-string v38, "content"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 425
    const-string v39, "contentSourceId"

    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 426
    const-string v40, "requestId"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 427
    const-string v41, "suggestShowType"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 428
    const-string v42, "manualShowType"

    move-object/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 429
    const-string v43, "scheme"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 430
    const-string v44, "manualPosition"

    move-object/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 431
    const-string v45, "cpRecomPos"

    move-object/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 432
    const-string v46, "userInfo"

    move-object/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 433
    const-string v47, "imgInfo"

    move-object/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 434
    const-string v48, "articleChannelId"

    move-object/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 435
    const-string v49, "cpEntityId"

    move-object/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 436
    const-string v50, "contentId"

    move-object/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 437
    const-string v51, "cpId"

    move-object/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 438
    const-string v52, "newsAddTime"

    move-object/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 439
    const-string v53, "newsReadTime"

    move-object/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 440
    const-string v54, "newsExposeTime"

    move-object/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 441
    const-string v55, "newsChangeTime"

    move-object/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 442
    new-instance v56, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v57

    invoke-direct/range {v56 .. v57}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v57

    if-eqz v57, :cond_0

    .line 445
    new-instance v57, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-direct/range {v57 .. v57}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;-><init>()V

    .line 446
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 447
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    .line 448
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    .line 449
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    .line 450
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    .line 451
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 452
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    .line 453
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    .line 454
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    .line 455
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    .line 456
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    .line 457
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    .line 458
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    .line 459
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    .line 460
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    .line 461
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->status:I

    .line 462
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    .line 463
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->authorId:I

    .line 464
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleId:I

    .line 465
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    .line 466
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    .line 467
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->commentCount:I

    .line 468
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->shareCount:I

    .line 469
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->collectCount:I

    .line 470
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->diggCount:I

    .line 471
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->buryCount:I

    .line 472
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    .line 473
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    .line 474
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cp_recom_time:J

    .line 475
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->release_time:J

    .line 476
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->update_time:J

    .line 477
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    .line 478
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    .line 479
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->contentSourceId:I

    .line 480
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    .line 481
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->suggestShowType:I

    .line 482
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    .line 483
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    .line 484
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    .line 485
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cpRecomPos:J

    .line 487
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 488
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 490
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 491
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 492
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    .line 494
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 495
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 497
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 498
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setContentId(J)V

    .line 500
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 501
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpId(I)V

    .line 503
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 504
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsAddTime(J)V

    .line 506
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 507
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsReadTime(J)V

    .line 509
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 510
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsExposeTime(J)V

    .line 512
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 513
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsChangeTime(J)V

    .line 514
    invoke-interface/range {v56 .. v57}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 518
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 519
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 518
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 519
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 516
    return-object v56
.end method

.method public queryExposed(I)Ljava/util/List;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? AND newsExposeTime > 0"

    .line 667
    const-string v4, "SELECT * FROM manual_articles WHERE articleChannelId = ? AND newsExposeTime > 0"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 668
    const/4 v4, 0x1

    .line 669
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 672
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 673
    const-string v7, "type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 674
    const-string v8, "title"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 675
    const-string v9, "subTitle"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 676
    const-string v10, "keyWords"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 677
    const-string v11, "keyWords_freq"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 678
    const-string v12, "videoDuration"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 679
    const-string v13, "desc"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 680
    const-string v14, "category"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 681
    const-string v15, "categoryId"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 682
    const-string v16, "tag"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 683
    const-string v17, "source"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 684
    const-string v18, "h5Url"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 685
    const-string v19, "json_url"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 686
    const-string v20, "share_url"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 687
    const-string v21, "status"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 688
    const-string v22, "author"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 689
    const-string v23, "authorId"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 690
    const-string v24, "ruleId"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 691
    const-string v25, "ruleSign"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 692
    const-string v26, "viewCount"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 693
    const-string v27, "commentCount"

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 694
    const-string v28, "shareCount"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 695
    const-string v29, "collectCount"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 696
    const-string v30, "diggCount"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 697
    const-string v31, "buryCount"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 698
    const-string v32, "publishTime"

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 699
    const-string v33, "createTime"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 700
    const-string v34, "cp_recom_time"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 701
    const-string v35, "release_time"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 702
    const-string v36, "update_time"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 703
    const-string v37, "extend"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 704
    const-string v38, "content"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 705
    const-string v39, "contentSourceId"

    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 706
    const-string v40, "requestId"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 707
    const-string v41, "suggestShowType"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 708
    const-string v42, "manualShowType"

    move-object/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 709
    const-string v43, "scheme"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 710
    const-string v44, "manualPosition"

    move-object/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 711
    const-string v45, "cpRecomPos"

    move-object/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 712
    const-string v46, "userInfo"

    move-object/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 713
    const-string v47, "imgInfo"

    move-object/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 714
    const-string v48, "articleChannelId"

    move-object/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 715
    const-string v49, "cpEntityId"

    move-object/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 716
    const-string v50, "contentId"

    move-object/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 717
    const-string v51, "cpId"

    move-object/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 718
    const-string v52, "newsAddTime"

    move-object/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 719
    const-string v53, "newsReadTime"

    move-object/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 720
    const-string v54, "newsExposeTime"

    move-object/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 721
    const-string v55, "newsChangeTime"

    move-object/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 722
    new-instance v56, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v57

    invoke-direct/range {v56 .. v57}, Ljava/util/ArrayList;-><init>(I)V

    .line 723
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v57

    if-eqz v57, :cond_0

    .line 725
    new-instance v57, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-direct/range {v57 .. v57}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;-><init>()V

    .line 726
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 727
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    .line 728
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    .line 729
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    .line 730
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    .line 731
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 732
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    .line 733
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    .line 734
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    .line 735
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    .line 736
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    .line 737
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    .line 738
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    .line 739
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    .line 740
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    .line 741
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->status:I

    .line 742
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    .line 743
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->authorId:I

    .line 744
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleId:I

    .line 745
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    .line 746
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    .line 747
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->commentCount:I

    .line 748
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->shareCount:I

    .line 749
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->collectCount:I

    .line 750
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->diggCount:I

    .line 751
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->buryCount:I

    .line 752
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    .line 753
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    .line 754
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cp_recom_time:J

    .line 755
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->release_time:J

    .line 756
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->update_time:J

    .line 757
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    .line 758
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    .line 759
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->contentSourceId:I

    .line 760
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    .line 761
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->suggestShowType:I

    .line 762
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    .line 763
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    .line 764
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    .line 765
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cpRecomPos:J

    .line 767
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 768
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 770
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 771
    invoke-static/range {v58 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 772
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    .line 774
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 775
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 777
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 778
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setContentId(J)V

    .line 780
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 781
    invoke-virtual/range {v57 .. v58}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpId(I)V

    .line 783
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 784
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsAddTime(J)V

    .line 786
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 787
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsReadTime(J)V

    .line 789
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 790
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsExposeTime(J)V

    .line 792
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 793
    invoke-virtual/range {v57 .. v59}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsChangeTime(J)V

    .line 794
    invoke-interface/range {v56 .. v57}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 798
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 799
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 798
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 799
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 796
    return-object v56
.end method

.method public queryNewest(I)Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;
    .locals 55

    .prologue
    .line 805
    const-string v2, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY newsAddTime DESC LIMIT 1"

    .line 806
    const-string v2, "SELECT * FROM manual_articles WHERE articleChannelId = ? ORDER BY newsAddTime DESC LIMIT 1"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v3

    .line 807
    const/4 v2, 0x1

    .line 808
    move/from16 v0, p1

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v4

    .line 811
    :try_start_0
    const-string v2, "entityUniqId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 812
    const-string v2, "type"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 813
    const-string v2, "title"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 814
    const-string v2, "subTitle"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 815
    const-string v2, "keyWords"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 816
    const-string v2, "keyWords_freq"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 817
    const-string v2, "videoDuration"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 818
    const-string v2, "desc"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 819
    const-string v2, "category"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 820
    const-string v2, "categoryId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 821
    const-string v2, "tag"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 822
    const-string v2, "source"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 823
    const-string v2, "h5Url"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 824
    const-string v2, "json_url"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 825
    const-string v2, "share_url"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 826
    const-string v2, "status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 827
    const-string v2, "author"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 828
    const-string v2, "authorId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 829
    const-string v2, "ruleId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 830
    const-string v2, "ruleSign"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 831
    const-string v2, "viewCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 832
    const-string v2, "commentCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 833
    const-string v2, "shareCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 834
    const-string v2, "collectCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 835
    const-string v2, "diggCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 836
    const-string v2, "buryCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 837
    const-string v2, "publishTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 838
    const-string v2, "createTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 839
    const-string v2, "cp_recom_time"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 840
    const-string v2, "release_time"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 841
    const-string v2, "update_time"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 842
    const-string v2, "extend"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 843
    const-string v2, "content"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 844
    const-string v2, "contentSourceId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 845
    const-string v2, "requestId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 846
    const-string v2, "suggestShowType"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 847
    const-string v2, "manualShowType"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 848
    const-string v2, "scheme"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 849
    const-string v2, "manualPosition"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 850
    const-string v2, "cpRecomPos"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 851
    const-string v2, "userInfo"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 852
    const-string v2, "imgInfo"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 853
    const-string v2, "articleChannelId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 854
    const-string v2, "cpEntityId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 855
    const-string v2, "contentId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 856
    const-string v2, "cpId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 857
    const-string v2, "newsAddTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 858
    const-string v2, "newsReadTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 859
    const-string v2, "newsExposeTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 860
    const-string v2, "newsChangeTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 862
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    new-instance v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;

    invoke-direct {v2}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;-><init>()V

    .line 864
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 865
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->type:I

    .line 866
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->title:Ljava/lang/String;

    .line 867
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->subTitle:Ljava/lang/String;

    .line 868
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords:Ljava/lang/String;

    .line 869
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 870
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->videoDuration:I

    .line 871
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->desc:Ljava/lang/String;

    .line 872
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->category:Ljava/lang/String;

    .line 873
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->categoryId:I

    .line 874
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->tag:Ljava/lang/String;

    .line 875
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->source:Ljava/lang/String;

    .line 876
    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->h5Url:Ljava/lang/String;

    .line 877
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->json_url:Ljava/lang/String;

    .line 878
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->share_url:Ljava/lang/String;

    .line 879
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->status:I

    .line 880
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->author:Ljava/lang/String;

    .line 881
    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->authorId:I

    .line 882
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleId:I

    .line 883
    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->ruleSign:Ljava/lang/String;

    .line 884
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->viewCount:I

    .line 885
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->commentCount:I

    .line 886
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->shareCount:I

    .line 887
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->collectCount:I

    .line 888
    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->diggCount:I

    .line 889
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->buryCount:I

    .line 890
    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->publishTime:J

    .line 891
    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->createTime:J

    .line 892
    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cp_recom_time:J

    .line 893
    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->release_time:J

    .line 894
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->update_time:J

    .line 895
    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->extend:Ljava/lang/String;

    .line 896
    move/from16 v0, v37

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->content:Ljava/lang/String;

    .line 897
    move/from16 v0, v38

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->contentSourceId:I

    .line 898
    move/from16 v0, v39

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->requestId:Ljava/lang/String;

    .line 899
    move/from16 v0, v40

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->suggestShowType:I

    .line 900
    move/from16 v0, v41

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualShowType:I

    .line 901
    move/from16 v0, v42

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->scheme:Ljava/lang/String;

    .line 902
    move/from16 v0, v43

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->manualPosition:I

    .line 903
    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->cpRecomPos:J

    .line 905
    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 906
    invoke-static {v5}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 908
    move/from16 v0, v46

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v5}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 910
    move/from16 v0, v47

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->articleChannelId:I

    .line 912
    move/from16 v0, v48

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 913
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 915
    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 916
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setContentId(J)V

    .line 918
    move/from16 v0, v50

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 919
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setCpId(I)V

    .line 921
    move/from16 v0, v51

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 922
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsAddTime(J)V

    .line 924
    move/from16 v0, v52

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 925
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsReadTime(J)V

    .line 927
    move/from16 v0, v53

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 928
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsExposeTime(J)V

    .line 930
    move/from16 v0, v54

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 931
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;->setNewsChangeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 938
    invoke-virtual {v3}, Landroid/arch/persistence/room/i;->b()V

    .line 935
    return-object v2

    .line 933
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 938
    invoke-virtual {v3}, Landroid/arch/persistence/room/i;->b()V

    throw v2
.end method

.method public setChanged(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 328
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 330
    const/4 v0, 0x1

    .line 331
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 332
    const/4 v0, 0x2

    .line 333
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 334
    const/4 v0, 0x3

    .line 335
    if-nez p5, :cond_0

    .line 336
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 340
    :goto_0
    const/4 v0, 0x4

    .line 341
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 342
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 343
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 346
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 348
    return-void

    .line 338
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 346
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setExposed(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 305
    const/4 v0, 0x1

    .line 306
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 307
    const/4 v0, 0x2

    .line 308
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 309
    const/4 v0, 0x3

    .line 310
    if-nez p5, :cond_0

    .line 311
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 315
    :goto_0
    const/4 v0, 0x4

    .line 316
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 317
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 318
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 321
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 323
    return-void

    .line 313
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 321
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setRead(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 278
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 280
    const/4 v0, 0x1

    .line 281
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 282
    const/4 v0, 0x2

    .line 283
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 284
    const/4 v0, 0x3

    .line 285
    if-nez p5, :cond_0

    .line 286
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 290
    :goto_0
    const/4 v0, 0x4

    .line 291
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 292
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 293
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 296
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 298
    return-void

    .line 288
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 296
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 367
    const-string v1, "SELECT COUNT(*) FROM manual_articles"

    .line 368
    const-string v1, "SELECT COUNT(*) FROM manual_articles"

    invoke-static {v1, v0}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 369
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 372
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 379
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 380
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 377
    return v0

    .line 379
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 380
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method
