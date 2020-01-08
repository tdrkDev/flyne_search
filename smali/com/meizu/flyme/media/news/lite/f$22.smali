.class final Lcom/meizu/flyme/media/news/lite/f$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/flyme/media/news/protocol/c",
        "<",
        "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f$22;->a(Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
