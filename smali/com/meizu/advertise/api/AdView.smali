.class public Lcom/meizu/advertise/api/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/meizu/advertise/api/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;->b(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;->b(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/api/a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/a;)Lcom/meizu/advertise/api/AdView;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/api/a;Lcom/meizu/advertise/api/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0, p3}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/c;)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/a;)Lcom/meizu/advertise/api/AdView;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/meizu/advertise/api/AdView;->a(Ljava/lang/String;)Lcom/meizu/advertise/api/AdView;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, p3, p4}, Lcom/meizu/advertise/api/AdView;->a(J)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/advertise/api/AdView;->a(Ljava/lang/String;)Lcom/meizu/advertise/api/AdView;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/meizu/advertise/api/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p3, p4}, Lcom/meizu/advertise/api/AdView;->a(J)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/c;)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/advertise/api/AdView;->a(Ljava/lang/String;)Lcom/meizu/advertise/api/AdView;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/advertise/api/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/c;)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/advertise/api/AdView;->a(Ljava/lang/String;)Lcom/meizu/advertise/api/AdView;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/advertise/api/AdView;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Lcom/meizu/advertise/api/AdView;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/api/AdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/advertise/api/AdView;)Lcom/meizu/advertise/api/c;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->b:Lcom/meizu/advertise/api/c;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/meizu/advertise/api/AdView$1;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/api/AdView$1;-><init>(Lcom/meizu/advertise/api/AdView;)V

    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 46
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    .line 47
    invoke-interface {v0, v2}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    .line 48
    invoke-interface {v0, v2}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lcom/meizu/advertise/api/AdView;
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-object p0

    .line 95
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 96
    const-string v1, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "setDataTimeout"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 97
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/meizu/advertise/api/a;)Lcom/meizu/advertise/api/AdView;
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/meizu/advertise/api/AdView;->a()V

    .line 182
    :goto_0
    return-object p0

    .line 172
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/meizu/advertise/api/a$a;->a(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    invoke-static {p1}, Lcom/meizu/advertise/api/a$a;->a(Lcom/meizu/advertise/api/a;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    const-string v3, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v3}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v3, "bindData"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 176
    invoke-interface {v0, v3, v4}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 177
    invoke-interface {v0, v1, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 180
    invoke-direct {p0}, Lcom/meizu/advertise/api/AdView;->a()V

    goto :goto_0
.end method

.method public a(Lcom/meizu/advertise/api/c;)Lcom/meizu/advertise/api/AdView;
    .locals 6

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/advertise/api/AdView;->b:Lcom/meizu/advertise/api/c;

    .line 107
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-object p0

    .line 111
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/c$a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 112
    invoke-static {p1}, Lcom/meizu/advertise/api/c$a;->a(Lcom/meizu/advertise/api/c;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 114
    const-string v3, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v2, v3}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v2

    const-string v3, "setAdListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 115
    invoke-interface {v2, v3, v4}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 116
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/meizu/advertise/api/AdView;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/advertise/api/AdView;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/advertise/api/AdView;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/advertise/api/AdView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/advertise/api/AdView;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/meizu/advertise/api/AdView;->a()V

    .line 162
    :goto_0
    return-object p0

    .line 154
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 155
    const-string v1, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "load"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    .line 156
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 157
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 160
    invoke-direct {p0}, Lcom/meizu/advertise/api/AdView;->a()V

    goto :goto_0
.end method

.method public getIconConfig()Lcom/meizu/advertise/a/b;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Lcom/meizu/advertise/a/b$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/b$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 353
    :goto_0
    return-object v0

    .line 346
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 347
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v1, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v1

    const-string v2, "getIconConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 348
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 349
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    :goto_1
    new-instance v1, Lcom/meizu/advertise/a/b$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/b$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    invoke-static {v1}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getImageConfig()Lcom/meizu/advertise/a/c;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Lcom/meizu/advertise/a/c$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/c$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 373
    :goto_0
    return-object v0

    .line 366
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 367
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v1, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v1

    const-string v2, "getImageConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 368
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 369
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_1
    new-instance v1, Lcom/meizu/advertise/a/c$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/c$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    invoke-static {v1}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getInteractionType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 312
    :goto_0
    return v0

    .line 306
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 307
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getInteractionType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 308
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 309
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public getLabelConfig()Lcom/meizu/advertise/a/d;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Lcom/meizu/advertise/a/d$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/d$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 393
    :goto_0
    return-object v0

    .line 386
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 387
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v1, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v1

    const-string v2, "getLabelConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 388
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 389
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 393
    :goto_1
    new-instance v1, Lcom/meizu/advertise/a/d$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/d$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    invoke-static {v1}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getStyleType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 297
    :goto_0
    return v0

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 292
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getStyleType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 293
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 294
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move v0, v1

    .line 297
    goto :goto_0
.end method

.method public getTitleConfig()Lcom/meizu/advertise/a/e;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 322
    new-instance v1, Lcom/meizu/advertise/a/e$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/e$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 333
    :goto_0
    return-object v0

    .line 326
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 327
    const-string v2, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v1, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v1

    const-string v2, "getTitleConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 328
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 329
    invoke-interface {v1, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_1
    new-instance v1, Lcom/meizu/advertise/a/e$a;

    invoke-direct {v1, v0}, Lcom/meizu/advertise/a/e$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    invoke-static {v1}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 228
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 233
    const-string v1, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 234
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 244
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 249
    const-string v1, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 250
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 251
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    const-string v1, "com.meizu.advertise.plugin.views.AdView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "setPadding"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 217
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/AdView;->a:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method
