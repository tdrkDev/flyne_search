.class public interface abstract Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;
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
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteExpireData(J)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "DELETE FROM topics WHERE newsAddTime < :validTimeMillis"
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
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract query(I)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM topics WHERE newsExposeTime = 0 ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setChanged(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE topics SET newsChangeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setExposed(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE topics SET newsExposeTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract setRead(JJLjava/lang/String;I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "UPDATE topics SET newsReadTime = :time WHERE (contentId = :contentId AND cpEntityId = :cpEntityId AND cpId = :cpId)"
    .end annotation
.end method

.method public abstract size()I
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT COUNT(*) FROM topics"
    .end annotation
.end method
