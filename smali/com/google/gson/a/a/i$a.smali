.class public final Lcom/google/gson/a/a/i$a;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/a/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/a/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/a/h;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/a/h",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/a/a/i$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/gson/a/a/i$a;->a:Lcom/google/gson/a/h;

    .line 201
    iput-object p2, p0, Lcom/google/gson/a/a/i$a;->b:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/google/gson/c/c;->f()Lcom/google/gson/c/c;

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/c/c;->d()Lcom/google/gson/c/c;

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/a/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/a/a/i$b;

    .line 241
    invoke-virtual {v0, p2}, Lcom/google/gson/a/a/i$b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, v0, Lcom/google/gson/a/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/gson/c/c;->a(Ljava/lang/String;)Lcom/google/gson/c/c;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/a/a/i$b;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/c/c;->e()Lcom/google/gson/c/c;

    goto :goto_0
.end method

.method public b(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/c/b;->NULL:Lcom/google/gson/c/b;

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/google/gson/c/a;->j()V

    .line 207
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/gson/a/a/i$a;->a:Lcom/google/gson/a/h;

    invoke-interface {v0}, Lcom/google/gson/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    .line 213
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->c()V

    .line 214
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/google/gson/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/google/gson/a/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/a/a/i$b;

    .line 217
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/google/gson/a/a/i$b;->j:Z

    if-nez v2, :cond_2

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/c/a;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/a/a/i$b;->a(Lcom/google/gson/c/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    :catch_1
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/c/a;->d()V

    move-object v0, v1

    .line 229
    goto :goto_0
.end method
