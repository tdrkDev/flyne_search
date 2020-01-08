.class public Lcom/alibaba/fastjson/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/b/ae;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/ae;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/ae;->a:Lcom/alibaba/fastjson/b/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v12

    .line 37
    if-nez p2, :cond_0

    .line 38
    invoke-virtual {v12}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object/from16 v3, p2

    .line 42
    check-cast v3, Ljava/util/Map;

    .line 44
    sget-object v4, Lcom/alibaba/fastjson/b/ap;->SortField:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 45
    instance-of v4, v3, Ljava/util/SortedMap;

    if-nez v4, :cond_14

    instance-of v4, v3, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_14

    .line 47
    :try_start_0
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v4

    .line 54
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/b/z;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    move-object v6, v3

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v13

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    const/16 v3, 0x7b

    :try_start_1
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->d()V

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v7, 0x0

    .line 69
    const/4 v3, 0x1

    .line 71
    sget-object v4, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    const-string v3, "@type"

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    .line 74
    const/4 v3, 0x0

    .line 77
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v11, v3

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_4

    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 83
    :cond_4
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->h()Ljava/util/List;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    const/4 v10, 0x1

    .line 87
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/b/ak;

    .line 88
    move-object/from16 v0, p2

    invoke-interface {v5, v0, v3, v9}, Lcom/alibaba/fastjson/b/ak;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 89
    const/4 v5, 0x0

    .line 94
    :goto_3
    if-eqz v5, :cond_3

    .line 99
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->g()Ljava/util/List;

    move-result-object v5

    .line 100
    if-eqz v5, :cond_7

    .line 101
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v3

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/b/af;

    .line 102
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v5, v9}, Lcom/alibaba/fastjson/b/af;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v3

    .line 106
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->c()Ljava/util/List;

    move-result-object v3

    .line 107
    if-eqz v3, :cond_9

    .line 108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/b/at;

    .line 109
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v5, v9}, Lcom/alibaba/fastjson/b/at;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_9
    move-object v3, v9

    .line 113
    if-nez v3, :cond_a

    .line 114
    sget-object v9, Lcom/alibaba/fastjson/b/ap;->WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    :cond_a
    if-nez v11, :cond_b

    .line 120
    const/16 v9, 0x2c

    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 123
    :cond_b
    sget-object v9, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 126
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v12, v5, v9}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;Z)V

    move-object v9, v3

    .line 136
    :goto_6
    const/4 v10, 0x0

    .line 138
    if-nez v9, :cond_f

    .line 139
    invoke-virtual {v12}, Lcom/alibaba/fastjson/b/ao;->a()V

    move v11, v10

    .line 140
    goto/16 :goto_2

    .line 128
    :cond_d
    if-nez v11, :cond_e

    .line 129
    const/16 v3, 0x2c

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 132
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 133
    const/16 v3, 0x3a

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->a(C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 155
    :catchall_0
    move-exception v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    throw v3

    .line 143
    :cond_f
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 145
    if-ne v5, v8, :cond_10

    .line 146
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v9, v4, v3}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v3, v7

    move-object v4, v8

    :goto_7
    move v11, v10

    move-object v7, v3

    move-object v8, v4

    .line 153
    goto/16 :goto_2

    .line 149
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v3

    .line 151
    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9, v4, v7}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    goto :goto_7

    .line 155
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->e()V

    .line 159
    sget-object v3, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 162
    :cond_12
    const/16 v3, 0x7d

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto/16 :goto_0

    :cond_13
    move v5, v10

    goto/16 :goto_3

    :cond_14
    move-object v6, v3

    goto/16 :goto_1
.end method
