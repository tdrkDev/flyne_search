.class public abstract Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;
.super Landroid/arch/persistence/room/f;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Database;
    entities = {
        Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;,
        Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;
    }
    version = 0x1
.end annotation

.annotation build Landroid/arch/persistence/room/TypeConverters;
    value = {
        Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/arch/persistence/room/f;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;

    const-string v1, "flyme-news-lite.db"

    invoke-static {p0, v0, v1}, Landroid/arch/persistence/room/e;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/f$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/arch/persistence/room/f$a;->b()Landroid/arch/persistence/room/f;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteDatabase;

    .line 26
    return-object v0
.end method


# virtual methods
.method public abstract articleDao()Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao;
.end method

.method public abstract topicDao()Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao;
.end method
