.class public Lcom/alibaba/fastjson/a/a/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/at;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/a/a/at;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/at;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/at;->a:Lcom/alibaba/fastjson/a/a/at;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    const/4 v1, 0x0

    const/16 v6, 0x10

    const/16 v5, 0xd

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 19
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 21
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->z()J

    move-result-wide v2

    .line 32
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 33
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 38
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V

    .line 64
    :cond_3
    :goto_0
    return-object v0

    .line 41
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-nez v0, :cond_5

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 47
    :cond_5
    instance-of v2, v0, Ljava/sql/Time;

    if-nez v2, :cond_3

    .line 49
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 50
    new-instance v1, Ljava/sql/Time;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_6
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 58
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 64
    :goto_1
    new-instance v2, Ljava/sql/Time;

    invoke-direct {v2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    .line 62
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 67
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
