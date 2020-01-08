.class Lcom/meizu/gslb2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/meizu/gslb2/h;


# direct methods
.method constructor <init>(Lcom/meizu/gslb2/h;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lcom/meizu/gslb2/t;->b:Lcom/meizu/gslb2/h;

    .line 22
    return-void
.end method


# virtual methods
.method public a(I)Lcom/meizu/gslb2/t;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    const-string v1, "response_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public a(J)Lcom/meizu/gslb2/t;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    const-string v1, "request_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/meizu/gslb2/t;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    const-string v1, "convert_host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object p0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/gslb2/t;->b:Lcom/meizu/gslb2/h;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/meizu/gslb2/t;->b:Lcom/meizu/gslb2/h;

    const-string v1, "server_request"

    iget-object v2, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/gslb2/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/meizu/gslb2/t;
    .locals 2

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/gslb2/t;->a:Ljava/util/Map;

    const-string v1, "error_msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object p0
.end method
