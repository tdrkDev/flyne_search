.class public Lcom/meizu/advertise/c/d;
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
.field private b:Lcom/meizu/advertise/api/h;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/api/h;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/meizu/advertise/c/d;->b:Lcom/meizu/advertise/api/h;

    .line 36
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
    .line 21
    sget-object v0, Lcom/meizu/advertise/c/d;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.download.DownloadDialogFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/d;->a:Ljava/lang/Class;

    .line 24
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/d;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/h;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/meizu/advertise/c/d;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/c/d;-><init>(Lcom/meizu/advertise/api/h;)V

    .line 29
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/meizu/advertise/c/d;->a()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

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
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/meizu/advertise/c/d;->b:Lcom/meizu/advertise/api/h;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "createDialog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 46
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 47
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 48
    const/4 v3, 0x3

    aget-object v3, p3, v3

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 49
    iget-object v4, p0, Lcom/meizu/advertise/c/d;->b:Lcom/meizu/advertise/api/h;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/meizu/advertise/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
