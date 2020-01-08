.class public final Lcom/alibaba/fastjson/a/a/ak;
.super Lcom/alibaba/fastjson/a/a/u;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/a/a/u;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson/a/a/ak;->c:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson/a/a/ak;->d:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/ak;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/ak;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
