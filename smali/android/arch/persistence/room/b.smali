.class public abstract Landroid/arch/persistence/room/b;
.super Landroid/arch/persistence/room/j;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/persistence/room/j;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/j;-><init>(Landroid/arch/persistence/room/f;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/a/f;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final handle(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/arch/persistence/room/b;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 69
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/arch/persistence/room/b;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 72
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final handleMultiple(Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/arch/persistence/room/b;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 87
    invoke-virtual {p0, v1, v3}, Landroid/arch/persistence/room/b;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 88
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 89
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final handleMultiple([Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/arch/persistence/room/b;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v2

    .line 106
    :try_start_0
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 107
    invoke-virtual {p0, v2, v4}, Landroid/arch/persistence/room/b;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 108
    invoke-interface {v2}, Landroid/arch/persistence/a/f;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v1, v4

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/b;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method
