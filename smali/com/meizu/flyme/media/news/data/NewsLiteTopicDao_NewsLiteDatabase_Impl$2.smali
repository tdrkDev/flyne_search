.class Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$2;
.super Landroid/arch/persistence/room/b;
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
        "Landroid/arch/persistence/room/b",
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
    .line 77
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$2;->this$0:Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/b;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 91
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 92
    return-void

    .line 89
    :cond_0
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsLiteTopicDao_NewsLiteDatabase_Impl$2;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteTopicEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "DELETE FROM `topics` WHERE `contentId` = ? AND `cpEntityId` = ? AND `cpId` = ?"

    return-object v0
.end method
