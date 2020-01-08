.class public Lcom/bumptech/glide/integration/okhttp3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/b;
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/b",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lokhttp3/f;"
    }
.end annotation


# instance fields
.field a:Ljava/io/InputStream;

.field b:Lokhttp3/ac;

.field private final c:Lokhttp3/e$a;

.field private final d:Lcom/bumptech/glide/load/c/g;

.field private volatile e:Lokhttp3/e;

.field private f:Lcom/bumptech/glide/load/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/b$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/e$a;Lcom/bumptech/glide/load/c/g;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->c:Lokhttp3/e$a;

    .line 36
    iput-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/a;->d:Lcom/bumptech/glide/load/c/g;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->b:Lokhttp3/ac;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->b:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->close()V

    .line 100
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->f:Lcom/bumptech/glide/load/a/b$a;

    .line 101
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/a/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/a/b$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->d:Lcom/bumptech/glide/load/c/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/c/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/z$a;->a(Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v2

    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->d:Lcom/bumptech/glide/load/c/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lokhttp3/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Lokhttp3/z$a;->a()Lokhttp3/z;

    move-result-object v0

    .line 47
    iput-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/a;->f:Lcom/bumptech/glide/load/a/b$a;

    .line 49
    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->c:Lokhttp3/e$a;

    invoke-interface {v1, v0}, Lokhttp3/e$a;->a(Lokhttp3/z;)Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    invoke-interface {v0, p0}, Lokhttp3/e;->a(Lokhttp3/f;)V

    .line 65
    :goto_1
    return-void

    .line 56
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    invoke-interface {v1}, Lokhttp3/e;->a()Lokhttp3/ab;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/integration/okhttp3/a;->a(Lokhttp3/e;Lokhttp3/ab;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/integration/okhttp3/a;->a(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Workaround for framework bug on O"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/integration/okhttp3/a;->a(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public a(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "OkHttpFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "OkHttpFetcher"

    const-string v1, "OkHttp failed to obtain result"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->f:Lcom/bumptech/glide/load/a/b$a;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/a/b$a;->a(Ljava/lang/Exception;)V

    .line 74
    return-void
.end method

.method public a(Lokhttp3/e;Lokhttp3/ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p2}, Lokhttp3/ab;->h()Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->b:Lokhttp3/ac;

    .line 79
    invoke-virtual {p2}, Lokhttp3/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->b:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->b()J

    move-result-wide v0

    .line 81
    iget-object v2, p0, Lcom/bumptech/glide/integration/okhttp3/a;->b:Lokhttp3/ac;

    invoke-virtual {v2}, Lokhttp3/ac;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/util/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Ljava/io/InputStream;

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->f:Lcom/bumptech/glide/load/a/b$a;

    iget-object v1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/a/b$a;->a(Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->f:Lcom/bumptech/glide/load/a/b$a;

    new-instance v1, Lcom/bumptech/glide/load/e;

    invoke-virtual {p2}, Lokhttp3/ab;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/ab;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/a/b$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->e:Lokhttp3/e;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lokhttp3/e;->b()V

    .line 109
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/bumptech/glide/load/a;->REMOTE:Lcom/bumptech/glide/load/a;

    return-object v0
.end method
