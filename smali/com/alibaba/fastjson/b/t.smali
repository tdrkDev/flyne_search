.class public Lcom/alibaba/fastjson/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/z;->c()Ljava/util/List;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/at;

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/b/at;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 14
    :cond_0
    return-object p3
.end method

.method public static b(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/z;->g()Ljava/util/List;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/af;

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/b/af;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_0
    return-object p2
.end method

.method public static c(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/z;->h()Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/ak;

    .line 138
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/b/ak;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 143
    goto :goto_0

    :cond_2
    move v0, v1

    .line 146
    goto :goto_0
.end method
