.class final La/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h;->d(La/i;La/f;La/h;Ljava/util/concurrent/Executor;La/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c;

.field final synthetic b:La/i;

.field final synthetic c:La/f;

.field final synthetic d:La/h;


# direct methods
.method constructor <init>(La/c;La/i;La/f;La/h;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, La/h$4;->a:La/c;

    iput-object p2, p0, La/h$4;->b:La/i;

    iput-object p3, p0, La/h$4;->c:La/f;

    iput-object p4, p0, La/h$4;->d:La/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, La/h$4;->a:La/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/h$4;->a:La/c;

    invoke-virtual {v0}, La/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, La/h$4;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, La/h$4;->c:La/f;

    iget-object v1, p0, La/h$4;->d:La/h;

    invoke-interface {v0, v1}, La/f;->then(La/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/h;

    .line 918
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, La/h$4;->b:La/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    iget-object v0, p0, La/h$4;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    new-instance v1, La/h$4$1;

    invoke-direct {v1, p0}, La/h$4$1;-><init>(La/h$4;)V

    invoke-virtual {v0, v1}, La/h;->a(La/f;)La/h;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    iget-object v1, p0, La/h$4;->b:La/i;

    invoke-virtual {v1, v0}, La/i;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
