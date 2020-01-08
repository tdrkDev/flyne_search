.class public Lcom/alibaba/fastjson/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# instance fields
.field private final a:[Lcom/alibaba/fastjson/b/r;

.field private final b:[Lcom/alibaba/fastjson/b/r;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/b/ab;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/c;

    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ab;->a(Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/b/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/b/r;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/b/r;

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ab;->a:[Lcom/alibaba/fastjson/b/r;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/c;

    .line 77
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ab;->a(Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/b/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/b/r;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/b/r;

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ab;->b:[Lcom/alibaba/fastjson/b/r;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/b/r;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->a()Ljava/lang/Class;

    move-result-object v0

    .line 201
    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v0, Lcom/alibaba/fastjson/b/ag;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/b/ag;-><init>(Lcom/alibaba/fastjson/c/c;)V

    .line 205
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/b/ai;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/b/ai;-><init>(Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0
.end method

.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/b/z;->c(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v4

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {v4}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 192
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/b/ab;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->SortField:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ab;->b:[Lcom/alibaba/fastjson/b/r;

    .line 109
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v5

    .line 110
    invoke-virtual {p1, v5, p2, p3}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/16 v1, 0x7b

    :try_start_0
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 115
    array-length v1, v0

    if-lez v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->d()V

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 122
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/alibaba/fastjson/b/ab;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 124
    if-eq v1, p4, :cond_c

    .line 125
    const-string v1, "@type"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    move v1, v2

    .line 131
    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_a

    .line 132
    aget-object v6, v0, v3

    .line 134
    sget-object v7, Lcom/alibaba/fastjson/b/ap;->SkipTransientField:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->b()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 136
    if-eqz v7, :cond_5

    .line 137
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 131
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ab;->a:[Lcom/alibaba/fastjson/b/r;

    goto :goto_1

    .line 143
    :cond_5
    :try_start_1
    invoke-virtual {v6, p2}, Lcom/alibaba/fastjson/b/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 145
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2, v8, v7}, Lcom/alibaba/fastjson/b/t;->c(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 149
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2, v8, v7}, Lcom/alibaba/fastjson/b/t;->b(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, p2, v9, v7}, Lcom/alibaba/fastjson/b/t;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 154
    if-nez v9, :cond_6

    .line 155
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->a()Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/alibaba/fastjson/b/ap;->WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 161
    :cond_6
    if-eqz v1, :cond_7

    .line 162
    const/16 v1, 0x2c

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 163
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 168
    :cond_7
    invoke-virtual {v6}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v1

    if-eq v8, v1, :cond_8

    .line 169
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    :goto_4
    move v1, v2

    .line 178
    goto :goto_3

    .line 171
    :cond_8
    if-eq v7, v9, :cond_9

    .line 172
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/b/r;->a(Lcom/alibaba/fastjson/b/z;)V

    .line 173
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v2, "write javaBean error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    throw v0

    .line 175
    :cond_9
    :try_start_3
    invoke-virtual {v6, p1, v9}, Lcom/alibaba/fastjson/b/r;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;)V

    goto :goto_4

    .line 181
    :cond_a
    array-length v0, v0

    if-lez v0, :cond_b

    sget-object v0, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->e()V

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 186
    :cond_b
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto/16 :goto_2
.end method

.method protected a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
