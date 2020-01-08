.class final Lc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/d;


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/r;

.field c:Z


# direct methods
.method constructor <init>(Lc/r;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lc/m;->a:Lc/c;

    .line 30
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lc/m;->b:Lc/r;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lc/t;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lc/m;->b:Lc/r;

    invoke-interface {v0}, Lc/r;->a()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lc/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->a_(Lc/c;J)V

    .line 42
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    .line 54
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc/m;->a:Lc/c;

    return-object v0
.end method

.method public c([B)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b([B)Lc/c;

    .line 86
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->b([BII)Lc/c;

    .line 92
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x0

    .line 240
    :try_start_0
    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v1, Lc/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 241
    iget-object v1, p0, Lc/m;->b:Lc/r;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    iget-wide v4, v3, Lc/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lc/r;->a_(Lc/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lc/m;->b:Lc/r;

    invoke-interface {v1}, Lc/r;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/m;->c:Z

    .line 254
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/u;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 243
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 224
    iget-object v0, p0, Lc/m;->b:Lc/r;

    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v2, Lc/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/r;->a_(Lc/c;J)V

    .line 226
    :cond_1
    iget-object v0, p0, Lc/m;->b:Lc/r;

    invoke-interface {v0}, Lc/r;->flush()V

    .line 227
    return-void
.end method

.method public g(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->d(I)Lc/c;

    .line 143
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->c(I)Lc/c;

    .line 131
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b(I)Lc/c;

    .line 125
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lc/m;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->j(J)Lc/c;

    .line 173
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->i(J)Lc/c;

    .line 167
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/m;->b:Lc/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lc/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->g()J

    move-result-wide v0

    .line 179
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/m;->b:Lc/r;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/r;->a_(Lc/c;J)V

    .line 180
    :cond_1
    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lc/m;->v()Lc/d;

    .line 99
    return v0
.end method
