.class Lcom/bumptech/glide/load/b/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/g;

.field private b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/r",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/b/f$d;Lcom/bumptech/glide/load/i;)V
    .locals 5

    .prologue
    .line 625
    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 627
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/f$d;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f$c;->a:Lcom/bumptech/glide/load/g;

    new-instance v2, Lcom/bumptech/glide/load/b/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f$c;->b:Lcom/bumptech/glide/load/k;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    invoke-direct {v2, v3, v4, p2}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/r;->a()V

    .line 631
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 633
    return-void

    .line 630
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/r;->a()V

    .line 631
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/k;Lcom/bumptech/glide/load/b/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/k",
            "<TX;>;",
            "Lcom/bumptech/glide/load/b/r",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 619
    iput-object p1, p0, Lcom/bumptech/glide/load/b/f$c;->a:Lcom/bumptech/glide/load/g;

    .line 620
    iput-object p2, p0, Lcom/bumptech/glide/load/b/f$c;->b:Lcom/bumptech/glide/load/k;

    .line 621
    iput-object p3, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    .line 622
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcom/bumptech/glide/load/b/f$c;->a:Lcom/bumptech/glide/load/g;

    .line 641
    iput-object v0, p0, Lcom/bumptech/glide/load/b/f$c;->b:Lcom/bumptech/glide/load/k;

    .line 642
    iput-object v0, p0, Lcom/bumptech/glide/load/b/f$c;->c:Lcom/bumptech/glide/load/b/r;

    .line 643
    return-void
.end method
