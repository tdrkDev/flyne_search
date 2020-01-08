.class public Lcom/meizu/advertise/services/ProxyIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/advertise/services/ProxyIntentService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "ProxyIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "DELEGATE_CLASS_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-boolean v1, Lcom/meizu/advertise/services/ProxyIntentService;->a:Z

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyIntentService onHandleIntent, class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 35
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 36
    invoke-static {v1, v0}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 37
    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-interface {v0, v1}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    const-class v1, Landroid/app/IntentService;

    invoke-static {v1}, Lcom/meizu/b/b;->a(Ljava/lang/Class;)Lcom/meizu/b/a$a;

    move-result-object v1

    const-string v2, "onHandleIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    .line 40
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 41
    invoke-interface {v1, v0, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "onHandleIntent exception"

    invoke-static {v1, v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
