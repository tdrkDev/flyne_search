.class public Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/f;

.field private final __deletionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/b;

.field private final __insertionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/c;

.field private final __preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

.field private final __preparedStmtOfUpdateExistData:Landroid/arch/persistence/room/j;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    .line 37
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$1;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__insertionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/c;

    .line 193
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$2;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__deletionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/b;

    .line 210
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$3;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    .line 217
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$4;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    .line 224
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$5;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    .line 231
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$6;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    .line 238
    new-instance v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$7;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfUpdateExistData:Landroid/arch/persistence/room/j;

    .line 245
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
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__deletionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/b;->handleMultiple(Ljava/lang/Iterable;)I

    .line 264
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public deleteExpireData(J)V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 348
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 350
    const/4 v0, 0x1

    .line 351
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 352
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 353
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 356
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 358
    return-void

    .line 355
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 356
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfDeleteExpireData:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__insertionAdapterOfNewsFullArticleEntity:Landroid/arch/persistence/room/c;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/c;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 253
    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v1}, Landroid/arch/persistence/room/f;->endTransaction()V

    throw v0
.end method

.method public query(IIJILjava/lang/String;Z)Ljava/util/List;
    .locals 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJI",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime = 0 AND newsAddTime > ? AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?, ?"

    .line 712
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime = 0 AND newsAddTime > ? AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?, ?"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 713
    const/4 v4, 0x1

    .line 714
    move-wide/from16 v0, p3

    invoke-virtual {v5, v4, v0, v1}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 715
    const/4 v4, 0x2

    .line 716
    move/from16 v0, p5

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 717
    const/4 v4, 0x3

    .line 718
    if-nez p6, :cond_0

    .line 719
    invoke-virtual {v5, v4}, Landroid/arch/persistence/room/i;->a(I)V

    .line 723
    :goto_0
    const/4 v6, 0x4

    .line 725
    if-eqz p7, :cond_1

    const/4 v4, 0x1

    .line 726
    :goto_1
    int-to-long v8, v4

    invoke-virtual {v5, v6, v8, v9}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 727
    const/4 v4, 0x5

    .line 728
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 729
    const/4 v4, 0x6

    .line 730
    move/from16 v0, p2

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 733
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 734
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 735
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 736
    const-string v4, "subTitle"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 737
    const-string v4, "keyWords"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 738
    const-string v4, "keyWords_freq"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 739
    const-string v4, "videoDuration"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 740
    const-string v4, "desc"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 741
    const-string v4, "category"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 742
    const-string v4, "categoryId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 743
    const-string v4, "tag"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 744
    const-string v4, "source"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 745
    const-string v4, "h5Url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 746
    const-string v4, "json_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 747
    const-string v4, "share_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 748
    const-string v4, "status"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 749
    const-string v4, "author"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 750
    const-string v4, "authorId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 751
    const-string v4, "ruleId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 752
    const-string v4, "ruleSign"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 753
    const-string v4, "viewCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 754
    const-string v4, "commentCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 755
    const-string v4, "shareCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 756
    const-string v4, "collectCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 757
    const-string v4, "diggCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 758
    const-string v4, "buryCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 759
    const-string v4, "publishTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 760
    const-string v4, "createTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 761
    const-string v4, "cp_recom_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 762
    const-string v4, "release_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 763
    const-string v4, "update_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 764
    const-string v4, "extend"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 765
    const-string v4, "content"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 766
    const-string v4, "contentSourceId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 767
    const-string v4, "requestId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 768
    const-string v4, "suggestShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 769
    const-string v4, "manualShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 770
    const-string v4, "scheme"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 771
    const-string v4, "manualPosition"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 772
    const-string v4, "cpRecomPos"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 773
    const-string v4, "userInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 774
    const-string v4, "imgInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 775
    const-string v4, "articleChannelId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 776
    const-string v4, "keyword"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 777
    const-string v4, "isMoreList"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 778
    const-string v4, "cpEntityId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 779
    const-string v4, "contentId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 780
    const-string v4, "cpId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 781
    const-string v4, "newsAddTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 782
    const-string v4, "newsReadTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 783
    const-string v4, "newsExposeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 784
    const-string v4, "newsChangeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 785
    new-instance v59, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 786
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 788
    new-instance v60, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct/range {v60 .. v60}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 789
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 790
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 791
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 792
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 793
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 794
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 795
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 796
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 797
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 798
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 799
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 800
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 801
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 802
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 803
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 804
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 805
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 806
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 807
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 808
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 809
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 810
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 811
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 812
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 813
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 814
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 815
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 816
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 817
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 818
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 819
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 820
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 821
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 822
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 823
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 824
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 825
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 826
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 827
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 828
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 830
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 831
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 833
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 834
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 835
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 836
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 838
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 839
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 841
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 842
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 844
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 845
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 847
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 848
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 850
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 851
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 853
    move/from16 v0, v56

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 854
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 856
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 857
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 859
    move/from16 v0, v58

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 860
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V

    .line 861
    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 865
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 721
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v5, v4, v0}, Landroid/arch/persistence/room/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 839
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 865
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 863
    return-object v59
