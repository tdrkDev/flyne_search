.class Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$2;
.super Landroid/arch/persistence/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/b",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$2;->this$0:Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/b;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 185
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 190
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 191
    return-void

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsLiteArticleDao_Impl$2;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "DELETE FROM `articles` WHERE `contentId` = ? AND `cpEntityId` = ? AND `cpId` = ?"

    return-object v0
.end method
