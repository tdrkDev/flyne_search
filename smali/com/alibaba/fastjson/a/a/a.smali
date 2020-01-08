.class public abstract Lcom/alibaba/fastjson/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x4

    const/4 v3, 0x2

    const/16 v4, 0x10

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 20
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a/a/a;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 22
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 26
    sget-object v2, Lcom/alibaba/fastjson/a/d;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 34
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->d()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 36
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 38
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 39
    const-string v0, "val"

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 40
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 47
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 51
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_0

    .line 44
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
