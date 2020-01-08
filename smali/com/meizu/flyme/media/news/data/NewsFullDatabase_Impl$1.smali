.class Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;
.super Landroid/arch/persistence/room/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/a;)Landroid/arch/persistence/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;I)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/h$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS `articles` (`entityUniqId` TEXT, `type` INTEGER NOT NULL, `title` TEXT, `subTitle` TEXT, `keyWords` TEXT, `keyWords_freq` TEXT, `videoDuration` INTEGER NOT NULL, `desc` TEXT, `category` TEXT, `categoryId` INTEGER NOT NULL, `tag` TEXT, `source` TEXT, `h5Url` TEXT, `json_url` TEXT, `share_url` TEXT, `status` INTEGER NOT NULL, `author` TEXT, `authorId` INTEGER NOT NULL, `ruleId` INTEGER NOT NULL, `ruleSign` TEXT, `viewCount` INTEGER NOT NULL, `commentCount` INTEGER NOT NULL, `shareCount` INTEGER NOT NULL, `collectCount` INTEGER NOT NULL, `diggCount` INTEGER NOT NULL, `buryCount` INTEGER NOT NULL, `publishTime` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `cp_recom_time` INTEGER NOT NULL, `release_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `extend` TEXT, `content` TEXT, `contentSourceId` INTEGER NOT NULL, `requestId` TEXT, `suggestShowType` INTEGER NOT NULL, `manualShowType` INTEGER NOT NULL, `scheme` TEXT, `manualPosition` INTEGER NOT NULL, `cpRecomPos` INTEGER NOT NULL, `userInfo` TEXT, `imgInfo` TEXT, `articleChannelId` INTEGER NOT NULL, `keyword` TEXT, `isMoreList` INTEGER NOT NULL, `cpEntityId` TEXT NOT NULL, `contentId` INTEGER NOT NULL, `cpId` INTEGER NOT NULL, `newsAddTime` INTEGER NOT NULL, `newsReadTime` INTEGER NOT NULL, `newsExposeTime` INTEGER NOT NULL, `newsChangeTime` INTEGER NOT NULL, PRIMARY KEY(`contentId`, `cpEntityId`, `cpId`))"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS `manual_articles` (`entityUniqId` TEXT, `type` INTEGER NOT NULL, `title` TEXT, `subTitle` TEXT, `keyWords` TEXT, `keyWords_freq` TEXT, `videoDuration` INTEGER NOT NULL, `desc` TEXT, `category` TEXT, `categoryId` INTEGER NOT NULL, `tag` TEXT, `source` TEXT, `h5Url` TEXT, `json_url` TEXT, `share_url` TEXT, `status` INTEGER NOT NULL, `author` TEXT, `authorId` INTEGER NOT NULL, `ruleId` INTEGER NOT NULL, `ruleSign` TEXT, `viewCount` INTEGER NOT NULL, `commentCount` INTEGER NOT NULL, `shareCount` INTEGER NOT NULL, `collectCount` INTEGER NOT NULL, `diggCount` INTEGER NOT NULL, `buryCount` INTEGER NOT NULL, `publishTime` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `cp_recom_time` INTEGER NOT NULL, `release_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `extend` TEXT, `content` TEXT, `contentSourceId` INTEGER NOT NULL, `requestId` TEXT, `suggestShowType` INTEGER NOT NULL, `manualShowType` INTEGER NOT NULL, `scheme` TEXT, `manualPosition` INTEGER NOT NULL, `cpRecomPos` INTEGER NOT NULL, `userInfo` TEXT, `imgInfo` TEXT, `articleChannelId` INTEGER NOT NULL, `cpEntityId` TEXT NOT NULL, `contentId` INTEGER NOT NULL, `cpId` INTEGER NOT NULL, `newsAddTime` INTEGER NOT NULL, `newsReadTime` INTEGER NOT NULL, `newsExposeTime` INTEGER NOT NULL, `newsChangeTime` INTEGER NOT NULL, PRIMARY KEY(`contentId`, `cpEntityId`, `cpId`))"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 39
    const-string v0, "CREATE TABLE IF NOT EXISTS `topics` (`type` INTEGER NOT NULL, `createDate` INTEGER NOT NULL, `headImageUrl` TEXT, `label` TEXT, `title` TEXT, `url` TEXT, `cpEntityId` TEXT NOT NULL, `contentId` INTEGER NOT NULL, `cpId` INTEGER NOT NULL, `newsAddTime` INTEGER NOT NULL, `newsReadTime` INTEGER NOT NULL, `newsExposeTime` INTEGER NOT NULL, `newsChangeTime` INTEGER NOT NULL, PRIMARY KEY(`contentId`, `cpEntityId`, `cpId`))"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS `config` (`articleChannelId` INTEGER NOT NULL, `config` TEXT, `requestId` TEXT, `disId` TEXT, `algoVer` TEXT, `mainChannelId` TEXT, `subChannelId` TEXT, `hasMore` INTEGER NOT NULL, PRIMARY KEY(`articleChannelId`))"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 42
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"1fcef3731cb08da89e432d2dc14d7df8\")"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS `articles`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 48
    const-string v0, "DROP TABLE IF EXISTS `manual_articles`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 49
    const-string v0, "DROP TABLE IF EXISTS `topics`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 50
    const-string v0, "DROP TABLE IF EXISTS `config`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/a/b;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$000(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$100(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$200(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/f$b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/f$b;->a(Landroid/arch/persistence/a/b;)V

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/a/b;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$302(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;Landroid/arch/persistence/a/b;)Landroid/arch/persistence/a/b;

    .line 65
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0, p1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$400(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;Landroid/arch/persistence/a/b;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$500(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$600(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;->access$700(Lcom/meizu/flyme/media/news/data/NewsFullDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/f$b;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/f$b;->b(Landroid/arch/persistence/a/b;)V

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/a/b;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    const-string v1, "entityUniqId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "entityUniqId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "type"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "title"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "title"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "subTitle"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "subTitle"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "keyWords"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "keyWords"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "keyWords_freq"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "keyWords_freq"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "videoDuration"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "videoDuration"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "desc"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "desc"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "category"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "category"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "categoryId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "categoryId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "tag"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "tag"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "source"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "source"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "h5Url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "h5Url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "json_url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "json_url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "share_url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "share_url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "status"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "status"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "author"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "author"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "authorId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "authorId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "ruleId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "ruleId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "ruleSign"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "ruleSign"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "viewCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "viewCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "commentCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "commentCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "shareCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "shareCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "collectCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "collectCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "diggCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "diggCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "buryCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "buryCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "publishTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "publishTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "createTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "createTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "cp_recom_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cp_recom_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "release_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "release_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "update_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "update_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "extend"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "extend"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "content"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "content"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "contentSourceId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "contentSourceId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "requestId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "requestId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "suggestShowType"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "suggestShowType"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "manualShowType"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "manualShowType"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "scheme"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "scheme"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "manualPosition"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "manualPosition"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "cpRecomPos"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpRecomPos"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "userInfo"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "userInfo"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "imgInfo"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "imgInfo"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "articleChannelId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "articleChannelId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "keyword"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "keyword"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "isMoreList"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "isMoreList"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "cpEntityId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpEntityId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "contentId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "contentId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "cpId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v8}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "newsAddTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsAddTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "newsReadTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsReadTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "newsExposeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsExposeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "newsChangeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsChangeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 129
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 130
    new-instance v3, Landroid/arch/persistence/room/b/a;

    const-string v4, "articles"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 131
    const-string v0, "articles"

    invoke-static {p1, v0}, Landroid/arch/persistence/room/b/a;->a(Landroid/arch/persistence/a/b;Ljava/lang/String;)Landroid/arch/persistence/room/b/a;

    move-result-object v0

    .line 132
    invoke-virtual {v3, v0}, Landroid/arch/persistence/room/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle articles(com.meizu.flyme.media.news.data.NewsFullArticleEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 138
    const-string v1, "entityUniqId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "entityUniqId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "type"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "title"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "title"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "subTitle"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "subTitle"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "keyWords"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "keyWords"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "keyWords_freq"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "keyWords_freq"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "videoDuration"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "videoDuration"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "desc"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "desc"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "category"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "category"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "categoryId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "categoryId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "tag"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "tag"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "source"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "source"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "h5Url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "h5Url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "json_url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "json_url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "share_url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "share_url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "status"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "status"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "author"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "author"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "authorId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "authorId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "ruleId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "ruleId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "ruleSign"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "ruleSign"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "viewCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "viewCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "commentCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "commentCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "shareCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "shareCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "collectCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "collectCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "diggCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "diggCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "buryCount"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "buryCount"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "publishTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "publishTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "createTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "createTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "cp_recom_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cp_recom_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "release_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "release_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "update_time"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "update_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "extend"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "extend"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "content"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "content"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "contentSourceId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "contentSourceId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "requestId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "requestId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "suggestShowType"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "suggestShowType"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "manualShowType"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "manualShowType"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "scheme"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "scheme"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "manualPosition"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "manualPosition"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "cpRecomPos"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpRecomPos"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "userInfo"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "userInfo"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "imgInfo"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "imgInfo"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "articleChannelId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "articleChannelId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "cpEntityId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpEntityId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "contentId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "contentId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "cpId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v8}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "newsAddTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsAddTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "newsReadTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsReadTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "newsExposeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsExposeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "newsChangeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsChangeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 189
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 190
    new-instance v3, Landroid/arch/persistence/room/b/a;

    const-string v4, "manual_articles"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 191
    const-string v0, "manual_articles"

    invoke-static {p1, v0}, Landroid/arch/persistence/room/b/a;->a(Landroid/arch/persistence/a/b;Ljava/lang/String;)Landroid/arch/persistence/room/b/a;

    move-result-object v0

    .line 192
    invoke-virtual {v3, v0}, Landroid/arch/persistence/room/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle manual_articles(com.meizu.flyme.media.news.data.NewsFullManualArticleEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 198
    const-string v1, "type"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "createDate"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "createDate"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "headImageUrl"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "headImageUrl"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "label"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "label"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "title"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "title"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "url"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "url"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "cpEntityId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpEntityId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "contentId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "contentId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "cpId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "cpId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v8}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "newsAddTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsAddTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "newsReadTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsReadTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "newsExposeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsExposeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "newsChangeTime"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "newsChangeTime"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 212
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 213
    new-instance v3, Landroid/arch/persistence/room/b/a;

    const-string v4, "topics"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 214
    const-string v0, "topics"

    invoke-static {p1, v0}, Landroid/arch/persistence/room/b/a;->a(Landroid/arch/persistence/a/b;Ljava/lang/String;)Landroid/arch/persistence/room/b/a;

    move-result-object v0

    .line 215
    invoke-virtual {v3, v0}, Landroid/arch/persistence/room/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle topics(com.meizu.flyme.media.news.data.NewsLiteTopicEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    const-string v1, "articleChannelId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "articleChannelId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "config"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "config"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "requestId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "requestId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "disId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "disId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "algoVer"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "algoVer"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "mainChannelId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "mainChannelId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "subChannelId"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "subChannelId"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "hasMore"

    new-instance v2, Landroid/arch/persistence/room/b/a$a;

    const-string v3, "hasMore"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/arch/persistence/room/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 230
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 231
    new-instance v3, Landroid/arch/persistence/room/b/a;

    const-string v4, "config"

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/arch/persistence/room/b/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 232
    const-string v0, "config"

    invoke-static {p1, v0}, Landroid/arch/persistence/room/b/a;->a(Landroid/arch/persistence/a/b;Ljava/lang/String;)Landroid/arch/persistence/room/b/a;

    move-result-object v0

    .line 233
    invoke-virtual {v3, v0}, Landroid/arch/persistence/room/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 234
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle config(com.meizu.flyme.media.news.data.NewsFullConfigEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_3
    return-void
.end method