.end method

.method public query(IJILjava/lang/String;Z)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    const-string v4, "SELECT * FROM articles WHERE newsExposeTime = 0 AND newsAddTime > ? AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    .line 409
    const-string v4, "SELECT * FROM articles WHERE newsExposeTime = 0 AND newsAddTime > ? AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT ?"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 410
    const/4 v4, 0x1

    .line 411
    move-wide/from16 v0, p2

    invoke-virtual {v5, v4, v0, v1}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 412
    const/4 v4, 0x2

    .line 413
    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 414
    const/4 v4, 0x3

    .line 415
    if-nez p5, :cond_0

    .line 416
    invoke-virtual {v5, v4}, Landroid/arch/persistence/room/i;->a(I)V

    .line 420
    :goto_0
    const/4 v6, 0x4

    .line 422
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    .line 423
    :goto_1
    int-to-long v8, v4

    invoke-virtual {v5, v6, v8, v9}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 424
    const/4 v4, 0x5

    .line 425
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 429
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 430
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 431
    const-string v4, "subTitle"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 432
    const-string v4, "keyWords"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 433
    const-string v4, "keyWords_freq"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 434
    const-string v4, "videoDuration"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 435
    const-string v4, "desc"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 436
    const-string v4, "category"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 437
    const-string v4, "categoryId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 438
    const-string v4, "tag"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 439
    const-string v4, "source"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 440
    const-string v4, "h5Url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 441
    const-string v4, "json_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 442
    const-string v4, "share_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 443
    const-string v4, "status"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 444
    const-string v4, "author"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 445
    const-string v4, "authorId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 446
    const-string v4, "ruleId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 447
    const-string v4, "ruleSign"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 448
    const-string v4, "viewCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 449
    const-string v4, "commentCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 450
    const-string v4, "shareCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 451
    const-string v4, "collectCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 452
    const-string v4, "diggCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 453
    const-string v4, "buryCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 454
    const-string v4, "publishTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 455
    const-string v4, "createTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 456
    const-string v4, "cp_recom_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 457
    const-string v4, "release_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 458
    const-string v4, "update_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 459
    const-string v4, "extend"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 460
    const-string v4, "content"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 461
    const-string v4, "contentSourceId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 462
    const-string v4, "requestId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 463
    const-string v4, "suggestShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 464
    const-string v4, "manualShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 465
    const-string v4, "scheme"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 466
    const-string v4, "manualPosition"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 467
    const-string v4, "cpRecomPos"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 468
    const-string v4, "userInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 469
    const-string v4, "imgInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 470
    const-string v4, "articleChannelId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 471
    const-string v4, "keyword"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 472
    const-string v4, "isMoreList"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 473
    const-string v4, "cpEntityId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 474
    const-string v4, "contentId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 475
    const-string v4, "cpId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 476
    const-string v4, "newsAddTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 477
    const-string v4, "newsReadTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 478
    const-string v4, "newsExposeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 479
    const-string v4, "newsChangeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 480
    new-instance v59, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    new-instance v60, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct/range {v60 .. v60}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 484
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 485
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 486
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 487
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 488
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 489
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 490
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 491
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 492
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 493
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 494
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 495
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 496
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 497
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 498
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 499
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 500
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 501
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 502
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 503
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 504
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 505
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 506
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 507
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 508
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 509
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 510
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 511
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 512
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 513
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 514
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 515
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 516
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 517
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 518
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 519
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 520
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 521
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 522
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 523
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 525
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 528
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 530
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 531
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 533
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 534
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 536
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 537
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 539
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 540
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 542
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 543
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 545
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 546
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 548
    move/from16 v0, v56

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 549
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 551
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 552
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 554
    move/from16 v0, v58

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 555
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V

    .line 556
    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 560
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 561
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 418
    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v5, v4, v0}, Landroid/arch/persistence/room/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 534
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 560
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 561
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 558
    return-object v59
