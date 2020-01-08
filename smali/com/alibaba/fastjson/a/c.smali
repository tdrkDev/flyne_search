.class public Lcom/alibaba/fastjson/a/c;
.super Lcom/alibaba/fastjson/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/a/c$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Lcom/alibaba/fastjson/a/j;

.field protected c:Lcom/alibaba/fastjson/a/i;

.field protected final d:Lcom/alibaba/fastjson/a/e;

.field protected e:Lcom/alibaba/fastjson/a/h;

.field private f:Lcom/alibaba/fastjson/a/a/s;

.field private h:Ljava/lang/String;

.field private i:Ljava/text/DateFormat;

.field private j:[Lcom/alibaba/fastjson/a/h;

.field private k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    .line 96
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/a/c;->g:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/a/e;Lcom/alibaba/fastjson/a/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/alibaba/fastjson/a/a;-><init>()V

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/a/a/s;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/a/s;

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/lang/String;

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/a/h;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    .line 85
    iput v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->l:Ljava/util/List;

    .line 93
    iput v1, p0, Lcom/alibaba/fastjson/a/c;->m:I

    .line 154
    iput-object p2, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    .line 155
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c;->a:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    .line 157
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/i;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    .line 159
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/a/e;Lcom/alibaba/fastjson/a/i;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;I)V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/a/e;Lcom/alibaba/fastjson/a/i;)V

    .line 147
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/a/i;I)V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/a/e;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/a/e;Lcom/alibaba/fastjson/a/i;)V

    .line 151
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/a/h;I)V
    .locals 6

    .prologue
    .line 992
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->k:I

    if-ge p2, v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    aget-object v0, v0, p2

    .line 994
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 995
    iget v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    add-int/lit8 v1, v1, -0x1

    .line 996
    if-eq p2, v1, :cond_0

    .line 997
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    sub-int v5, v1, p2

    invoke-static {v2, v3, v4, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1000
    iget v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    .line 1002
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;I)V

    .line 992
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1005
    :cond_2
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/a/h;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1008
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    .line 1009
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 1011
    new-array v1, v1, [Lcom/alibaba/fastjson/a/h;

    .line 1012
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    iput-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    aput-object p1, v1, v0

    .line 1016
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 969
    sget-object v0, Lcom/alibaba/fastjson/a/d;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 974
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/a/c;->k:I

    if-ge v0, v2, :cond_1

    .line 975
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    aget-object v2, v2, v0

    .line 976
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/h;->c()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_2

    .line 977
    iput-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    .line 978
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/Object;)V

    .line 979
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;I)V

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/e;->a(Z)V

    .line 988
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    goto :goto_0

    .line 974
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/a/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/h;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    .line 986
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/c;->b(Lcom/alibaba/fastjson/a/h;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;
    .locals 1

    .prologue
    .line 961
    sget-object v0, Lcom/alibaba/fastjson/a/d;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x12

    const/16 v3, 0xa

    .line 1023
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 1024
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1093
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 1027
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1028
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1088
    :cond_0
    :goto_0
    return-object v0

    .line 1031
    :pswitch_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 1032
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1033
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 1036
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 1037
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 1040
    :pswitch_4
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 1041
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1043
    :pswitch_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v0

    .line 1044
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    goto :goto_0

    .line 1047
    :pswitch_6
    sget-object v0, Lcom/alibaba/fastjson/a/d;->UseBigDecimal:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/e;->b(Z)Ljava/lang/Number;

    move-result-object v0

    .line 1048
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    goto :goto_0

    .line 1051
    :pswitch_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 1052
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 1054
    sget-object v2, Lcom/alibaba/fastjson/a/d;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1063
    :pswitch_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    goto :goto_0

    .line 1066
    :pswitch_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 1067
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1069
    :pswitch_a
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 1070
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1072
    :pswitch_b
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 1074
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1075
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_1
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 1079
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 1080
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1081
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 1083
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 1085
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1087
    :pswitch_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1090
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unterminated json string, pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 782
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    if-ge v0, v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 788
    :goto_1
    return-object v0

    .line 782
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 463
    :goto_0
    return-object v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 463
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v1}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    throw v0

    .line 466
    :catch_1
    move-exception v0

    .line 467
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x22

    const/16 v9, 0xd

    const/4 v2, 0x1

    const/16 v8, 0x10

    .line 175
    iget-object v5, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    .line 177
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 178
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    .line 183
    const/4 v1, 0x0

    move v0, v1

    .line 185
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 186
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v1

    .line 187
    sget-object v4, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    :goto_1
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_1

    .line 189
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 190
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 191
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v1

    goto :goto_1

    .line 195
    :cond_1
    const/4 v4, 0x0

    .line 197
    if-ne v1, v10, :cond_2

    .line 198
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    const/16 v6, 0x22

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 200
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v6

    .line 201
    if-eq v6, v11, :cond_2f

    .line 202
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v0

    .line 204
    :cond_2
    const/16 v6, 0x7d

    if-ne v1, v6, :cond_3

    .line 205
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 206
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 207
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    :goto_2
    return-object p1

    .line 209
    :cond_3
    const/16 v6, 0x27

    if-ne v1, v6, :cond_5

    .line 210
    :try_start_2
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    const/16 v6, 0x27

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 216
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v6

    .line 217
    if-eq v6, v11, :cond_2f

    .line 218
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_5
    const/16 v6, 0x1a

    if-ne v1, v6, :cond_6

    .line 221
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_6
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_7

    .line 223
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_7
    const/16 v6, 0x30

    if-lt v1, v6, :cond_8

    const/16 v6, 0x39

    if-le v1, v6, :cond_9

    :cond_8
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_b

    .line 225
    :cond_9
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 226
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->u()V

    .line 227
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_a

    .line 228
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v1

    .line 232
    :goto_3
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v6

    .line 233
    if-eq v6, v11, :cond_30

    .line 234
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_a
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/a/e;->b(Z)Ljava/lang/Number;

    move-result-object v1

    goto :goto_3

    .line 236
    :cond_b
    const/16 v6, 0x7b

    if-eq v1, v6, :cond_c

    const/16 v6, 0x5b

    if-ne v1, v6, :cond_e

    .line 237
    :cond_c
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    .line 253
    :goto_4
    if-nez v1, :cond_d

    .line 254
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 255
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 258
    :cond_d
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v6

    .line 260
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 262
    const-string v1, "@type"

    if-ne v4, v1, :cond_13

    .line 263
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    const/16 v4, 0x22

    invoke-virtual {v5, v1, v4}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 266
    if-nez v4, :cond_10

    .line 267
    const-string v4, "@type"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 241
    :cond_e
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 242
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 247
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v6

    .line 248
    if-eq v6, v11, :cond_2f

    .line 249
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_10
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 272
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v9, :cond_11

    .line 273
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p1

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    :try_start_4
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 281
    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    if-eqz v0, :cond_12

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_12

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->i()V

    .line 287
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 288
    invoke-interface {v0, p0, v4, p2}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p1

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 291
    :cond_13
    :try_start_5
    const-string v1, "$ref"

    if-ne v4, v1, :cond_1d

    .line 292
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 293
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 294
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v2

    .line 295
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 297
    const/4 v0, 0x0

    .line 298
    const-string v1, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    .line 327
    :goto_5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v9, :cond_1b

    .line 328
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_14
    const-string v1, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 303
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    move-object p1, v0

    .line 310
    goto :goto_5

    .line 307
    :cond_15
    new-instance v4, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 308
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_6

    .line 310
    :cond_16
    const-string v1, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v1, v3

    .line 312
    :goto_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 313
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    goto :goto_7

    .line 316
    :cond_17
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 317
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 322
    goto :goto_5

    .line 319
    :cond_18
    new-instance v4, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 320
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_8

    .line 323
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 324
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    :cond_1a
    move-object p1, v0

    goto :goto_5

    .line 330
    :cond_1b
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 334
    :cond_1c
    :try_start_6
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal ref, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1d
    if-nez v0, :cond_2e

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    move v1, v2

    .line 344
    :goto_9
    if-ne v6, v10, :cond_1f

    .line 345
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->m()V

    .line 346
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 349
    sget-object v6, Lcom/alibaba/fastjson/a/d;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 350
    new-instance v6, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v6, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v6}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 352
    invoke-virtual {v6}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 356
    :cond_1e
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :goto_a
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 416
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v0

    .line 417
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_2c

    .line 418
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->i()V

    move v0, v1

    .line 419
    goto/16 :goto_0

    .line 357
    :cond_1f
    const/16 v0, 0x30

    if-lt v6, v0, :cond_20

    const/16 v0, 0x39

    if-le v6, v0, :cond_21

    :cond_20
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_23

    .line 358
    :cond_21
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->u()V

    .line 359
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_22

    .line 360
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v0

    .line 365
    :goto_b
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 362
    :cond_22
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->E()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_b

    .line 366
    :cond_23
    const/16 v0, 0x5b

    if-ne v6, v0, :cond_26

    .line 367
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 368
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 369
    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 371
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v9, :cond_24

    .line 374
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 376
    :cond_24
    :try_start_7
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v8, :cond_25

    move v0, v1

    .line 377
    goto/16 :goto_0

    .line 379
    :cond_25
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_26
    const/16 v0, 0x7b

    if-ne v6, v0, :cond_29

    .line 382
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 383
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 386
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {p0, v3, v0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    .line 390
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v9, :cond_27

    .line 391
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 393
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 395
    :cond_27
    :try_start_8
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v8, :cond_28

    move v0, v1

    .line 396
    goto/16 :goto_0

    .line 398
    :cond_28
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_29
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 403
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v9, :cond_2a

    .line 406
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 408
    :cond_2a
    :try_start_9
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v8, :cond_2b

    move v0, v1

    .line 409
    goto/16 :goto_0

    .line 411
    :cond_2b
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, position at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2c
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_2d

    .line 421
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 422
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 423
    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_2

    .line 429
    :cond_2d
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, position at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_2e
    move v1, v0

    goto/16 :goto_9

    :cond_2f
    move-object v12, v1

    move v1, v4

    move-object v4, v12

    goto/16 :goto_4

    :cond_30
    move-object v12, v1

    move v1, v4

    move-object v4, v12

    goto/16 :goto_4
.end method

.method public a()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Ljava/text/DateFormat;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Ljava/text/DateFormat;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 778
    iput p1, p0, Lcom/alibaba/fastjson/a/c;->m:I

    .line 779
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/a/c$a;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/a/h;)V
    .locals 1

    .prologue
    .line 944
    sget-object v0, Lcom/alibaba/fastjson/a/d;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 947
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 479
    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x4

    const/16 v7, 0x10

    .line 488
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    .line 493
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exepct \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    .line 498
    sget-object v0, Lcom/alibaba/fastjson/a/a/z;->a:Lcom/alibaba/fastjson/a/a/z;

    .line 499
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 508
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v4

    .line 509
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    .line 511
    const/4 v1, 0x0

    move v3, v1

    .line 512
    :goto_1
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 513
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 514
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 559
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v0

    .line 500
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_4

    .line 501
    sget-object v0, Lcom/alibaba/fastjson/a/a/aq;->a:Lcom/alibaba/fastjson/a/a/aq;

    .line 502
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 519
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_6

    .line 559
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 562
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 563
    return-void

    .line 523
    :cond_6
    :try_start_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_8

    .line 524
    invoke-static {p0}, Lcom/alibaba/fastjson/a/a/z;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v1

    .line 525
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 553
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-ne v1, v7, :cond_7

    .line 554
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 511
    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 526
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v1, p1, :cond_b

    .line 528
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 529
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v1

    .line 530
    iget-object v5, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 540
    :goto_4
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 532
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v1

    .line 533
    if-nez v1, :cond_a

    move-object v1, v2

    .line 534
    goto :goto_4

    .line 536
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 543
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    .line 544
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v1, v2

    .line 549
    :goto_5
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    goto :goto_3

    .line 547
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_5
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 793
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 794
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 795
    check-cast p1, Ljava/util/List;

    .line 796
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->h()Lcom/alibaba/fastjson/a/c$a;

    move-result-object v1

    .line 797
    new-instance v2, Lcom/alibaba/fastjson/a/a/af;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/fastjson/a/a/af;-><init>(Lcom/alibaba/fastjson/a/c;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/a/u;)V

    .line 798
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 801
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x4

    const/16 v6, 0x10

    .line 832
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 834
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v3, 0x15

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_1

    .line 835
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 838
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_2

    .line 839
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect [, actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pos "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_2
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    move v1, v0

    .line 848
    :goto_0
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 849
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 850
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 923
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v0

    .line 856
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 910
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 914
    :cond_4
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    .line 917
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 918
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 847
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 858
    :pswitch_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v0

    .line 859
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 862
    :pswitch_2
    sget-object v0, Lcom/alibaba/fastjson/a/d;->UseBigDecimal:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 863
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(Z)Ljava/lang/Number;

    move-result-object v0

    .line 867
    :goto_3
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 865
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(Z)Ljava/lang/Number;

    move-result-object v0

    goto :goto_3

    .line 870
    :pswitch_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 871
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 873
    sget-object v4, Lcom/alibaba/fastjson/a/d;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 874
    new-instance v4, Lcom/alibaba/fastjson/a/e;

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->F()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 876
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_2

    .line 886
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 887
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 890
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 891
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 894
    :pswitch_6
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 898
    :pswitch_7
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 899
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 903
    :pswitch_8
    const/4 v0, 0x0

    .line 904
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto/16 :goto_2

    .line 907
    :pswitch_9
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    return-void

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 805
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 806
    new-instance v0, Lcom/alibaba/fastjson/a/a/ak;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/a/a/ak;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->h()Lcom/alibaba/fastjson/a/c$a;

    move-result-object v1

    .line 808
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/a/u;)V

    .line 809
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 812
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/a/d;)Z
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    return v0
.end method

