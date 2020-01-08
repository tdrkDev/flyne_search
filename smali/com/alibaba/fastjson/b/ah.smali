.class public Lcom/alibaba/fastjson/b/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/b/ah;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/ah;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/ah;->a:Lcom/alibaba/fastjson/b/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v4

    .line 35
    if-nez p2, :cond_1

    .line 36
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "[]"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    const-string v0, "[]"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v6

    .line 52
    invoke-virtual {p1, v6, p2, p3}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    const/16 v2, 0x5b

    :try_start_0
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 59
    sget-object v2, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->d()V

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 62
    :goto_1
    if-ge v0, v5, :cond_4

    .line 63
    if-eqz v0, :cond_3

    .line 64
    const/16 v1, 0x2c

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 67
    :cond_3
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->e()V

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->f()V

    .line 72
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    goto :goto_0

    :cond_5
    move v3, v0

    move-object v0, v1

    .line 76
    :goto_2
    if-ge v3, v5, :cond_9

    .line 77
    :try_start_1
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 79
    if-eqz v3, :cond_6

    .line 80
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 83
    :cond_6
    if-nez v7, :cond_7

    .line 84
    const-string v2, "null"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    .line 76
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 88
    if-ne v2, v1, :cond_8

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v0, p1, v7, v2, v8}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    throw v0

    .line 92
    :cond_8
    :try_start_2
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v0

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {v0, p1, v7, v1, v8}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v1, v2

    goto :goto_3

    .line 99
    :cond_9
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/al;)V

    goto/16 :goto_0
.end method
