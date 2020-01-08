.class final La/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h;->c(La/i;La/f;La/h;Ljava/util/concurrent/Executor;La/c;)V
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
    .line 863
    iput-object p1, p0, La/h$3;->a:La/c;

    iput-object p2, p0, La/h$3;->b:La/i;

    iput-object p3, p0, La/h$3;->c:La/f;

    iput-object p4, p0, La/h$3;->d:La/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, La/h$3;->a:La/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/h$3;->a:La/c;

    invoke-virtual {v0}, La/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, La/h$3;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    .line 879
    :goto_0
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, La/h$3;->c:La/f;

    iget-object v1, p0, La/h$3;->d:La/h;

    invoke-interface {v0, v1}, La/f;->then(La/h;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, La/h$3;->b:La/i;

    invoke-virtual {v1, v0}, La/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, La/h$3;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    goto :goto_0

    .line 876
    :catch_1
    move-exception v0

    .line 877
    iget-object v1, p0, La/h$3;->b:La/i;

    invoke-virtual {v1, v0}, La/i;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
