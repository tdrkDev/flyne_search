.class Lcom/meizu/flyme/media/news/lite/f$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->d(ILcom/meizu/flyme/media/news/lite/i;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/flyme/media/news/protocol/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
        "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;)V
    .locals 0

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$14;->a:Lcom/meizu/flyme/media/news/lite/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;
    .locals 1

    .prologue
    .line 1798
    new-instance v0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1795
    check-cast p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f$14;->a(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    move-result-object v0

    return-object v0
.end method
