.class public Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/f;

.field private final __deletionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/b;

.field private final __insertionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/c;

.field private final __preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetRead:Landroid/arch/persistence/room/j;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    .line 32
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__insertionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/c;

    .line 176
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$2;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__deletionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/b;

    .line 193
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$3;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    .line 200
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$4;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    .line 207
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$5;-><init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    .line 214
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
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__deletionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/b;->handleMultiple(Ljava/lang/Iterable;)I

    .line 232
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__insertionAdapterOfNewsLiteArticleEntity:Landroid/arch/persistence/room/c;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/c;->insert(Ljava/lang/Iterable;)V

    .line 221
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public query(I)Ljava/util/List;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    const-string v4, "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    .line 335
    const-string v4, "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 336
    const/4 v4, 0x1

    .line 337
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 341
    const-string v7, "type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 342
    const-string v8, "title"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 343
    const-string v9, "subTitle"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 344
    const-string v10, "keyWords"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 345
    const-string v11, "keywordsFreq"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 346
    const-string v12, "videoDuration"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 347
    const-string v13, "desc"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 348
    const-string v14, "category"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 349
    const-string v15, "tag"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 350
    const-string v16, "source"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 351
    const-string v17, "h5Url"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 352
    const-string v18, "jsonUrl"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 353
    const-string v19, "shareUrl"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 354
    const-string v20, "status"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 355
    const-string v21, "author"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 356
    const-string v22, "authorId"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 357
    const-string v23, "ruleId"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 358
    const-string v24, "ruleSign"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 359
    const-string v25, "pv"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 360
    const-string v26, "viewCount"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 361
    const-string v27, "buryCount"

    move-object/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 362
    const-string v28, "diggCount"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 363
    const-string v29, "shareCount"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 364
    const-string v30, "collectCount"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 365
    const-string v31, "commentCount"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 366
    const-string v32, "publishTime"

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 367
    const-string v33, "releaseTime"

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 368
    const-string v34, "cpRecomTime"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 369
    const-string v35, "createTime"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 370
    const-string v36, "updateTime"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 371
    const-string v37, "extend"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 372
    const-string v38, "content"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 373
    const-string v39, "contentSourceId"

    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 374
    const-string v40, "requestId"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 375
    const-string v41, "suggestShowType"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 376
    const-string v42, "scheme"

    move-object/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 377
    const-string v43, "userInfo"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 378
    const-string v44, "imgInfo"

    move-object/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 379
    const-string v45, "cpEntityId"

    move-object/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 380
    const-string v46, "contentId"

    move-object/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 381
    const-string v47, "cpId"

    move-object/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 382
    const-string v48, "newsAddTime"

    move-object/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 383
    const-string v49, "newsReadTime"

    move-object/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 384
    const-string v50, "newsExposeTime"

    move-object/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 385
    const-string v51, "newsChangeTime"

    move-object/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 386
    new-instance v52, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v53

    invoke-direct/range {v52 .. v53}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v53

    if-eqz v53, :cond_0

    .line 389
    new-instance v53, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;

    invoke-direct/range {v53 .. v53}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;-><init>()V

    .line 390
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 391
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->type:I

    .line 392
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->title:Ljava/lang/String;

    .line 393
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->subTitle:Ljava/lang/String;

    .line 394
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keyWords:Ljava/lang/String;

    .line 395
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keywordsFreq:Ljava/lang/String;

    .line 396
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->videoDuration:I

    .line 397
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->desc:Ljava/lang/String;

    .line 398
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->category:Ljava/lang/String;

    .line 399
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->tag:Ljava/lang/String;

    .line 400
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->source:Ljava/lang/String;

    .line 401
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->h5Url:Ljava/lang/String;

    .line 402
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->jsonUrl:Ljava/lang/String;

    .line 403
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareUrl:Ljava/lang/String;

    .line 404
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->status:I

    .line 405
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->author:Ljava/lang/String;

    .line 406
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->authorId:I

    .line 407
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleId:I

    .line 408
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleSign:Ljava/lang/String;

    .line 409
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->pv:I

    .line 410
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->viewCount:I

    .line 411
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->buryCount:I

    .line 412
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->diggCount:I

    .line 413
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareCount:I

    .line 414
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->collectCount:I

    .line 415
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->commentCount:I

    .line 416
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->publishTime:J

    .line 417
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->releaseTime:J

    .line 418
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->cpRecomTime:J

    .line 419
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->createTime:J

    .line 420
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->updateTime:J

    .line 421
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->extend:Ljava/lang/String;

    .line 422
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->content:Ljava/lang/String;

    .line 423
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->contentSourceId:I

    .line 424
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->requestId:Ljava/lang/String;

    .line 425
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->suggestShowType:I

    .line 426
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->scheme:Ljava/lang/String;

    .line 428
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 429
    invoke-static/range {v54 .. v54}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    .line 431
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 432
    invoke-static/range {v54 .. v54}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    .line 434
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 435
    invoke-virtual/range {v53 .. v54}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 437
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 438
    invoke-virtual/range {v53 .. v55}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setContentId(J)V

    .line 440
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 441
    invoke-virtual/range {v53 .. v54}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setCpId(I)V

    .line 443
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 444
    invoke-virtual/range {v53 .. v55}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsAddTime(J)V

    .line 446
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 447
    invoke-virtual/range {v53 .. v55}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsReadTime(J)V

    .line 449
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 450
    invoke-virtual/range {v53 .. v55}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsExposeTime(J)V

    .line 452
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 453
    invoke-virtual/range {v53 .. v55}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsChangeTime(J)V

    .line 454
    invoke-interface/range {v52 .. v53}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 458
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 459
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 458
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 459
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 456
    return-object v52
