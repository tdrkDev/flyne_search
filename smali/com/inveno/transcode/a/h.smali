.class public Lcom/inveno/transcode/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/a/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/inveno/transcode/config/IRequestTool;

.field private e:Lcom/inveno/transcode/config/IInvenoTransUpdate;

.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    new-instance v0, Lcom/inveno/transcode/a/i;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/a/i;-><init>(Lcom/inveno/transcode/a/h;)V

    iput-object v0, p0, Lcom/inveno/transcode/a/h;->g:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/inveno/transcode/a/j;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/a/j;-><init>(Lcom/inveno/transcode/a/h;)V

    iput-object v0, p0, Lcom/inveno/transcode/a/h;->h:Ljava/lang/Runnable;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/transcode/a/i;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/inveno/transcode/a/h;-><init>()V

    return-void
.end method

.method public static final a()Lcom/inveno/transcode/a/h;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/inveno/transcode/a/h$a;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    const-string v1, "settings"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    const-string v1, "transcode_hash"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inveno/transcode/a/h;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/inveno/transcode/a/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/a/h;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/inveno/transcode/a/h;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/a/h;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/inveno/transcode/a/h;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/inveno/transcode/a/l;

    invoke-direct {v1, p0, p1}, Lcom/inveno/transcode/a/l;-><init>(Lcom/inveno/transcode/a/h;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inveno/transcode/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inveno/transcode/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inveno/transcode/a/h;)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/inveno/transcode/a/h;->f()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IInvenoTransUpdate;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->e:Lcom/inveno/transcode/config/IInvenoTransUpdate;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Lcom/inveno/transcode/a/d;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/transcode/a/d;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0}, Lcom/inveno/transcode/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->c:Ljava/lang/String;

    .line 160
    :cond_0
    new-instance v0, Lcom/inveno/transcode/a/f;

    invoke-direct {v0}, Lcom/inveno/transcode/a/f;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/a/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f()I
    .locals 4

    .prologue
    .line 295
    const/16 v0, 0x20

    .line 296
    iget-object v1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    const-string v2, "settings"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 306
    const-string v2, "transcode_hash"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IRequestTool;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->d:Lcom/inveno/transcode/config/IRequestTool;

    return-object v0
.end method

.method static synthetic g(Lcom/inveno/transcode/a/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 261
    iput-object p1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;

    .line 262
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 263
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 267
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Lcom/inveno/transcode/config/IInvenoTransUpdate;)V
    .locals 8

    .prologue
    .line 113
    :try_start_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 114
    iput-object p1, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iput-object p2, p0, Lcom/inveno/transcode/a/h;->b:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/inveno/transcode/a/h;->c:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/inveno/transcode/a/h;->d:Lcom/inveno/transcode/config/IRequestTool;

    .line 125
    iput-object p5, p0, Lcom/inveno/transcode/a/h;->e:Lcom/inveno/transcode/config/IInvenoTransUpdate;

    .line 127
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 133
    :cond_0
    invoke-static {}, Lcom/inveno/transcode/a/b;->a()Lcom/inveno/transcode/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/transcode/a/h;->a:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 8

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 177
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 181
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/a/h;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/inveno/transcode/a/h;->d()V

    .line 196
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 318
    iget-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/transcode/a/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 323
    :cond_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method
