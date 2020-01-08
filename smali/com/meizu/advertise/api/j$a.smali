.class public Lcom/meizu/advertise/api/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/meizu/advertise/api/j;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/j;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/meizu/advertise/api/j$a;->a:Lcom/meizu/advertise/api/j;

    .line 37
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
    .line 24
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 25
    const-string v1, "com.meizu.advertise.plugin.download.OfflineNoticeFactory"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/b/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/j;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/meizu/advertise/api/j$a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/meizu/advertise/api/j$a;

    invoke-direct {v2, p0}, Lcom/meizu/advertise/api/j$a;-><init>(Lcom/meizu/advertise/api/j;)V

    .line 32
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

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
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/meizu/advertise/api/j$a;->a:Lcom/meizu/advertise/api/j;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v2, "showNotice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/meizu/advertise/api/j$a;->a:Lcom/meizu/advertise/api/j;

    invoke-interface {v2, v0}, Lcom/meizu/advertise/api/j;->b(Ljava/lang/String;)V

    move-object v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "cancelNotice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/meizu/advertise/api/j$a;->a:Lcom/meizu/advertise/api/j;

    invoke-interface {v0}, Lcom/meizu/advertise/api/j;->a()V

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/meizu/advertise/api/j$a;->a:Lcom/meizu/advertise/api/j;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
