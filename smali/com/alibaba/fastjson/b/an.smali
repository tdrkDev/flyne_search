.class public Lcom/alibaba/fastjson/b/an;
.super Lcom/alibaba/fastjson/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/c/e",
        "<",
        "Ljava/lang/reflect/Type;",
        "Lcom/alibaba/fastjson/b/aj;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/alibaba/fastjson/b/an;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/alibaba/fastjson/b/an;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/an;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/an;->a:Lcom/alibaba/fastjson/b/an;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/b/an;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/c/e;-><init>(I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/b/an;->b:Z

    .line 71
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/b/e;->a:Lcom/alibaba/fastjson/b/e;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/e;->a:Lcom/alibaba/fastjson/b/e;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/b/i;->a:Lcom/alibaba/fastjson/b/i;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/b/ad;->a:Lcom/alibaba/fastjson/b/ad;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/ad;->a:Lcom/alibaba/fastjson/b/ad;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/b/u;->a:Lcom/alibaba/fastjson/b/u;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/u;->a:Lcom/alibaba/fastjson/b/u;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/b/n;->a:Lcom/alibaba/fastjson/b/n;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/n;->a:Lcom/alibaba/fastjson/b/n;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/b/c;->a:Lcom/alibaba/fastjson/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/b/d;->a:Lcom/alibaba/fastjson/b/d;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/b/aq;->a:Lcom/alibaba/fastjson/b/aq;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/b/f;->a:Lcom/alibaba/fastjson/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/b/h;->a:Lcom/alibaba/fastjson/b/h;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/b/ah;->a:Lcom/alibaba/fastjson/b/ah;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/b/j;->a:Lcom/alibaba/fastjson/b/j;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/b/l;->a:Lcom/alibaba/fastjson/b/l;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/b/ar;->a:Lcom/alibaba/fastjson/b/ar;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/b/v;->a:Lcom/alibaba/fastjson/b/v;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/b/v;->a:Lcom/alibaba/fastjson/b/v;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/b/v;->a:Lcom/alibaba/fastjson/b/v;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/b/w;->a:Lcom/alibaba/fastjson/b/w;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/fastjson/b/s;->a:Lcom/alibaba/fastjson/b/s;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/alibaba/fastjson/b/a;->a:Lcom/alibaba/fastjson/b/a;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/alibaba/fastjson/b/a;->a:Lcom/alibaba/fastjson/b/a;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/b/a;->a:Lcom/alibaba/fastjson/b/a;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public static final a()Lcom/alibaba/fastjson/b/an;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/fastjson/b/an;->a:Lcom/alibaba/fastjson/b/an;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/b/aj;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/fastjson/b/ab;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/b/ab;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
