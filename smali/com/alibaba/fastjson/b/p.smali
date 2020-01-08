.class public Lcom/alibaba/fastjson/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/b/p;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/p;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/p;->a:Lcom/alibaba/fastjson/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v5

    .line 15
    if-nez p2, :cond_1

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "[]"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    instance-of v2, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_8

    .line 27
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 28
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    move-object v2, v0

    :goto_1
    move-object v0, p2

    .line 32
    check-cast v0, Ljava/util/Enumeration;

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v6

    .line 35
    invoke-virtual {p1, v6, p2, p3}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    move v3, v1

    .line 40
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 42
    add-int/lit8 v4, v3, 0x1

    if-eqz v3, :cond_2

    .line 43
    const/16 v3, 0x2c

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    invoke-virtual {v5}, Lcom/alibaba/fastjson/b/ao;->a()V

    move v3, v4

    .line 48
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 53
    const-class v7, Ljava/lang/Integer;

    if-ne v3, v7, :cond_4

    .line 54
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/b/ao;->b(I)V

    move v3, v4

    .line 55
    goto :goto_2

    .line 58
    :cond_4
    const-class v7, Ljava/lang/Long;

    if-ne v3, v7, :cond_5

    .line 59
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/b/ao;->a(J)V

    .line 61
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    const/16 v1, 0x4c

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    move v3, v4

    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v3

    .line 68
    add-int/lit8 v7, v4, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, p1, v1, v7, v2}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move v3, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_6
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    throw v0

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    move-object v2, v0

    goto :goto_1
.end method
