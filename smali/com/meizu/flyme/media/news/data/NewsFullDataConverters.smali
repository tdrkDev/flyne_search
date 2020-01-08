.class public final Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;
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

.method public static adConfigFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;

    return-object v0
.end method

.method public static adConfigToString(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$AdConfig;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static configFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;

    return-object v0
.end method

.method public static configToString(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$Config;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extendFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$Extend;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 33
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$Extend;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$Extend;

    return-object v0
.end method

.method public static extendToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$Extend;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static imageInfoFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 13
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    return-object v0
.end method

.method public static imageInfoToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 18
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static moreConfigFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 53
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;

    return-object v0
.end method

.method public static moreConfigToString(Lcom/meizu/flyme/media/news/data/NewsFullConfigEntity$MoreConfig;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userFromString(Ljava/lang/String;)Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 23
    const-class v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    return-object v0
.end method

.method public static userToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