.end method

.method public queryALL()Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    const-string v4, "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC"

    .line 568
    const-string v4, "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 571
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 572
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 573
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 574
    const-string v4, "subTitle"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 575
    const-string v4, "keyWords"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 576
    const-string v4, "keyWords_freq"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 577
    const-string v4, "videoDuration"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 578
    const-string v4, "desc"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 579
    const-string v4, "category"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 580
    const-string v4, "categoryId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 581
    const-string v4, "tag"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 582
    const-string v4, "source"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 583
    const-string v4, "h5Url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 584
    const-string v4, "json_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 585
    const-string v4, "share_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 586
    const-string v4, "status"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 587
    const-string v4, "author"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 588
    const-string v4, "authorId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 589
    const-string v4, "ruleId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 590
    const-string v4, "ruleSign"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 591
    const-string v4, "viewCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 592
    const-string v4, "commentCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 593
    const-string v4, "shareCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 594
    const-string v4, "collectCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 595
    const-string v4, "diggCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 596
    const-string v4, "buryCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 597
    const-string v4, "publishTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 598
    const-string v4, "createTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 599
    const-string v4, "cp_recom_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 600
    const-string v4, "release_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 601
    const-string v4, "update_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 602
    const-string v4, "extend"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 603
    const-string v4, "content"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 604
    const-string v4, "contentSourceId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 605
    const-string v4, "requestId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 606
    const-string v4, "suggestShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 607
    const-string v4, "manualShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 608
    const-string v4, "scheme"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 609
    const-string v4, "manualPosition"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 610
    const-string v4, "cpRecomPos"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 611
    const-string v4, "userInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 612
    const-string v4, "imgInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 613
    const-string v4, "articleChannelId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 614
    const-string v4, "keyword"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 615
    const-string v4, "isMoreList"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 616
    const-string v4, "cpEntityId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 617
    const-string v4, "contentId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 618
    const-string v4, "cpId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 619
    const-string v4, "newsAddTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 620
    const-string v4, "newsReadTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 621
    const-string v4, "newsExposeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 622
    const-string v4, "newsChangeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 623
    new-instance v59, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 624
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    new-instance v60, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct/range {v60 .. v60}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 627
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 628
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 629
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 630
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 631
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 632
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 633
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 634
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 635
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 636
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 637
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 638
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 639
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 640
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 641
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 642
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 643
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 644
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 645
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 646
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 647
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 648
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 649
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 650
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 651
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 652
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 653
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 654
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 655
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 656
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 657
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 658
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 659
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 660
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 661
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 662
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 663
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 664
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 665
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 666
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 668
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 671
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 673
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 674
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 676
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 677
    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 679
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 680
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 682
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 683
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 685
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 686
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 688
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 689
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 691
    move/from16 v0, v56

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 692
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 694
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 695
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 697
    move/from16 v0, v58

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 698
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V

    .line 699
    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 703
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 677
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 703
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 701
    return-object v59
.end method

