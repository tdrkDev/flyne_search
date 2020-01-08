.class public Lcom/meizu/advertise/api/JsAdBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELEGATE_CLASS_NAME:Ljava/lang/String; = "com.meizu.advertise.plugin.js.JsAdBridge"

.field public static final OBJECT_NAME:Ljava/lang/String; = "mzAd"


# instance fields
.field private mDelegate:Ljava/lang/Object;

.field private mOnClickListener:Lcom/meizu/advertise/api/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/api/i;)V
    .locals 6

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 22
    const-string v2, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 23
    invoke-static {v0}, Lcom/meizu/advertise/api/i$a;->a(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    .line 24
    invoke-static {p2, v0}, Lcom/meizu/advertise/api/i$a;->a(Lcom/meizu/advertise/api/i;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {v2, v3}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 36
    const-string v1, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "call"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 38
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public mzAdCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    const-string v1, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "mzAdCall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 82
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 83
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public mzAdCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 67
    const-string v1, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "mzAdCallback"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 68
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 69
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    const-string v1, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 96
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setClickListener(Lcom/meizu/advertise/api/l;)Lcom/meizu/advertise/api/JsAdBridge;
    .locals 6

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/advertise/api/JsAdBridge;->mOnClickListener:Lcom/meizu/advertise/api/l;

    .line 45
    iget-object v0, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-object p0

    .line 49
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/l$a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/meizu/advertise/api/l$a;->a(Lcom/meizu/advertise/api/l;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 52
    const-string v3, "com.meizu.advertise.plugin.js.JsAdBridge"

    invoke-static {v2, v3}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v2

    const-string v3, "setClickListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 53
    invoke-interface {v2, v3, v4}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/JsAdBridge;->mDelegate:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 54
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
