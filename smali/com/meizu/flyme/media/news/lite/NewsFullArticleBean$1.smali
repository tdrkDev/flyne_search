.class Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;-><init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)V
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
        "Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$1;->a:Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean$1;->a(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$BigImgInfo;->url:Ljava/lang/String;

    return-object v0
.end method