.method public a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v10, 0xf

    const/16 v9, 0x10

    .line 566
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 676
    :goto_0
    return-object v4

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    .line 572
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_1
    array-length v0, p1

    new-array v5, v0, [Ljava/lang/Object;

    .line 576
    array-length v0, p1

    if-nez v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 579
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v10, :cond_2

    .line 580
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 584
    new-array v4, v3, [Ljava/lang/Object;

    goto :goto_0

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move v2, v3

    .line 589
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 594
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move-object v0, v4

    .line 653
    :goto_2
    aput-object v0, v5, v2

    .line 655
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_f

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v10, :cond_12

    .line 671
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_5
    aget-object v1, p1, v2

    .line 597
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_6

    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_8

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 599
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 602
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 603
    iget-object v6, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 605
    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_a

    .line 606
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_9

    .line 607
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_2

    .line 610
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 611
    iget-object v6, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 616
    :cond_a
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_13

    .line 617
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_13

    move-object v0, v1

    .line 618
    check-cast v0, Ljava/lang/Class;

    .line 619
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v6

    .line 620
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 625
    :goto_3
    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_e

    .line 626
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget-object v7, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 629
    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v7

    .line 631
    iget-object v8, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v8

    if-eq v8, v10, :cond_c

    .line 633
    :goto_4
    invoke-interface {v0, p0, v1, v4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 634
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v8, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v8

    if-ne v8, v9, :cond_b

    .line 637
    iget-object v8, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_4

    .line 638
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 646
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-static {v6, v1, v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 641
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 649
    invoke-interface {v0, p0, v1, v4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 659
    :cond_f
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v9, :cond_10

    .line 660
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_10
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_11

    .line 664
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 589
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 666
    :cond_11
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_5

    .line 674
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move-object v4, v5

    .line 676
    goto/16 :goto_0

    :cond_13
    move-object v0, v4

    move v6, v3

    goto/16 :goto_3
.end method

.method public b()Lcom/alibaba/fastjson/a/j;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->b:Lcom/alibaba/fastjson/a/j;

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1112
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 1117
    return-void

    .line 1114
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method public c()Lcom/alibaba/fastjson/a/i;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->c:Lcom/alibaba/fastjson/a/i;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->m:I

    return v0
.end method

.method public e()Lcom/alibaba/fastjson/e;
    .locals 1

    .prologue
    .line 820
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 821
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;)Ljava/lang/Object;

    .line 822
    return-object v0
.end method

.method public f()Lcom/alibaba/fastjson/a/h;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/a/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public h()Lcom/alibaba/fastjson/a/c$a;
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/c$a;

    return-object v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 951
    sget-object v0, Lcom/alibaba/fastjson/a/d;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/h;

    .line 956
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:[Lcom/alibaba/fastjson/a/h;

    iget v1, p0, Lcom/alibaba/fastjson/a/c;->k:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 957
    iget v0, p0, Lcom/alibaba/fastjson/a/c;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/c;->k:I

    goto :goto_0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/alibaba/fastjson/a/e;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->d:Lcom/alibaba/fastjson/a/e;

    return-object v0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 1123
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AutoCloseSource:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->I()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->I()V

    .line 1131
    return-void
.end method
