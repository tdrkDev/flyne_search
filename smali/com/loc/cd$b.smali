.class final Lcom/loc/cd$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/loc/cd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/loc/cd;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    iput-object p2, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->i:Lcom/loc/cn;

    invoke-virtual {v0}, Lcom/loc/cn;->a()V

    iget-object v0, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    iget-object v2, v2, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/loc/cd;->k:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd$b;->a:Lcom/loc/cd;

    invoke-virtual {v1, v0}, Lcom/loc/cd;->a(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
