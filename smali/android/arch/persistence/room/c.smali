.class public abstract Landroid/arch/persistence/room/c;
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
    .line 43
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/j;-><init>(Landroid/arch/persistence/room/f;)V

    .line 44
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

.method public final insert(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 95
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 97
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    .line 102
    return-void
.end method

.method public final insert(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 63
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insert([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 78
    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 79
    invoke-virtual {p0, v1, v3}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 80
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnId(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 113
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 116
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-wide v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)[J"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 129
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 132
    invoke-virtual {p0, v1, v4}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsArray([Ljava/lang/Object;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[J"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v2

    .line 151
    :try_start_0
    array-length v1, p1

    new-array v3, v1, [J

    .line 153
    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 154
    invoke-virtual {p0, v2, v5}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v2}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v6

    aput-wide v6, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Long;

    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 176
    invoke-virtual {p0, v1, v4}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 177
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 179
    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsArrayBox([Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v2

    .line 195
    :try_start_0
    array-length v1, p1

    new-array v3, v1, [Ljava/lang/Long;

    .line 197
    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 198
    invoke-virtual {p0, v2, v5}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 199
    invoke-interface {v2}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v1

    .line 239
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    const/4 v0, 0x0

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 242
    invoke-virtual {p0, v1, v4}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v1}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 245
    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method

.method public final insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/arch/persistence/room/c;->acquire()Landroid/arch/persistence/a/f;

    move-result-object v2

    .line 217
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 220
    invoke-virtual {p0, v2, v5}, Landroid/arch/persistence/room/c;->bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V

    .line 221
    invoke-interface {v2}, Landroid/arch/persistence/a/f;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/arch/persistence/room/c;->release(Landroid/arch/persistence/a/f;)V

    throw v0
.end method