.method public queryNewest(ILjava/lang/String;Z)Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;
    .locals 57

    .prologue
    .line 1189
    const-string v2, "SELECT * FROM articles WHERE articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsAddTime DESC LIMIT 1"

    .line 1190
    const-string v2, "SELECT * FROM articles WHERE articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsAddTime DESC LIMIT 1"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v4

    .line 1191
    const/4 v2, 0x1

    .line 1192
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v4, v2, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 1193
    const/4 v2, 0x2

    .line 1194
    if-nez p2, :cond_0

    .line 1195
    invoke-virtual {v4, v2}, Landroid/arch/persistence/room/i;->a(I)V

    .line 1199
    :goto_0
    const/4 v3, 0x3

    .line 1201
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    .line 1202
    :goto_1
    int-to-long v6, v2

    invoke-virtual {v4, v3, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v4}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v5

    .line 1205
    :try_start_0
    const-string v2, "entityUniqId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1206
    const-string v2, "type"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1207
    const-string v2, "title"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1208
    const-string v2, "subTitle"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1209
    const-string v2, "keyWords"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1210
    const-string v2, "keyWords_freq"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1211
    const-string v2, "videoDuration"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1212
    const-string v2, "desc"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1213
    const-string v2, "category"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1214
    const-string v2, "categoryId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1215
    const-string v2, "tag"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1216
    const-string v2, "source"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1217
    const-string v2, "h5Url"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1218
    const-string v2, "json_url"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1219
    const-string v2, "share_url"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1220
    const-string v2, "status"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1221
    const-string v2, "author"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1222
    const-string v2, "authorId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1223
    const-string v2, "ruleId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1224
    const-string v2, "ruleSign"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 1225
    const-string v2, "viewCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1226
    const-string v2, "commentCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1227
    const-string v2, "shareCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1228
    const-string v2, "collectCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1229
    const-string v2, "diggCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 1230
    const-string v2, "buryCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 1231
    const-string v2, "publishTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1232
    const-string v2, "createTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1233
    const-string v2, "cp_recom_time"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1234
    const-string v2, "release_time"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1235
    const-string v2, "update_time"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1236
    const-string v2, "extend"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1237
    const-string v2, "content"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1238
    const-string v2, "contentSourceId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 1239
    const-string v2, "requestId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1240
    const-string v2, "suggestShowType"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 1241
    const-string v2, "manualShowType"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 1242
    const-string v2, "scheme"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 1243
    const-string v2, "manualPosition"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1244
    const-string v2, "cpRecomPos"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1245
    const-string v2, "userInfo"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1246
    const-string v2, "imgInfo"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1247
    const-string v2, "articleChannelId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1248
    const-string v2, "keyword"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 1249
    const-string v2, "isMoreList"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 1250
    const-string v2, "cpEntityId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1251
    const-string v2, "contentId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 1252
    const-string v2, "cpId"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 1253
    const-string v2, "newsAddTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 1254
    const-string v2, "newsReadTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 1255
    const-string v2, "newsExposeTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 1256
    const-string v2, "newsChangeTime"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 1258
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1259
    new-instance v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct {v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 1260
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 1261
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 1262
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 1263
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 1264
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 1265
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 1266
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 1267
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 1268
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 1269
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 1270
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 1271
    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 1272
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 1273
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 1274
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 1275
    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 1276
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 1277
    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 1278
    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 1279
    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 1280
    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 1281
    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 1282
    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 1283
    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 1284
    move/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 1285
    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 1286
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 1287
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 1288
    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 1289
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 1290
    move/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 1291
    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 1292
    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 1293
    move/from16 v0, v38

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 1294
    move/from16 v0, v39

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 1295
    move/from16 v0, v40

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 1296
    move/from16 v0, v41

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 1297
    move/from16 v0, v42

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 1298
    move/from16 v0, v43

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 1299
    move/from16 v0, v44

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 1301
    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1302
    invoke-static {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 1304
    move/from16 v0, v46

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1305
    invoke-static {v3}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 1306
    move/from16 v0, v47

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 1307
    move/from16 v0, v48

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 1309
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1310
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 1312
    move/from16 v0, v50

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1313
    invoke-virtual {v2, v3}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 1315
    move/from16 v0, v51

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1316
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 1318
    move/from16 v0, v52

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1319
    invoke-virtual {v2, v3}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 1321
    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1322
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 1324
    move/from16 v0, v54

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1325
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 1327
    move/from16 v0, v55

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1328
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 1330
    move/from16 v0, v56

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1331
    invoke-virtual {v2, v6, v7}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1338
    invoke-virtual {v4}, Landroid/arch/persistence/room/i;->b()V

    .line 1335
    return-object v2

    .line 1197
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v4, v2, v0}, Landroid/arch/persistence/room/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1201
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1310
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1333
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 1337
    :catchall_0
    move-exception v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1338
    invoke-virtual {v4}, Landroid/arch/persistence/room/i;->b()V

    throw v2
.end method

.method public queryOldForChange(IILjava/lang/String;Z)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC LIMIT ?"

    .line 874
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsChangeTime ASC LIMIT ?"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 875
    const/4 v4, 0x1

    .line 876
    move/from16 v0, p2

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 877
    const/4 v4, 0x2

    .line 878
    if-nez p3, :cond_0

    .line 879
    invoke-virtual {v5, v4}, Landroid/arch/persistence/room/i;->a(I)V

    .line 883
    :goto_0
    const/4 v6, 0x3

    .line 885
    if-eqz p4, :cond_1

    const/4 v4, 0x1

    .line 886
    :goto_1
    int-to-long v8, v4

    invoke-virtual {v5, v6, v8, v9}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 887
    const/4 v4, 0x4

    .line 888
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 892
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 893
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 894
    const-string v4, "subTitle"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 895
    const-string v4, "keyWords"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 896
    const-string v4, "keyWords_freq"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 897
    const-string v4, "videoDuration"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 898
    const-string v4, "desc"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 899
    const-string v4, "category"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 900
    const-string v4, "categoryId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 901
    const-string v4, "tag"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 902
    const-string v4, "source"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 903
    const-string v4, "h5Url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 904
    const-string v4, "json_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 905
    const-string v4, "share_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 906
    const-string v4, "status"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 907
    const-string v4, "author"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 908
    const-string v4, "authorId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 909
    const-string v4, "ruleId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 910
    const-string v4, "ruleSign"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 911
    const-string v4, "viewCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 912
    const-string v4, "commentCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 913
    const-string v4, "shareCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 914
    const-string v4, "collectCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 915
    const-string v4, "diggCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 916
    const-string v4, "buryCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 917
    const-string v4, "publishTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 918
    const-string v4, "createTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 919
    const-string v4, "cp_recom_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 920
    const-string v4, "release_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 921
    const-string v4, "update_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 922
    const-string v4, "extend"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 923
    const-string v4, "content"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 924
    const-string v4, "contentSourceId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 925
    const-string v4, "requestId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 926
    const-string v4, "suggestShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 927
    const-string v4, "manualShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 928
    const-string v4, "scheme"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 929
    const-string v4, "manualPosition"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 930
    const-string v4, "cpRecomPos"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 931
    const-string v4, "userInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 932
    const-string v4, "imgInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 933
    const-string v4, "articleChannelId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 934
    const-string v4, "keyword"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 935
    const-string v4, "isMoreList"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 936
    const-string v4, "cpEntityId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 937
    const-string v4, "contentId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 938
    const-string v4, "cpId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 939
    const-string v4, "newsAddTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 940
    const-string v4, "newsReadTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 941
    const-string v4, "newsExposeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 942
    const-string v4, "newsChangeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 943
    new-instance v59, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 944
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 946
    new-instance v60, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct/range {v60 .. v60}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 947
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 948
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 949
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 950
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 951
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 952
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 953
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 954
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 955
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 956
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 957
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 958
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 959
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 960
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 961
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 962
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 963
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 964
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 965
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 966
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 967
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 968
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 969
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 970
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 971
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 972
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 973
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 974
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 975
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 976
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 977
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 978
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 979
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 980
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 981
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 982
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 983
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 984
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 985
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 986
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 988
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 989
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 991
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 992
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 993
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 994
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 996
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 997
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 999
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1000
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 1002
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1003
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 1005
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1006
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 1008
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1009
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 1011
    move/from16 v0, v56

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1012
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 1014
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1015
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 1017
    move/from16 v0, v58

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1018
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V

    .line 1019
    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 1023
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 881
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v5, v4, v0}, Landroid/arch/persistence/room/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 885
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 997
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1023
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 1021
    return-object v59
