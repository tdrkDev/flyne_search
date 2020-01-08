.class Landroid/arch/persistence/room/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[J

.field final b:[Z

.field final c:[I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/d$a;->a:[J

    .line 585
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/arch/persistence/room/d$a;->b:[Z

    .line 586
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/arch/persistence/room/d$a;->c:[I

    .line 587
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->a:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 588
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->b:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 589
    return-void
.end method


# virtual methods
.method a()[I
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/persistence/room/d$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/arch/persistence/room/d$a;->e:Z

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 651
    :goto_0
    return-object v0

    .line 639
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->a:[J

    array-length v5, v0

    move v4, v3

    .line 640
    :goto_1
    if-ge v4, v5, :cond_5

    .line 641
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->a:[J

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    move v2, v1

    .line 642
    :goto_2
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->b:[Z

    aget-boolean v0, v0, v4

    if-eq v2, v0, :cond_4

    .line 643
    iget-object v6, p0, Landroid/arch/persistence/room/d$a;->c:[I

    if-eqz v2, :cond_3

    move v0, v1

    :goto_3
    aput v0, v6, v4

    .line 647
    :goto_4
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->b:[Z

    aput-boolean v2, v0, v4

    .line 640
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 641
    goto :goto_2

    .line 643
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    .line 645
    :cond_4
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->c:[I

    const/4 v6, 0x0

    aput v6, v0, v4

    goto :goto_4

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 649
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/arch/persistence/room/d$a;->e:Z

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/persistence/room/d$a;->d:Z

    .line 651
    iget-object v0, p0, Landroid/arch/persistence/room/d$a;->c:[I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 660
    monitor-enter p0

    .line 661
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/arch/persistence/room/d$a;->e:Z

    .line 662
    monitor-exit p0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
