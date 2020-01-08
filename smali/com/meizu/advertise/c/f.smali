.class Lcom/meizu/advertise/c/f;
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
.field private b:Lcom/meizu/advertise/api/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 17
    sget-object v0, Lcom/meizu/advertise/c/f;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.views.listener.IOnCloseListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/f;->a:Ljava/lang/Class;

    .line 20
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/f;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method a(Lcom/meizu/advertise/api/m;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/advertise/c/f;->b:Lcom/meizu/advertise/api/m;

    .line 27
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/meizu/advertise/c/f;->b:Lcom/meizu/advertise/api/m;

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "onClose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/advertise/c/f;->b:Lcom/meizu/advertise/api/m;

    invoke-interface {v0}, Lcom/meizu/advertise/api/m;->d()V

    goto :goto_0
.end method
