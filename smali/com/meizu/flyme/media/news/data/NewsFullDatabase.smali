.class public abstract Lcom/meizu/flyme/media/news/data/NewsFullDatabase;
.super Landroid/arch/persistence/room/f;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Database;
    entities = {
        Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;,
        Lcom/meizu/flyme/media/news/data/NewsFullManualArticleEntity;,
        Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;,
        Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity;
    }
    version = 0x4
.end annotation

.annotation build Landroid/arch/persistence/room/TypeConverters;
    value = {
        Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/arch/persistence/room/f;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/meizu/flyme/media/news/data/NewsFullDatabase;
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    const-string v1, "flyme-news-sdk.db"

    invoke-static {p0, v0, v1}, Landroid/arch/persistence/room/e;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/f$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/arch/persistence/room/f$a;->a()Landroid/arch/persistence/room/f$a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/arch/persistence/room/f$a;->b()Landroid/arch/persistence/room/f;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullDatabase;

    .line 30
    return-object v0
.end method


# virtual methods
.method public abstract articleDao()Lcom/meizu/flyme/media/news/data/NewsFullArticleDao;
.end method

.method public abstract configDao()Lcom/meizu/flyme/media/news/data/NewsFullConfigDao;
.end method

.method public abstract manualArticleDao()Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao;
.end method

.method public abstract topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;
.end method
