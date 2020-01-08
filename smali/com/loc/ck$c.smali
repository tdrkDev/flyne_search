.class final Lcom/loc/ck$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ck;


# direct methods
.method constructor <init>(Lcom/loc/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-boolean v0, v0, Lcom/loc/ck;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ck;->o:Z

    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-boolean v0, v0, Lcom/loc/ck;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-object v0, v0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-object v1, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-object v1, v1, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ck;->p:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-object v1, p0, Lcom/loc/ck$c;->a:Lcom/loc/ck;

    iget-object v1, v1, Lcom/loc/ck;->p:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
