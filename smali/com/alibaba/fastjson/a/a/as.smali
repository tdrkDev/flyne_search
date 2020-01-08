.class public Lcom/alibaba/fastjson/a/a/as;
.super Lcom/alibaba/fastjson/a/a/ad;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/ad;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v3, 0x0

    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 128
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 127
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_1

    move-object v2, v3

    .line 135
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 141
    goto :goto_1

    .line 145
    :cond_2
    if-eqz v0, :cond_3

    .line 146
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 157
    :goto_2
    return-object v0

    .line 149
    :cond_3
    if-eqz v2, :cond_4

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_2

    .line 153
    :cond_4
    if-eqz v3, :cond_5

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_2

    .line 157
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xc

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v5

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x0

    .line 37
    if-eqz p2, :cond_11

    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_11

    .line 38
    check-cast p2, Ljava/lang/Class;

    .line 39
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 44
    :goto_0
    const/4 v2, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v3, p2

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_6

    .line 53
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    .line 54
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 103
    :goto_2
    if-nez v3, :cond_10

    .line 104
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 120
    :cond_3
    return-object v0

    .line 29
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_6

    .line 58
    sget-object v7, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 66
    const-string v7, "@type"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 67
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 68
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move-object v3, v4

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    .line 92
    :goto_4
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/16 v7, 0x10

    if-ne v4, v7, :cond_e

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 93
    goto :goto_1

    .line 71
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_8
    const-string v7, "message"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 75
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v2, v3

    move-object v3, v4

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    .line 77
    :cond_9
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    .line 78
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 80
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_b
    const-string v7, "cause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 84
    const/4 v0, 0x0

    const-string v4, "cause"

    invoke-virtual {p0, p1, v0, v4}, Lcom/alibaba/fastjson/a/a/as;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    move-object v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_4

    .line 85
    :cond_c
    const-string v7, "stackTrace"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 86
    const-class v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    .line 89
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    .line 96
    :cond_e
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_f

    .line 97
    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 98
    goto/16 :goto_2

    :cond_f
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 100
    goto/16 :goto_1

    .line 107
    :cond_10
    :try_start_0
    invoke-direct {p0, v2, v4, v3}, Lcom/alibaba/fastjson/a/a/as;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    move-object p2, v0

    goto/16 :goto_0
.end method
