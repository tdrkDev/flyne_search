.class public Lcom/meizu/advertise/api/o;
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

.field private static c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/meizu/advertise/api/h;Lcom/meizu/advertise/api/p;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->c:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 36
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/ContextWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 39
    invoke-static {}, Lcom/meizu/advertise/c/d;->a()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 40
    invoke-static {}, Lcom/meizu/advertise/c/h;->a()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    sput-object v0, Lcom/meizu/advertise/api/o;->c:Ljava/lang/reflect/Constructor;

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/meizu/advertise/api/o;->c:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    .line 48
    invoke-static {p3}, Lcom/meizu/advertise/c/d;->a(Lcom/meizu/advertise/api/h;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 49
    invoke-static {p4}, Lcom/meizu/advertise/c/h;->a(Lcom/meizu/advertise/api/p;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private static k()Ljava/lang/Class;
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
    .line 23
    sget-object v0, Lcom/meizu/advertise/api/o;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.meizu.advertise.plugin.web.WebHandler"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/api/o;->a:Ljava/lang/Class;

    .line 26
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 78
    const-string v1, "onRefresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    sput-object v0, Lcom/meizu/advertise/api/o;->e:Ljava/lang/reflect/Method;

    .line 82
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 62
    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 64
    sput-object v0, Lcom/meizu/advertise/api/o;->d:Ljava/lang/reflect/Method;

    .line 66
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 94
    const-string v1, "onCopyUrl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    sput-object v0, Lcom/meizu/advertise/api/o;->f:Ljava/lang/reflect/Method;

    .line 98
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 140
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 142
    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    sput-object v0, Lcom/meizu/advertise/api/o;->i:Ljava/lang/reflect/Method;

    .line 146
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 110
    const-string v1, "onOpenWithBrowser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sput-object v0, Lcom/meizu/advertise/api/o;->g:Ljava/lang/reflect/Method;

    .line 114
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 126
    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    sput-object v0, Lcom/meizu/advertise/api/o;->h:Ljava/lang/reflect/Method;

    .line 130
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 160
    sput-object v0, Lcom/meizu/advertise/api/o;->j:Ljava/lang/reflect/Method;

    .line 162
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->j:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 174
    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 176
    sput-object v0, Lcom/meizu/advertise/api/o;->k:Ljava/lang/reflect/Method;

    .line 178
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->k:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 190
    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 192
    sput-object v0, Lcom/meizu/advertise/api/o;->l:Ljava/lang/reflect/Method;

    .line 194
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->l:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 206
    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    sput-object v0, Lcom/meizu/advertise/api/o;->m:Ljava/lang/reflect/Method;

    .line 210
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->m:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 222
    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    sput-object v0, Lcom/meizu/advertise/api/o;->n:Ljava/lang/reflect/Method;

    .line 226
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->n:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 237
    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/o;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lcom/meizu/advertise/api/o;->k()Ljava/lang/Class;

    move-result-object v0

    .line 239
    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 241
    sput-object v0, Lcom/meizu/advertise/api/o;->o:Ljava/lang/reflect/Method;

    .line 243
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/o;->o:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/meizu/advertise/api/o;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
