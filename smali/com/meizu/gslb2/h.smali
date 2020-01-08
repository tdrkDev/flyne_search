.class Lcom/meizu/gslb2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/meizu/gslb2/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/gslb2/n;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gslb2/h;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/meizu/gslb2/h;->b:Lcom/meizu/gslb2/n;

    .line 20
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/gslb2/h;->b:Lcom/meizu/gslb2/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/gslb2/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "app_v"

    iget-object v1, p0, Lcom/meizu/gslb2/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/flyme/internet/d/d;->a(Landroid/content/Context;)Lcom/meizu/flyme/internet/d/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/flyme/internet/d/d$a;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "package"

    iget-object v1, p0, Lcom/meizu/gslb2/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "gslb_event"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/meizu/gslb2/h;->b:Lcom/meizu/gslb2/n;

    const-string v1, "gslb.component.app"

    invoke-interface {v0, v1, p2}, Lcom/meizu/gslb2/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    :cond_0
    return-void
.end method
