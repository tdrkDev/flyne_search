.class public final Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;
.super Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;
.source "SourceFile"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    primaryKeys = {
        "contentId",
        "cpEntityId",
        "cpId"
    }
    tableName = "articles"
.end annotation


# instance fields
.field public articleChannelId:I

.field public isMoreList:Z

.field public keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p0, p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    instance-of v2, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    if-nez v2, :cond_2

    move v0, v1

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    check-cast p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    .line 27
    iget v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    iget v3, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    if-ne v2, v3, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getContentId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getContentId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    .line 32
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    iget-wide v4, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
