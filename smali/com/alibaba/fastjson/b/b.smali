.class public Lcom/alibaba/fastjson/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/alibaba/fastjson/b/aj;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/b/aj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/b/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson/b/b;->a:Ljava/lang/Class;

    .line 33
    iput-object p2, p0, Lcom/alibaba/fastjson/b/b;->b:Lcom/alibaba/fastjson/b/aj;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v1

    .line 40
    if-nez p2, :cond_1

    .line 41
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "[]"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v2

    .line 49
    invoke-virtual {p1, v2, p2, p3}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 56
    instance-of v3, p2, [Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 57
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 58
    :goto_1
    if-ge v0, v3, :cond_9

    .line 59
    if-eqz v0, :cond_2

    .line 60
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 62
    :cond_2
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    const-string v4, "null"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    .line 58
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/b/b;->a:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 67
    iget-object v5, p0, Lcom/alibaba/fastjson/b/b;->b:Lcom/alibaba/fastjson/b/aj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v4, v6, v7}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    throw v0

    .line 69
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v5

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v4, v6, v7}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 75
    :cond_5
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 76
    array-length v3, p2

    .line 77
    :goto_3
    if-ge v0, v3, :cond_9

    .line 78
    if-eqz v0, :cond_6

    .line 79
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 81
    :cond_6
    aget-object v4, p2, v0

    .line 83
    if-nez v4, :cond_7

    .line 84
    const-string v4, "null"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    .line 77
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 85
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/b/b;->a:Ljava/lang/Class;

    if-ne v5, v6, :cond_8

    .line 86
    iget-object v5, p0, Lcom/alibaba/fastjson/b/b;->b:Lcom/alibaba/fastjson/b/aj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v4, v6, v7}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 88
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v5

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v4, v6, v7}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 95
    :cond_9
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    goto/16 :goto_0
.end method
