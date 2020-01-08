.class Landroid/arch/persistence/room/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroid/arch/persistence/room/d$b;

.field private final c:[Ljava/lang/String;

.field private final d:[J

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method a([J)V
    .locals 9

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Landroid/arch/persistence/room/d$c;->a:[I

    array-length v2, v0

    .line 494
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v2, :cond_3

    .line 495
    iget-object v3, p0, Landroid/arch/persistence/room/d$c;->a:[I

    aget v3, v3, v1

    .line 496
    aget-wide v4, p1, v3

    .line 497
    iget-object v3, p0, Landroid/arch/persistence/room/d$c;->d:[J

    aget-wide v6, v3, v1

    .line 498
    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    .line 499
    iget-object v3, p0, Landroid/arch/persistence/room/d$c;->d:[J

    aput-wide v4, v3, v1

    .line 500
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 502
    iget-object v0, p0, Landroid/arch/persistence/room/d$c;->e:Ljava/util/Set;

    .line 494
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    if-nez v0, :cond_2

    .line 505
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0, v2}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    .line 507
    :cond_2
    iget-object v3, p0, Landroid/arch/persistence/room/d$c;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :cond_3
    if-eqz v0, :cond_4

    .line 512
    iget-object v1, p0, Landroid/arch/persistence/room/d$c;->b:Landroid/arch/persistence/room/d$b;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/d$b;->a(Ljava/util/Set;)V

    .line 514
    :cond_4
    return-void
.end method
