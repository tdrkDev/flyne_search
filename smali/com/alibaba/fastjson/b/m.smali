.class public Lcom/alibaba/fastjson/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/b/m;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/m;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/m;->a:Lcom/alibaba/fastjson/b/m;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v1

    .line 36
    if-nez p2, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 123
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/Date;

    if-ne v0, v2, :cond_1

    .line 44
    const-string v0, "new Date("

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 45
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/16 v0, 0x29

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson/b/ao;->a(JC)V

    goto :goto_0

    .line 47
    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 48
    const-string v0, "@type"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/String;)V

    .line 50
    const/16 v0, 0x2c

    const-string v2, "val"

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/alibaba/fastjson/b/ao;->a(CLjava/lang/String;J)V

    .line 51
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0

    .line 57
    :cond_2
    check-cast p2, Ljava/util/Date;

    .line 59
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->a()Ljava/text/DateFormat;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 67
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseISO8601DateFormat:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    .line 74
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 78
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 79
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 80
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 81
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 82
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 83
    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 86
    if-eqz v8, :cond_5

    .line 87
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 88
    const/16 v9, 0x17

    invoke-static {v8, v9, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 89
    const/16 v8, 0x13

    invoke-static {v7, v8, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 90
    const/16 v7, 0x10

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 91
    const/16 v6, 0xd

    invoke-static {v5, v6, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 92
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 93
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 94
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 113
    :goto_2
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->write([C)V

    .line 115
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    goto/16 :goto_0

    .line 71
    :cond_4
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    goto :goto_1

    .line 97
    :cond_5
    if-nez v7, :cond_6

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    .line 98
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 99
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 100
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 101
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    goto :goto_2

    .line 103
    :cond_6
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 104
    const/16 v8, 0x13

    invoke-static {v7, v8, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 105
    const/16 v7, 0x10

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 106
    const/16 v6, 0xd

    invoke-static {v5, v6, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 107
    const/16 v5, 0xa

    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 108
    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 109
    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    goto :goto_2

    .line 118
    :cond_7
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    goto/16 :goto_0

    .line 121
    :cond_8
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/b/ao;->a(J)V

    goto/16 :goto_0
.end method
