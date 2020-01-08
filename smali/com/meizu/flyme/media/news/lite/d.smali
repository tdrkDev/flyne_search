.class public Lcom/meizu/flyme/media/news/lite/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const/4 v1, 0x1

    .line 163
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 164
    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x0

    move v2, v1

    .line 170
    :goto_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 173
    goto :goto_0

    .line 167
    :cond_0
    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 178
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getExposeUrls()Ljava/util/List;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isNeedExposureEvent()I

    move-result v0

    .line 42
    if-ne v0, v2, :cond_0

    .line 43
    const-string v0, "exposure"

    .line 44
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getEntityUniqId()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    .line 46
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCategoryId()I

    move-result v3

    .line 47
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getExtent()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/meizu/flyme/media/news/lite/f;->h(I)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v8

    const/4 v9, -0x1

    .line 43
    invoke-static/range {v0 .. v9}, Lcom/meizu/flyme/media/news/lite/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/meizu/flyme/media/news/helper/e;->a(Ljava/lang/String;Ljava/util/Map;)[B

    .line 58
    const-string v2, "NewsFullCpReport"

    const-string v3, "reportExposureToCp exposeUrl=\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "NewsFullCpReport"

    const-string v3, "reportExposureToCp"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 112
    const-string v0, ""

    .line 114
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 115
    const-string v1, "logType"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "entityUniqId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "contentType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "categoryId"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "fromPage"

    invoke-virtual {v0, v1, p6}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    if-lez p9, :cond_0

    .line 126
    const-string v1, "timeElapsed"

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 130
    const-string v2, "imei"

    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "sn"

    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "openudid"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v3, Landroid/util/Pair;

    const-string v4, "channelId"

    invoke-direct {v3, v4, p7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Landroid/util/Pair;

    const-string v4, "cpId"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v3, Landroid/util/Pair;

    const-string v4, "realLog"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Landroid/util/Pair;

    const-string v3, "clientInfo"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v3, "Charset"

    const-string v4, "UTF-8"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v3, "Content-Length"

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "http://open-iflow.meizu.com/open/api/content/realLog"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v1, v4}, Lcom/meizu/flyme/media/news/helper/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)[B

    .line 151
    const-string v0, "NewsFullCpReport"

    const-string v1, "realLogReport:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/meizu/flyme/media/news/helper/NewsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "NewsFullCpReport"

    const-string v2, "request e=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string v1, "NewsFullCpReport"

    const-string v2, "request e=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(ILcom/meizu/flyme/media/news/lite/NewsFullArticleBean;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getClickUrls()Ljava/util/List;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->isNeedClickEvent()I

    move-result v0

    .line 76
    if-ne v0, v2, :cond_0

    .line 77
    const-string v0, "click"

    .line 78
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getEntityUniqId()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getSubType()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCategoryId()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getExtent()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/media/news/lite/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/meizu/flyme/media/news/lite/f;->h(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {p1}, Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;->getCpId()I

    move-result v8

    const/4 v9, -0x1

    .line 77
    invoke-static/range {v0 .. v9}, Lcom/meizu/flyme/media/news/lite/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/meizu/flyme/media/news/helper/e;->a(Ljava/lang/String;Ljava/util/Map;)[B

    .line 92
    const-string v2, "NewsFullCpReport"

    const-string v3, "reportClickToCp clickUrl=\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "NewsFullCpReport"

    const-string v3, "reportClickToCp"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
