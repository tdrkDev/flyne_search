.class Lcom/meizu/advertise/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/meizu/advertise/api/e;


# direct methods
.method constructor <init>(Lcom/meizu/advertise/api/e;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/meizu/advertise/c/a;->b:Lcom/meizu/advertise/api/e;

    .line 28
    return-void
.end method

.method static a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/meizu/advertise/c/a;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.data.IAdDataListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/a;->a:Ljava/lang/Class;

    .line 21
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/a;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/meizu/advertise/c/a;->b:Lcom/meizu/advertise/api/e;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v3

    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "onSuccess"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    aget-object v0, p3, v2

    .line 38
    invoke-static {v0}, Lcom/meizu/advertise/api/a$a;->a(Ljava/lang/Object;)Lcom/meizu/advertise/api/a$a;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/meizu/advertise/c/a;->b:Lcom/meizu/advertise/api/e;

    invoke-interface {v1, v0}, Lcom/meizu/advertise/api/e;->a(Lcom/meizu/advertise/api/a;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "onNoAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/meizu/advertise/c/a;->b:Lcom/meizu/advertise/api/e;

    invoke-interface {v2, v0, v1}, Lcom/meizu/advertise/api/e;->a(J)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "onFailure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Exception;

    .line 45
    iget-object v1, p0, Lcom/meizu/advertise/c/a;->b:Lcom/meizu/advertise/api/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/meizu/advertise/api/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
