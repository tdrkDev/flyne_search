.class final Lcom/loc/ck$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ck;


# direct methods
.method public constructor <init>(Lcom/loc/ck;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ck$b;->a:Lcom/loc/ck;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck$b;->a:Lcom/loc/ck;

    new-instance v1, Lcom/loc/cn;

    iget-object v2, p0, Lcom/loc/ck$b;->a:Lcom/loc/ck;

    iget-object v2, v2, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/loc/cn;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Lcom/loc/cn;)Lcom/loc/cn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ck$b;->a:Lcom/loc/ck;

    new-instance v1, Lcom/loc/aw;

    invoke-direct {v1}, Lcom/loc/aw;-><init>()V

    iput-object v1, v0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
