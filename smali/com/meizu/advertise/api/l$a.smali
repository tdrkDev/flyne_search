.class public Lcom/meizu/advertise/api/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/meizu/advertise/api/l;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/l;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/meizu/advertise/api/l$a;->a:Lcom/meizu/advertise/api/l;

    .line 38
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
    .line 25
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 26
    const-string v1, "com.meizu.advertise.plugin.views.listener.IOnClickListener"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/b/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/l;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/meizu/advertise/api/l$a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/meizu/advertise/api/l$a;

    invoke-direct {v2, p0}, Lcom/meizu/advertise/api/l$a;-><init>(Lcom/meizu/advertise/api/l;)V

    .line 33
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/meizu/advertise/api/l$a;->a:Lcom/meizu/advertise/api/l;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v3

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.meizu.advertise.api OnClickListener invoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 49
    const-string v1, "onClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/meizu/advertise/api/l$a;->a:Lcom/meizu/advertise/api/l;

    invoke-interface {v0}, Lcom/meizu/advertise/api/l;->a()V

    goto :goto_0
.end method
