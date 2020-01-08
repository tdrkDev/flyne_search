.class public Lcom/meizu/advertise/api/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/meizu/advertise/api/c;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/c;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    .line 59
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
    .line 46
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    const-string v1, "com.meizu.advertise.plugin.views.listener.IAdListener"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/b/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/meizu/advertise/api/c$a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/meizu/advertise/api/c$a;

    invoke-direct {v2, p0}, Lcom/meizu/advertise/api/c$a;-><init>(Lcom/meizu/advertise/api/c;)V

    .line 54
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v4

    .line 67
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.meizu.advertise.api AdListener invoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 69
    const-string v1, "onLoadFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    invoke-interface {v0}, Lcom/meizu/advertise/api/c;->a()V

    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "onNoAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    invoke-interface {v2, v0, v1}, Lcom/meizu/advertise/api/c;->a(J)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v1, "onError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    invoke-interface {v1, v0}, Lcom/meizu/advertise/api/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_4
    const-string v1, "onExposed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    invoke-interface {v0}, Lcom/meizu/advertise/api/c;->b()V

    goto :goto_0

    .line 79
    :cond_5
    const-string v1, "onClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    invoke-interface {v0}, Lcom/meizu/advertise/api/c;->c()V

    goto :goto_0

    .line 81
    :cond_6
    const-string v1, "onClose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    instance-of v0, v0, Lcom/meizu/advertise/api/n;

    if-eqz v0, :cond_7

    .line 83
    if-eqz p3, :cond_0

    .line 84
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 85
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    check-cast v0, Lcom/meizu/advertise/api/n;

    .line 86
    invoke-interface {v0, v1}, Lcom/meizu/advertise/api/n;->a(I)V

    goto/16 :goto_0

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    instance-of v0, v0, Lcom/meizu/advertise/api/g;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/meizu/advertise/api/c$a;->a:Lcom/meizu/advertise/api/c;

    check-cast v0, Lcom/meizu/advertise/api/g;

    .line 90
    invoke-interface {v0}, Lcom/meizu/advertise/api/g;->d()V

    goto/16 :goto_0

    .line 92
    :cond_8
    const-string v1, "onDataLoadFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
