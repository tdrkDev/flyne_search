.class public Lcom/meizu/advertise/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Object;

.field private h:Lcom/meizu/advertise/c/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/meizu/advertise/c/e;->f:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/meizu/advertise/c/f;

    invoke-direct {v0}, Lcom/meizu/advertise/c/f;-><init>()V

    iput-object v0, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    .line 92
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/c/e;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/meizu/advertise/c/f;->a()Ljava/lang/Class;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v3, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-static {v0}, Lcom/meizu/advertise/c/e;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 35
    sget-object v0, Lcom/meizu/advertise/c/e;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/meizu/advertise/c/e;->c()Ljava/lang/Class;

    move-result-object v0

    .line 37
    const-string v1, "setOnCloseListener"

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    sput-object v0, Lcom/meizu/advertise/c/e;->b:Ljava/lang/reflect/Method;

    .line 41
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/e;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static c()Ljava/lang/Class;
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
    .line 28
    sget-object v0, Lcom/meizu/advertise/c/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.views.controller.LabelLayoutController"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/c/e;->a:Ljava/lang/Class;

    .line 31
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/e;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private static d()Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 45
    sget-object v0, Lcom/meizu/advertise/c/e;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/meizu/advertise/c/e;->c()Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    sput-object v0, Lcom/meizu/advertise/c/e;->c:Ljava/lang/reflect/Method;

    .line 51
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/e;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static e()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/meizu/advertise/c/e;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/meizu/advertise/c/e;->c()Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "getLabelView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    sput-object v0, Lcom/meizu/advertise/c/e;->d:Ljava/lang/reflect/Method;

    .line 71
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/e;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static f()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/meizu/advertise/c/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/meizu/advertise/c/e;->c()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string v1, "getCloseView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    sput-object v0, Lcom/meizu/advertise/c/e;->e:Ljava/lang/reflect/Method;

    .line 81
    :cond_0
    sget-object v0, Lcom/meizu/advertise/c/e;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-static {}, Lcom/meizu/advertise/c/e;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 147
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/meizu/advertise/c/e;->d()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/meizu/advertise/api/m;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    invoke-virtual {v0, p1}, Lcom/meizu/advertise/c/f;->a(Lcom/meizu/advertise/api/m;)V

    goto :goto_0
.end method

.method public b()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/meizu/advertise/c/e;->h:Lcom/meizu/advertise/c/f;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {}, Lcom/meizu/advertise/c/e;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 159
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/advertise/c/e;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
