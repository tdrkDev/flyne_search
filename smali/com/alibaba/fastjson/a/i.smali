.class public Lcom/alibaba/fastjson/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/alibaba/fastjson/a/i;


# instance fields
.field protected final a:Lcom/alibaba/fastjson/a/j;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/alibaba/fastjson/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/c/e",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/a/am;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/fastjson/a/a/s;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/alibaba/fastjson/a/i;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/i;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/i;->c:Lcom/alibaba/fastjson/a/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/c/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/e;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    .line 118
    new-instance v0, Lcom/alibaba/fastjson/a/a/s;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/s;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/a/i;->f:Z

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/a/j;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/j;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/i;->a:Lcom/alibaba/fastjson/a/j;

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/sql/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/sql/Time;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    const-class v1, Ljava/sql/Timestamp;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/a/a/q;->a:Lcom/alibaba/fastjson/a/a/q;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/alibaba/fastjson/a/a/au;->a:Lcom/alibaba/fastjson/a/a/au;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ao;->a:Lcom/alibaba/fastjson/a/a/ao;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/alibaba/fastjson/a/a/at;->a:Lcom/alibaba/fastjson/a/a/at;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/a/a/p;->a:Lcom/alibaba/fastjson/a/a/p;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/a/a/k;->a:Lcom/alibaba/fastjson/a/a/k;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Lcom/alibaba/fastjson/e;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ac;->a:Lcom/alibaba/fastjson/a/a/ac;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Lcom/alibaba/fastjson/b;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ab;->a:Lcom/alibaba/fastjson/a/a/ab;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ae;->a:Lcom/alibaba/fastjson/a/a/ae;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/a/a/aq;->a:Lcom/alibaba/fastjson/a/a/aq;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/m;->a:Lcom/alibaba/fastjson/a/a/m;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/a/a/m;->a:Lcom/alibaba/fastjson/a/a/m;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/z;->a:Lcom/alibaba/fastjson/a/a/z;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/a/a/z;->a:Lcom/alibaba/fastjson/a/a/z;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ah;->a:Lcom/alibaba/fastjson/a/a/ah;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ah;->a:Lcom/alibaba/fastjson/a/a/ah;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/a/a/h;->a:Lcom/alibaba/fastjson/a/a/h;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/a/a/g;->a:Lcom/alibaba/fastjson/a/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/w;->a:Lcom/alibaba/fastjson/a/a/w;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/a/a/w;->a:Lcom/alibaba/fastjson/a/a/w;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/i;->a:Lcom/alibaba/fastjson/a/a/i;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/a/a/i;->a:Lcom/alibaba/fastjson/a/a/i;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/a/a/n;->a:Lcom/alibaba/fastjson/a/a/n;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, [C

    sget-object v2, Lcom/alibaba/fastjson/a/a/l;->a:Lcom/alibaba/fastjson/a/a/l;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ag;->a:Lcom/alibaba/fastjson/a/a/ag;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/alibaba/fastjson/a/a/x;->a:Lcom/alibaba/fastjson/a/a/x;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/alibaba/fastjson/a/a/x;->a:Lcom/alibaba/fastjson/a/a/x;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/alibaba/fastjson/a/a/x;->a:Lcom/alibaba/fastjson/a/a/x;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/alibaba/fastjson/a/a/y;->a:Lcom/alibaba/fastjson/a/a/y;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/fastjson/a/a/v;->a:Lcom/alibaba/fastjson/a/a/v;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/a/a/an;->a:Lcom/alibaba/fastjson/a/a/an;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/a/a/ap;->a:Lcom/alibaba/fastjson/a/a/ap;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/io/Serializable;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Cloneable;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/lang/Comparable;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    const-class v1, Ljava/io/Closeable;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public static a()Lcom/alibaba/fastjson/a/i;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/fastjson/a/i;->c:Lcom/alibaba/fastjson/a/i;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 383
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :goto_1
    return-object v0

    .line 382
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 388
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/am;
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/a/a/am;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/am;

    .line 267
    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    if-nez p2, :cond_d

    move-object v1, p1

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/am;

    .line 276
    if-nez v0, :cond_0

    .line 280
    instance-of v2, v1, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/am;

    .line 284
    :cond_3
    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    new-instance v0, Lcom/alibaba/fastjson/a/a/t;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/a/a/t;-><init>(Ljava/lang/Class;)V

    .line 314
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/a/am;)V

    goto :goto_0

    .line 290
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    sget-object v0, Lcom/alibaba/fastjson/a/a/b;->a:Lcom/alibaba/fastjson/a/a/b;

    goto :goto_0

    .line 292
    :cond_5
    const-class v0, Ljava/util/Set;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/util/HashSet;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/util/List;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_9

    .line 294
    :cond_6
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 295
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 296
    const-class v0, Ljava/lang/String;

    if-ne v2, v0, :cond_7

    .line 297
    sget-object v0, Lcom/alibaba/fastjson/a/a/c;->a:Lcom/alibaba/fastjson/a/a/c;

    goto :goto_2

    .line 299
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/a/a/e;

    invoke-direct {v0, p1, v2}, Lcom/alibaba/fastjson/a/a/e;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 302
    :cond_8
    sget-object v0, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    goto :goto_2

    .line 304
    :cond_9
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 305
    sget-object v0, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    goto :goto_2

    .line 306
    :cond_a
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 307
    sget-object v0, Lcom/alibaba/fastjson/a/a/aj;->a:Lcom/alibaba/fastjson/a/a/aj;

    goto :goto_2

    .line 308
    :cond_b
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 309
    new-instance v0, Lcom/alibaba/fastjson/a/a/as;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/a/a/as;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;)V

    goto :goto_2

    .line 311
    :cond_c
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/a/i;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    goto :goto_2

    :cond_d
    move-object v1, p2

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/am;

    .line 245
    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-object v0

    .line 249
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 250
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 254
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 255
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 256
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    goto :goto_0
.end method

.method public a(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")",
            "Lcom/alibaba/fastjson/a/a/u;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/a/i;->b(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/a/am;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->d:Lcom/alibaba/fastjson/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/a/a/am;"
        }
    .end annotation

    .prologue
    .line 324
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->e:Lcom/alibaba/fastjson/a/a/s;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/a/a/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/a/a/ad;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public b(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")",
            "Lcom/alibaba/fastjson/a/a/u;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/c;->a()Ljava/lang/Class;

    move-result-object v0

    .line 338
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 339
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/a/a/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/j;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    .line 366
    :goto_0
    return-object v0

    .line 342
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 343
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/a/a/aa;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/aa;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 346
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 347
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/a/a/ai;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/ai;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 350
    :cond_5
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 351
    new-instance v0, Lcom/alibaba/fastjson/a/a/ar;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/ar;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 354
    :cond_6
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_9

    .line 355
    :cond_7
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/c;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 356
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    .line 357
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 358
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_8

    .line 359
    new-instance v0, Lcom/alibaba/fastjson/a/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/d;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 363
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/a/a/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/f;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0

    .line 366
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/a/a/r;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/r;-><init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    goto :goto_0
.end method

.method public b()Lcom/alibaba/fastjson/a/j;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->a:Lcom/alibaba/fastjson/a/j;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/a/a/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 397
    instance-of v1, v0, Lcom/alibaba/fastjson/a/a/ad;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Lcom/alibaba/fastjson/a/a/ad;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/a/ad;->b()Ljava/util/Map;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
