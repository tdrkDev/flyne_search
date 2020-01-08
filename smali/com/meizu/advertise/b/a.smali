.class public Lcom/meizu/advertise/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/b/a$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/meizu/a/a;

.field private static c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20
    sput-boolean v2, Lcom/meizu/advertise/b/a;->a:Z

    .line 22
    const-wide/16 v0, 0xa

    invoke-static {v2, v0, v1}, Lcom/meizu/advertise/d/b;->a(IJ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/b/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "AdLog-Host"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "AdLog-Host"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    sget-boolean v0, Lcom/meizu/advertise/b/a;->a:Z

    if-nez v0, :cond_1

    .line 35
    :goto_0
    return v2

    .line 34
    :cond_1
    const-string v0, "D"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    .prologue
    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "AdLog-Host"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "AdLog-Host"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/meizu/advertise/b/a;->a:Z

    if-nez v0, :cond_2

    .line 74
    :goto_1
    return v3

    .line 66
    :cond_1
    const-string v0, "AdLog-Host"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "AdLog-Host"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "E"

    invoke-static {v0, p0, p1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a()Lcom/meizu/a/a;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/meizu/advertise/b/a;->b()Lcom/meizu/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/meizu/advertise/b/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/advertise/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    sget-object v1, Lcom/meizu/advertise/b/a;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "AdLog-Host"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "AdLog-Host"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-boolean v0, Lcom/meizu/advertise/b/a;->a:Z

    if-nez v0, :cond_1

    .line 57
    :goto_0
    return v2

    .line 56
    :cond_1
    const-string v0, "E"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Lcom/meizu/a/a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-object v1, Lcom/meizu/advertise/b/a;->b:Lcom/meizu/a/a;

    if-nez v1, :cond_2

    .line 114
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/MzAdLog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    const/4 v1, 0x0

    sput-boolean v1, Lcom/meizu/advertise/b/a;->a:Z

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "AdLog-Host"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    new-instance v2, Lcom/meizu/a/a;

    invoke-direct {v2, v0, v1}, Lcom/meizu/a/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/meizu/advertise/b/a;->b:Lcom/meizu/a/a;

    .line 128
    :cond_2
    sget-object v0, Lcom/meizu/advertise/b/a;->b:Lcom/meizu/a/a;

    goto :goto_0
.end method