.end method

.method public queryNewest()Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;
    .locals 51

    .prologue
    .line 465
    const-string v2, "SELECT * FROM articles ORDER BY newsAddTime DESC LIMIT 1"

    .line 466
    const-string v2, "SELECT * FROM articles ORDER BY newsAddTime DESC LIMIT 1"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v3

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v4

    .line 469
    :try_start_0
    const-string v2, "entityUniqId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 470
    const-string v2, "type"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 471
    const-string v2, "title"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 472
    const-string v2, "subTitle"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 473
    const-string v2, "keyWords"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 474
    const-string v2, "keywordsFreq"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 475
    const-string v2, "videoDuration"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 476
    const-string v2, "desc"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 477
    const-string v2, "category"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 478
    const-string v2, "tag"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 479
    const-string v2, "source"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 480
    const-string v2, "h5Url"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 481
    const-string v2, "jsonUrl"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 482
    const-string v2, "shareUrl"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 483
    const-string v2, "status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 484
    const-string v2, "author"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 485
    const-string v2, "authorId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 486
    const-string v2, "ruleId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 487
    const-string v2, "ruleSign"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 488
    const-string v2, "pv"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 489
    const-string v2, "viewCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 490
    const-string v2, "buryCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 491
    const-string v2, "diggCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 492
    const-string v2, "shareCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 493
    const-string v2, "collectCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 494
    const-string v2, "commentCount"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 495
    const-string v2, "publishTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 496
    const-string v2, "releaseTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 497
    const-string v2, "cpRecomTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 498
    const-string v2, "createTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 499
    const-string v2, "updateTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 500
    const-string v2, "extend"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 501
    const-string v2, "content"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 502
    const-string v2, "contentSourceId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 503
    const-string v2, "requestId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 504
    const-string v2, "suggestShowType"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 505
    const-string v2, "scheme"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 506
    const-string v2, "userInfo"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 507
    const-string v2, "imgInfo"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 508
    const-string v2, "cpEntityId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 509
    const-string v2, "contentId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 510
    const-string v2, "cpId"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 511
    const-string v2, "newsAddTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 512
    const-string v2, "newsReadTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 513
    const-string v2, "newsExposeTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 514
    const-string v2, "newsChangeTime"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 516
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    new-instance v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;

    invoke-direct {v2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;-><init>()V

    .line 518
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 519
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->type:I

    .line 520
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->title:Ljava/lang/String;

    .line 521
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->subTitle:Ljava/lang/String;

    .line 522
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keyWords:Ljava/lang/String;

    .line 523
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->keywordsFreq:Ljava/lang/String;

    .line 524
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->videoDuration:I

    .line 525
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->desc:Ljava/lang/String;

    .line 526
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->category:Ljava/lang/String;

    .line 527
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->tag:Ljava/lang/String;

    .line 528
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->source:Ljava/lang/String;

    .line 529
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->h5Url:Ljava/lang/String;

    .line 530
    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->jsonUrl:Ljava/lang/String;

    .line 531
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareUrl:Ljava/lang/String;

    .line 532
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->status:I

    .line 533
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->author:Ljava/lang/String;

    .line 534
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->authorId:I

    .line 535
    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleId:I

    .line 536
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->ruleSign:Ljava/lang/String;

    .line 537
    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->pv:I

    .line 538
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->viewCount:I

    .line 539
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->buryCount:I

    .line 540
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->diggCount:I

    .line 541
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->shareCount:I

    .line 542
    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->collectCount:I

    .line 543
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->commentCount:I

    .line 544
    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->publishTime:J

    .line 545
    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->releaseTime:J

    .line 546
    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->cpRecomTime:J

    .line 547
    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->createTime:J

    .line 548
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->updateTime:J

    .line 549
    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->extend:Ljava/lang/String;

    .line 550
    move/from16 v0, v37

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->content:Ljava/lang/String;

    .line 551
    move/from16 v0, v38

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->contentSourceId:I

    .line 552
    move/from16 v0, v39

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->requestId:Ljava/lang/String;

    .line 553
    move/from16 v0, v40

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->suggestShowType:I

    .line 554
    move/from16 v0, v41

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->scheme:Ljava/lang/String;

    .line 556
    move/from16 v0, v42

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-static {v5}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    .line 559
    move/from16 v0, v43

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-static {v5}, Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    .line 562
    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 563
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 565
    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 566
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setContentId(J)V

    .line 568
    move/from16 v0, v46

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 569
    invoke-virtual {v2, v5}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setCpId(I)V

    .line 571
    move/from16 v0, v47

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 572
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsAddTime(J)V

    .line 574
    move/from16 v0, v48

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 575
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsReadTime(J)V

    .line 577
    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 578
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsExposeTime(J)V

    .line 580
    move/from16 v0, v50

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 581
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->setNewsChangeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 588
    invoke-virtual {v3}, Landroid/arch/persistence/room/i;->b()V

    .line 585
    return-object v2

    .line 583
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 588
    invoke-virtual {v3}, Landroid/arch/persistence/room/i;->b()V

    throw v2
.end method

.method public setChanged(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 291
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 293
    const/4 v0, 0x1

    .line 294
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 295
    const/4 v0, 0x2

    .line 296
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 297
    const/4 v0, 0x3

    .line 298
    if-nez p5, :cond_0

    .line 299
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 303
    :goto_0
    const/4 v0, 0x4

    .line 304
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 305
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 306
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 309
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 311
    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 309
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setExposed(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 268
    const/4 v0, 0x1

    .line 269
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 270
    const/4 v0, 0x2

    .line 271
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 272
    const/4 v0, 0x3

    .line 273
    if-nez p5, :cond_0

    .line 274
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 278
    :goto_0
    const/4 v0, 0x4

    .line 279
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 280
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 281
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 284
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 286
    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 284
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setRead(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 241
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 243
    const/4 v0, 0x1

    .line 244
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 245
    const/4 v0, 0x2

    .line 246
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 247
    const/4 v0, 0x3

    .line 248
    if-nez p5, :cond_0

    .line 249
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 253
    :goto_0
    const/4 v0, 0x4

    .line 254
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 255
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 256
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 259
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 261
    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 259
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 315
    const-string v1, "SELECT COUNT(*) FROM articles"

    .line 316
    const-string v1, "SELECT COUNT(*) FROM articles"

    invoke-static {v1, v0}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 320
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 327
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 328
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 325
    return v0

    .line 327
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 328
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method
