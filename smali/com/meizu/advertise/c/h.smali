.class public Lcom/meizu/advertise/c/h;
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
.field private b:Lcom/meizu/advertise/api/p;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/p;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/advertise/c/h;->b:Lcom/meizu/advertise/api/p;

    .line 34
    return-void
.end method

.method public static a()Ljava/lang/Class;
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
    .line 19
    sget-object v0, Lcom/meizu/advertise/c/h;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.web.WebTitleChangedListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/h;->a:Ljava/lang/Class;

    .line 22
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/h;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/p;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/meizu/advertise/c/h;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/c/h;-><init>(Lcom/meizu/advertise/api/p;)V

    .line 27
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/meizu/advertise/c/h;->a()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/meizu/advertise/c/h;->b:Lcom/meizu/advertise/api/p;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v2

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "onTitleChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/meizu/advertise/c/h;->b:Lcom/meizu/advertise/api/p;

    invoke-interface {v1, v0}, Lcom/meizu/advertise/api/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
