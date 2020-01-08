.class public final Lcom/meizu/flyme/media/news/data/NewsLiteDataConverters;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extendFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 33
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;

    return-object v0
.end method

.method public static extendToString(Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$Extend;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 13
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;

    return-object v0
.end method

.method public static imageInfoToString(Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$ImgInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 18
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 23
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;

    return-object v0
.end method

.method public static userToString(Lcom/meizu/flyme/media/news/data/NewsLiteArticleEntity$UserInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
