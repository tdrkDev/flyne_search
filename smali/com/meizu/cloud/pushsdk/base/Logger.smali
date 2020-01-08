.class public Lcom/meizu/cloud/pushsdk/base/Logger;
.super Lcom/meizu/cloud/pushsdk/base/Proxy;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/base/ICacheLog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/base/Proxy",
        "<",
        "Lcom/meizu/cloud/pushsdk/base/ICacheLog;",
        ">;",
        "Lcom/meizu/cloud/pushsdk/base/ICacheLog;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/cloud/pushsdk/base/Logger;


# instance fields
.field private mInitialized:Z


# direct methods
.method protected constructor <init>(Lcom/meizu/cloud/pushsdk/base/ICacheLog;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/base/Proxy;-><init>(Ljava/lang/Object;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/Logger;->mInitialized:Z

    .line 17
    return-void
.end method

.method public static get()Lcom/meizu/cloud/pushsdk/base/Logger;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/Logger;->sInstance:Lcom/meizu/cloud/pushsdk/base/Logger;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/meizu/cloud/pushsdk/base/Logger;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/Logger;->sInstance:Lcom/meizu/cloud/pushsdk/base/Logger;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/Logger;

    new-instance v2, Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;-><init>()V

    invoke-direct {v0, v2}, Lcom/meizu/cloud/pushsdk/base/Logger;-><init>(Lcom/meizu/cloud/pushsdk/base/ICacheLog;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/base/Logger;->sInstance:Lcom/meizu/cloud/pushsdk/base/Logger;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/Logger;->sInstance:Lcom/meizu/cloud/pushsdk/base/Logger;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public flush(Z)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->flush(Z)V

    .line 91
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/Logger;->mInitialized:Z

    if-nez v0, :cond_0

    .line 37
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/base/Logger;->mInitialized:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/base/Logger;->setDebugMode(Z)V

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/pushSdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/base/Logger;->setFilePath(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/base/Logger;->setDebugMode(Z)V

    goto :goto_0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public setCacheCount(I)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->setCacheCount(I)V

    .line 81
    return-void
.end method

.method public setCacheDuration(J)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->setCacheDuration(J)V

    .line 76
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->setDebugMode(Z)V

    .line 96
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->setFilePath(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/ICacheLog;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/ICacheLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