.end method

.method public queryOldForSlideMore(IILjava/lang/String;Z)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsExposeTime DESC LIMIT ?"

    .line 1032
    const-string v4, "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = ? AND keyword = ? AND isMoreList = ? ORDER BY newsExposeTime DESC LIMIT ?"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v5

    .line 1033
    const/4 v4, 0x1

    .line 1034
    move/from16 v0, p2

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 1035
    const/4 v4, 0x2

    .line 1036
    if-nez p3, :cond_0

    .line 1037
    invoke-virtual {v5, v4}, Landroid/arch/persistence/room/i;->a(I)V

    .line 1041
    :goto_0
    const/4 v6, 0x3

    .line 1043
    if-eqz p4, :cond_1

    const/4 v4, 0x1

    .line 1044
    :goto_1
    int-to-long v8, v4

    invoke-virtual {v5, v6, v8, v9}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 1045
    const/4 v4, 0x4

    .line 1046
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroid/arch/persistence/room/i;->a(IJ)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v4, v5}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v6

    .line 1049
    :try_start_0
    const-string v4, "entityUniqId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1050
    const-string v4, "type"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1051
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1052
    const-string v4, "subTitle"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1053
    const-string v4, "keyWords"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1054
    const-string v4, "keyWords_freq"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1055
    const-string v4, "videoDuration"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1056
    const-string v4, "desc"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1057
    const-string v4, "category"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1058
    const-string v4, "categoryId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1059
    const-string v4, "tag"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1060
    const-string v4, "source"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1061
    const-string v4, "h5Url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1062
    const-string v4, "json_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1063
    const-string v4, "share_url"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1064
    const-string v4, "status"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1065
    const-string v4, "author"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1066
    const-string v4, "authorId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 1067
    const-string v4, "ruleId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1068
    const-string v4, "ruleSign"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1069
    const-string v4, "viewCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1070
    const-string v4, "commentCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1071
    const-string v4, "shareCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 1072
    const-string v4, "collectCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 1073
    const-string v4, "diggCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1074
    const-string v4, "buryCount"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1075
    const-string v4, "publishTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1076
    const-string v4, "createTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1077
    const-string v4, "cp_recom_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1078
    const-string v4, "release_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1079
    const-string v4, "update_time"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1080
    const-string v4, "extend"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 1081
    const-string v4, "content"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1082
    const-string v4, "contentSourceId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 1083
    const-string v4, "requestId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 1084
    const-string v4, "suggestShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 1085
    const-string v4, "manualShowType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1086
    const-string v4, "scheme"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1087
    const-string v4, "manualPosition"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1088
    const-string v4, "cpRecomPos"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1089
    const-string v4, "userInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1090
    const-string v4, "imgInfo"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 1091
    const-string v4, "articleChannelId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 1092
    const-string v4, "keyword"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1093
    const-string v4, "isMoreList"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 1094
    const-string v4, "cpEntityId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 1095
    const-string v4, "contentId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 1096
    const-string v4, "cpId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 1097
    const-string v4, "newsAddTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 1098
    const-string v4, "newsReadTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 1099
    const-string v4, "newsExposeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 1100
    const-string v4, "newsChangeTime"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 1101
    new-instance v59, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1102
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1104
    new-instance v60, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-direct/range {v60 .. v60}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;-><init>()V

    .line 1105
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    .line 1106
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    .line 1107
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 1108
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    .line 1109
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    .line 1110
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    .line 1111
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    .line 1112
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    .line 1113
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    .line 1114
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    .line 1115
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 1116
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    .line 1117
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    .line 1118
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    .line 1119
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    .line 1120
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    .line 1121
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    .line 1122
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    .line 1123
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    .line 1124
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    .line 1125
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    .line 1126
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    .line 1127
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    .line 1128
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    .line 1129
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    .line 1130
    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    .line 1131
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    .line 1132
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    .line 1133
    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    .line 1134
    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    .line 1135
    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    .line 1136
    move/from16 v0, v38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    .line 1137
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    .line 1138
    move/from16 v0, v40

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    .line 1139
    move/from16 v0, v41

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    .line 1140
    move/from16 v0, v42

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    .line 1141
    move/from16 v0, v43

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    .line 1142
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    .line 1143
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    .line 1144
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    .line 1146
    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1147
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    .line 1149
    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-static {v4}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    .line 1151
    move/from16 v0, v49

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v60

    iput v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    .line 1152
    move/from16 v0, v50

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    .line 1154
    move/from16 v0, v51

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1155
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    .line 1157
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1158
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpEntityId(Ljava/lang/String;)V

    .line 1160
    move/from16 v0, v53

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1161
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setContentId(J)V

    .line 1163
    move/from16 v0, v54

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1164
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setCpId(I)V

    .line 1166
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1167
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsAddTime(J)V

    .line 1169
    move/from16 v0, v56

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1170
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsReadTime(J)V

    .line 1172
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1173
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsExposeTime(J)V

    .line 1175
    move/from16 v0, v58

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    .line 1176
    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->setNewsChangeTime(J)V

    .line 1177
    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 1181
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1182
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    throw v4

    .line 1039
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v5, v4, v0}, Landroid/arch/persistence/room/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1155
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1181
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1182
    invoke-virtual {v5}, Landroid/arch/persistence/room/i;->b()V

    .line 1179
    return-object v59
