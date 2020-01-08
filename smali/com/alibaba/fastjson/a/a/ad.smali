.class public Lcom/alibaba/fastjson/a/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/a/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/a/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Type;

.field private e:Lcom/alibaba/fastjson/c/b;


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
    .line 43
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/a/a/ad;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->b:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/alibaba/fastjson/a/a/ad;->c:Ljava/lang/Class;

    .line 48
    iput-object p3, p0, Lcom/alibaba/fastjson/a/a/ad;->d:Ljava/lang/reflect/Type;

    .line 50
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/c/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/c;

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/a/a/ad;->b(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/ad;->a(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->a:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0xc

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")",
            "Lcom/alibaba/fastjson/a/a/u;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/a/i;->a(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    check-cast p2, Ljava/lang/Class;

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 86
    new-array v2, v2, [Ljava/lang/Class;

    aput-object p2, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    :cond_0
    :goto_0
    return-object v1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/b;->a()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 92
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/b;->a()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4

    .line 99
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 107
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/a/d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/c;

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->a()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 111
    :try_start_1
    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/a/a/ad;->c:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/a/a/ad;->c:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 124
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v9

    .line 126
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 127
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 128
    const/4 v1, 0x0

    .line 313
    :goto_0
    return-object v1

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v8

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v2, 0x0

    .line 136
    const/4 v6, 0x0

    .line 138
    :try_start_0
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 139
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/ad;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 310
    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_1
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto :goto_0

    .line 143
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_5

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_5

    .line 144
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "syntax error, expect {, actual "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ", pos "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 150
    instance-of v4, p3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 151
    const-string v4, ", fieldName "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 155
    :cond_3
    new-instance v4, Lcom/alibaba/fastjson/d;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v3, :cond_4

    .line 311
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_4
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v1

    .line 158
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->d()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v4, v3

    .line 164
    :cond_7
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v3

    .line 166
    if-nez v3, :cond_a

    .line 167
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_9

    .line 168
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v4

    .line 277
    :goto_3
    if-nez v2, :cond_23

    .line 278
    if-nez v6, :cond_1f

    .line 279
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/ad;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 310
    if-eqz v3, :cond_8

    .line 311
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_8
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_0

    .line 171
    :cond_9
    :try_start_5
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v5, 0x10

    if-ne v1, v5, :cond_a

    .line 172
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 178
    :cond_a
    const-string v1, "$ref"

    if-ne v1, v3, :cond_14

    .line 179
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 180
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_11

    .line 181
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v3

    .line 182
    const-string v1, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 183
    invoke-virtual {v8}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v2

    .line 212
    :goto_4
    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 213
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_12

    .line 214
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v3, "illegal ref"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :catchall_1
    move-exception v1

    move-object v3, v4

    goto/16 :goto_1

    .line 184
    :cond_b
    const-string v1, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 185
    invoke-virtual {v8}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 187
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    :goto_5
    move-object v2, v1

    .line 192
    goto :goto_4

    .line 189
    :cond_c
    new-instance v5, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v5, v1, v3}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    move-object v1, v2

    goto :goto_5

    .line 192
    :cond_d
    const-string v1, "$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v8

    .line 194
    :goto_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 195
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    goto :goto_6

    .line 198
    :cond_e
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 199
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 201
    :cond_f
    new-instance v5, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v5, v1, v3}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_4

    .line 205
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v1, v8, v3}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_4

    .line 209
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_12
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 218
    invoke-virtual {p1, v8, v2, p3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 310
    if-eqz v1, :cond_13

    .line 311
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_13
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 223
    :cond_14
    :try_start_6
    const-string v1, "@type"

    if-ne v1, v3, :cond_18

    .line 224
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 225
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_17

    .line 226
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v3

    .line 227
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 229
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_15

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 230
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .line 231
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v3, v4

    .line 232
    goto/16 :goto_3

    .line 237
    :cond_15
    invoke-static {v3}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 238
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v3

    .line 239
    invoke-interface {v3, p1, v1, p3}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    .line 310
    if-eqz v4, :cond_16

    .line 311
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_16
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_0

    .line 241
    :cond_17
    :try_start_7
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v3, "syntax error"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_18
    if-nez v2, :cond_24

    if-nez v6, :cond_24

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/ad;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 247
    if-nez v2, :cond_19

    .line 248
    new-instance v6, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 250
    :cond_19
    invoke-virtual {p1, v8, v2, p3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v4

    move-object v7, v4

    move-object v4, v2

    :goto_7
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 253
    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/a/a/ad;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    .line 254
    if-nez v1, :cond_1a

    .line 255
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_25

    .line 256
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v2, v4

    move-object v3, v7

    .line 257
    goto/16 :goto_3

    .line 263
    :cond_1a
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1b

    move-object v2, v4

    move-object v4, v7

    .line 264
    goto/16 :goto_2

    .line 267
    :cond_1b
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1c

    .line 268
    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move-object v2, v4

    move-object v3, v7

    .line 269
    goto/16 :goto_3

    .line 272
    :cond_1c
    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1d

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 273
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 310
    :catchall_2
    move-exception v1

    move-object v2, v4

    move-object v3, v7

    goto/16 :goto_1

    :cond_1e
    move-object v2, v4

    move-object v4, v7

    .line 275
    goto/16 :goto_2

    .line 283
    :cond_1f
    :try_start_9
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/b;->d()Ljava/util/List;

    move-result-object v5

    .line 284
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 285
    new-array v9, v7, [Ljava/lang/Object;

    .line 286
    const/4 v1, 0x0

    move v4, v1

    :goto_8
    if-ge v4, v7, :cond_20

    .line 287
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/c/c;

    .line 288
    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v9, v4

    .line 286
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    .line 291
    :cond_20
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/b;->b()Ljava/lang/reflect/Constructor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_22

    .line 293
    :try_start_a
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/b;->b()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    .line 310
    :goto_9
    if-eqz v3, :cond_21

    .line 311
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 313
    :cond_21
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    :try_start_b
    new-instance v4, Lcom/alibaba/fastjson/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/b;->b()Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 298
    :cond_22
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/b;->c()Ljava/lang/reflect/Method;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_23

    .line 300
    :try_start_c
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/b;->c()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v1

    goto :goto_9

    .line 301
    :catch_1
    move-exception v1

    .line 302
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/a/a/ad;->e:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/b;->c()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_23
    move-object v1, v2

    goto :goto_9

    :cond_24
    move-object v7, v4

    move-object v4, v2

    goto/16 :goto_7

    :cond_25
    move-object v2, v4

    move-object v4, v7

    goto/16 :goto_2
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v3

    .line 321
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/u;

    .line 322
    if-nez v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ad;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/u;

    .line 330
    :cond_1
    if-nez v0, :cond_3

    .line 331
    sget-object v0, Lcom/alibaba/fastjson/a/d;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/a/ad;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->h()V

    .line 336
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    .line 338
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    .line 341
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/a/u;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 343
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/fastjson/a/a/u;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 345
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/a/a/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ad;->a:Ljava/util/Map;

    return-object v0
.end method
