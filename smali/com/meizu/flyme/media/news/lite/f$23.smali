.class final Lcom/meizu/flyme/media/news/lite/f$23;
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
        "Ljava/util/List",
        "<",
        "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f$23;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->l()Lcom/meizu/flyme/media/news/protocol/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/b/ap;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
