.class public Lcom/meizu/advertise/api/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/meizu/advertise/api/i;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/i;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/advertise/api/i$a;->a:Lcom/meizu/advertise/api/i;

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
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
    .line 27
    const-string v0, "com.meizu.advertise.plugin.js.IWebView"

    invoke-static {p0, v0}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/b/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/i;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/meizu/advertise/api/i$a;->a(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    new-instance v1, Lcom/meizu/advertise/api/i$a;

    invoke-direct {v1, p0}, Lcom/meizu/advertise/api/i$a;-><init>(Lcom/meizu/advertise/api/i;)V

    .line 36
    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    iput-object v0, v1, Lcom/meizu/advertise/api/i$a;->b:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/meizu/advertise/api/i$a;->b:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/meizu/advertise/api/i$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/advertise/api/i$a;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/meizu/advertise/api/i$a;->b:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/advertise/api/i$a;->a:Lcom/meizu/advertise/api/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/advertise/api/i$a;->a:Lcom/meizu/advertise/api/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "loadUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/meizu/advertise/api/i$a;->a:Lcom/meizu/advertise/api/i;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/meizu/advertise/api/i;->a(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
