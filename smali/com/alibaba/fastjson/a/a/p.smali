.class public Lcom/alibaba/fastjson/a/a/p;
.super Lcom/alibaba/fastjson/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/a/a/p;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/p;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/p;->a:Lcom/alibaba/fastjson/a/a/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/fastjson/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method protected a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p4, :cond_1

    move-object p4, v0

    .line 46
    :cond_0
    :goto_0
    return-object p4

    .line 23
    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 25
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 26
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    .line 27
    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 28
    check-cast p4, Ljava/lang/String;

    .line 29
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    move-object p4, v0

    .line 30
    goto :goto_0

    .line 33
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v0, p4}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->a()Ljava/text/DateFormat;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 45
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 49
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
