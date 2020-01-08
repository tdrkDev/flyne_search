.class public interface abstract Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;
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
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAll(I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "DELETE FROM manual_articles WHERE articleChannelId = :articleChannelId"
    .end annotation
.end method

.method public abstract deleteExpireData(J)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "DELETE FROM manual_articles WHERE newsAddTime < :validTimeMillis"
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract query(II)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM manual_articles WHERE articleChannelId = :articleChannelId ORDER BY manualPosition ASC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll(I)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM manual_articles WHERE articleChannelId = :articleChannelId ORDER BY manualPosition ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryExposed(I)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM manual_articles WHERE articleChannelId = :articleChannelId AND newsExposeTime > 0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryNewest(I)Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM manual_articles WHERE articleChannelId = :articleChannelId ORDER BY newsAddTime DESC LIMIT 1"
    .end annotation
.end method

.method public abstract setChanged(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE manual_articles SET newsChangeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setExposed(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE manual_articles SET newsExposeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setRead(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE manual_articles SET newsReadTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract size()I
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT COUNT(*) FROM manual_articles"
    .end annotation
.end method
