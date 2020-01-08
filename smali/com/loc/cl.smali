.class public Lcom/loc/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/APSServiceBase;


# instance fields
.field a:Lcom/loc/ck;

.field b:Landroid/content/Context;

.field c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    iput-object v0, p0, Lcom/loc/cl;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/cl;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cl;->b:Landroid/content/Context;

    new-instance v0, Lcom/loc/ck;

    iget-object v1, p0, Lcom/loc/cl;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/ck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    const-string v1, "a"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/loc/cr;->a(Ljava/lang/String;)V

    :cond_0
    const-string v1, "b"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ck;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/cq;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/loc/ct;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    const-string v1, "true"

    const-string v2, "as"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/16 v1, 0x9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ck$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    iget-object v1, v1, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/cl;->c:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/cl;->c:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/ck;->j:J

    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    invoke-static {}, Lcom/loc/ci;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/ck;->k:J

    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/loc/cf;

    invoke-direct {v1}, Lcom/loc/cf;-><init>()V

    iput-object v1, v0, Lcom/loc/ck;->i:Lcom/loc/cf;

    new-instance v1, Lcom/loc/ck$b;

    const-string v2, "amapLocCoreThread"

    invoke-direct {v1, v0, v2}, Lcom/loc/ck$b;-><init>(Lcom/loc/ck;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    iget-object v1, v0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/loc/ck$b;->setPriority(I)V

    iget-object v1, v0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    invoke-virtual {v1}, Lcom/loc/ck$b;->start()V

    new-instance v1, Lcom/loc/ck$a;

    iget-object v2, v0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    invoke-virtual {v2}, Lcom/loc/ck$b;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/ck$a;-><init>(Lcom/loc/ck;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cl;->a:Lcom/loc/ck;

    iget-object v0, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
