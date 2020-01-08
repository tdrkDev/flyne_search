.class Lcom/meizu/flyme/appcenter/appcentersdk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    const-string v0, "AppCenterAidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: ComponentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Z)V

    .line 116
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {p2}, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/a;Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    .line 117
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b(Lcom/meizu/flyme/appcenter/appcentersdk/a;)V

    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/a$a;

    .line 119
    invoke-interface {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a$a;->a()V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    const-string v0, "AppCenterAidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected: ComponentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Z)V

    .line 129
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/a;Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/a$a;

    .line 133
    invoke-interface {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a$a;->b()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    return-void
.end method
