.class final Lcom/loc/bf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bf;


# direct methods
.method constructor <init>(Lcom/loc/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v0, p1, p2, p3}, Lcom/loc/bf;->a(Lcom/loc/bf;Landroid/bluetooth/BluetoothDevice;I[B)Lcom/loc/be;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    iget-object v3, v0, Lcom/loc/bf;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    iget-object v4, v0, Lcom/loc/be;->h:Ljava/lang/String;

    iget-object v5, v2, Lcom/loc/be;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v1}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/loc/be;->i:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v4}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/bf$a;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->a(Lcom/loc/bf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "onLeScan"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
