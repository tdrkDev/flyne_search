.class public Lcom/meizu/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/a/a$c;,
        Lcom/meizu/a/a$a;,
        Lcom/meizu/a/a$d;,
        Lcom/meizu/a/a$b;
    }
.end annotation


# static fields
.field private static h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Landroid/os/Handler;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:I

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/meizu/a/a;->h:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/meizu/a/a;->c:J

    .line 40
    const/16 v0, 0x20

    iput v0, p0, Lcom/meizu/a/a;->e:I

    .line 41
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/meizu/a/a;->f:J

    .line 43
    iput-boolean v2, p0, Lcom/meizu/a/a;->g:Z

    .line 46
    iput-object p1, p0, Lcom/meizu/a/a;->a:Ljava/io/File;

    .line 47
    iput-object p2, p0, Lcom/meizu/a/a;->b:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/meizu/a/a;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/meizu/a/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/a/a;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/a/a;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/meizu/a/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/meizu/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/a/a;->e:I

    return v0
.end method

.method static synthetic b()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/meizu/a/a;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/a/a;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/meizu/a/a;->f:J

    return-wide v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/meizu/a/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/a/a;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/meizu/a/a;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/meizu/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/a/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/meizu/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/a/a$a;-><init>(Lcom/meizu/a/a;Lcom/meizu/a/a$1;)V

    .line 70
    iget-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/meizu/a/a;->g:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/meizu/a/a$d;

    const-string v2, "D"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/a/a$d;-><init>(Lcom/meizu/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iget-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/meizu/a/a;->g:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/meizu/a/a$d;

    const-string v2, "E"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/a/a$d;-><init>(Lcom/meizu/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/meizu/a/a;->g:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/meizu/a/a$d;

    const-string v2, "W"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/a/a$d;-><init>(Lcom/meizu/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iget-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/meizu/a/a;->g:Z

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/meizu/a/a$d;

    const-string v2, "E"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/a/a$d;-><init>(Lcom/meizu/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    iget-object v1, p0, Lcom/meizu/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
