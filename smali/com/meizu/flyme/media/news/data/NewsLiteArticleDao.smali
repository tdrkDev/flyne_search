.class public interface abstract Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;
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
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;)V"
        }
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
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract query(I)Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles ORDER BY newsChangeTime ASC, newsAddTime DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryNewest()Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM articles ORDER BY newsAddTime DESC LIMIT 1"
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
