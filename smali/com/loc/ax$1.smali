.class final Lcom/loc/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ax;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ax;


# direct methods
.method constructor <init>(Lcom/loc/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ax;->a:Z

    iget-object v0, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax;

    invoke-static {p2}, Lcom/loc/co$a;->a(Landroid/os/IBinder;)Lcom/loc/co;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/co;)Lcom/loc/co;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/ax;->a:Z

    iget-object v0, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/co;)Lcom/loc/co;

    return-void
.end method