.end method

.method public setChanged(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 323
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 325
    const/4 v0, 0x1

    .line 326
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 327
    const/4 v0, 0x2

    .line 328
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 329
    const/4 v0, 0x3

    .line 330
    if-nez p5, :cond_0

    .line 331
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 335
    :goto_0
    const/4 v0, 0x4

    .line 336
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 337
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 338
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 341
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 343
    return-void

    .line 333
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 341
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetChanged:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setExposed(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 298
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 300
    const/4 v0, 0x1

    .line 301
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 302
    const/4 v0, 0x2

    .line 303
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 304
    const/4 v0, 0x3

    .line 305
    if-nez p5, :cond_0

    .line 306
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 310
    :goto_0
    const/4 v0, 0x4

    .line 311
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 312
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 313
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 316
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 318
    return-void

    .line 308
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 316
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetExposed:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public setRead(JJLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 275
    const/4 v0, 0x1

    .line 276
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 277
    const/4 v0, 0x2

    .line 278
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 279
    const/4 v0, 0x3

    .line 280
    if-nez p5, :cond_0

    .line 281
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 285
    :goto_0
    const/4 v0, 0x4

    .line 286
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 287
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    .line 288
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 291
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 293
    return-void

    .line 283
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 291
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfSetRead:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 388
    const-string v1, "SELECT COUNT(*) FROM articles"

    .line 389
    const-string v1, "SELECT COUNT(*) FROM articles"

    invoke-static {v1, v0}, Landroid/arch/persistence/room/i;->a(Ljava/lang/String;I)Landroid/arch/persistence/room/i;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/f;->query(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 393
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 400
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 401
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    .line 398
    return v0

    .line 400
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 401
    invoke-virtual {v1}, Landroid/arch/persistence/room/i;->b()V

    throw v0
.end method

.method public updateExistData(JJLjava/lang/String;I)J
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfUpdateExistData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0}, Landroid/arch/persistence/room/j;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 363
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->beginTransaction()V

    .line 365
    const/4 v0, 0x1

    .line 366
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 367
    const/4 v0, 0x2

    .line 368
    invoke-interface {v1, v0, p3, p4}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 369
    const/4 v0, 0x3

    .line 370
    if-nez p5, :cond_0

    .line 371
    invoke-interface {v1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 375
    :goto_0
    const/4 v0, 0x4

    .line 376
    int-to-long v2, p6

    invoke-interface {v1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 377
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I

    move-result v0

    int-to-long v2, v0

    .line 378
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v0}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 382
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfUpdateExistData:Landroid/arch/persistence/room/j;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    .line 379
    return-wide v2

    .line 373
    :cond_0
    :try_start_1
    invoke-interface {v1, v0, p5}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__db:Landroid/arch/persistence/room/f;

    invoke-virtual {v2}, Landroid/arch/persistence/room/f;->endTransaction()V

    .line 382
    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;->__preparedStmtOfUpdateExistData:Landroid/arch/persistence/room/j;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/j;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method
