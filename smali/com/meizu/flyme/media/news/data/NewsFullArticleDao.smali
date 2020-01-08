.class public interface abstract Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Ljava/util/List;)V
    .annotation build Landroid/arch/persistence/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteExpireData(J)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "DELETE FROM articles WHERE newsAddTime < :validTimeMillis"
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x5
    .end annotation

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
.end method

.method public abstract query(IIJILjava/lang/String;Z)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles  WHERE newsExposeTime = 0 AND newsAddTime > :validTimeMillis AND articleChannelId = :articleChannelId AND keyword = :keyword AND isMoreList = :isMoreList ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT :begin, :limit"
    .end annotation

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
.end method

.method public abstract query(IJILjava/lang/String;Z)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles WHERE newsExposeTime = 0 AND newsAddTime > :validTimeMillis AND articleChannelId = :articleChannelId AND keyword = :keyword AND isMoreList = :isMoreList ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT :limit"
    .end annotation

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
.end method

.method public abstract queryALL()Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryNewest(ILjava/lang/String;Z)Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles WHERE articleChannelId = :articleChannelId AND keyword = :keyword AND isMoreList = :isMoreList ORDER BY newsAddTime DESC LIMIT 1"
    .end annotation
.end method

.method public abstract queryOldForChange(IILjava/lang/String;Z)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = :articleChannelId AND keyword = :keyword AND isMoreList = :isMoreList ORDER BY newsChangeTime ASC LIMIT :limit"
    .end annotation

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
.end method

.method public abstract queryOldForSlideMore(IILjava/lang/String;Z)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles  WHERE newsExposeTime > 0 AND articleChannelId = :articleChannelId AND keyword = :keyword AND isMoreList = :isMoreList ORDER BY newsExposeTime DESC LIMIT :limit"
    .end annotation

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
.end method

.method public abstract setChanged(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE articles SET newsChangeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setExposed(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE articles SET newsExposeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setRead(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE articles SET newsReadTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract size()I
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT COUNT(*) FROM articles"
    .end annotation
.end method

.method public abstract updateExistData(JJLjava/lang/String;I)J
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE articles SET newsAddTime = :addTime, newsExposeTime = 0, newsChangeTime = 0 WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method
