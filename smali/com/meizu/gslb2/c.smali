.class public Lcom/meizu/gslb2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/meizu/gslb2/c;


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Lcom/meizu/gslb2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/gslb2/c;

    invoke-direct {v0}, Lcom/meizu/gslb2/c;-><init>()V

    sput-object v0, Lcom/meizu/gslb2/c;->a:Lcom/meizu/gslb2/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/gslb2/c;->b:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/gslb2/c;->c:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/meizu/gslb2/c$1;

    invoke-direct {v0, p0}, Lcom/meizu/gslb2/c$1;-><init>(Lcom/meizu/gslb2/c;)V

    iput-object v0, p0, Lcom/meizu/gslb2/c;->d:Lcom/meizu/gslb2/m;

    .line 33
    return-void
.end method

.method public static a()Lcom/meizu/gslb2/c;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/meizu/gslb2/c;->a:Lcom/meizu/gslb2/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/gslb2/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/gslb2/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
