.class public interface abstract Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(I)V
    .annotation build Landroid/arch/persistence/room/Query;
        value = "DELETE FROM config WHERE articleChannelId = :articleChannelId"
    .end annotation
.end method

.method public abstract insert(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x5
    .end annotation
.end method

.method public abstract query(I)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT * FROM config WHERE articleChannelId = :articleChannelId LIMIT 1"
    .end annotation
.end method

.method public abstract size()I
    .annotation build Landroid/arch/persistence/room/Query;
        value = "SELECT COUNT(*) FROM config"
    .end annotation
.end method
