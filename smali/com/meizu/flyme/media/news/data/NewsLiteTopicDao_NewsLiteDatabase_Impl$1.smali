.class Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$1;
.super Landroid/arch/persistence/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/c;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 42
    const/4 v0, 0x1

    iget v1, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->type:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 43
    const/4 v0, 0x2

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->createDate:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 44
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->headImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v4}, Landroid/arch/persistence/a/f;->a(I)V

    .line 49
    :goto_0
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->lable:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v5}, Landroid/arch/persistence/a/f;->a(I)V

    .line 54
    :goto_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->title:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 55
    invoke-interface {p1, v6}, Landroid/arch/persistence/a/f;->a(I)V

    .line 59
    :goto_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->url:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 60
    invoke-interface {p1, v7}, Landroid/arch/persistence/a/f;->a(I)V

    .line 64
    :goto_3
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 65
    invoke-interface {p1, v8}, Landroid/arch/persistence/a/f;->a(I)V

    .line 69
    :goto_4
    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 70
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 71
    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsAddTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 72
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsReadTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 73
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsExposeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 74
    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getNewsChangeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 75
    return-void

    .line 47
    :cond_0
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->headImageUrl:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->lable:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_3
    iget-object v0, p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->url:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v8, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$1;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "INSERT OR IGNORE INTO `topics`(`type`,`createDate`,`headImageUrl`,`label`,`title`,`url`,`cpEntityId`,`contentId`,`cpId`,`newsAddTime`,`newsReadTime`,`newsExposeTime`,`newsChangeTime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
