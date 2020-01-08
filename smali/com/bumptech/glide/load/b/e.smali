.class final Lcom/bumptech/glide/load/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c/m$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/GlideContext;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Lcom/bumptech/glide/load/b/f$d;

.field private i:Lcom/bumptech/glide/load/i;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscode;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Lcom/bumptech/glide/load/g;

.field private o:Lcom/bumptech/glide/f;

.field private p:Lcom/bumptech/glide/load/b/h;

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->a:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/b/h;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/b/f$d;)Lcom/bumptech/glide/load/b/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Lcom/bumptech/glide/load/b/h;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/b/f$d;",
            ")",
            "Lcom/bumptech/glide/load/b/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/load/b/e;->d:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/load/b/e;->n:Lcom/bumptech/glide/load/g;

    .line 61
    iput p4, p0, Lcom/bumptech/glide/load/b/e;->e:I

    .line 62
    iput p5, p0, Lcom/bumptech/glide/load/b/e;->f:I

    .line 63
    iput-object p6, p0, Lcom/bumptech/glide/load/b/e;->p:Lcom/bumptech/glide/load/b/h;

    .line 64
    iput-object p7, p0, Lcom/bumptech/glide/load/b/e;->g:Ljava/lang/Class;

    .line 65
    iput-object p14, p0, Lcom/bumptech/glide/load/b/e;->h:Lcom/bumptech/glide/load/b/f$d;

    .line 66
    iput-object p8, p0, Lcom/bumptech/glide/load/b/e;->k:Ljava/lang/Class;

    .line 67
    iput-object p9, p0, Lcom/bumptech/glide/load/b/e;->o:Lcom/bumptech/glide/f;

    .line 68
    iput-object p10, p0, Lcom/bumptech/glide/load/b/e;->i:Lcom/bumptech/glide/load/i;

    .line 69
    iput-object p11, p0, Lcom/bumptech/glide/load/b/e;->j:Ljava/util/Map;

    .line 70
    iput-boolean p12, p0, Lcom/bumptech/glide/load/b/e;->q:Z

    .line 71
    iput-boolean p13, p0, Lcom/bumptech/glide/load/b/e;->r:Z

    .line 73
    return-object p0
.end method

.method a(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/g$e;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c/m",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/g$c;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    .line 82
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->d:Ljava/lang/Object;

    .line 83
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->n:Lcom/bumptech/glide/load/g;

    .line 84
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->g:Ljava/lang/Class;

    .line 85
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->k:Ljava/lang/Class;

    .line 86
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->i:Lcom/bumptech/glide/load/i;

    .line 87
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->o:Lcom/bumptech/glide/f;

    .line 88
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->j:Ljava/util/Map;

    .line 89
    iput-object v0, p0, Lcom/bumptech/glide/load/b/e;->p:Lcom/bumptech/glide/load/b/h;

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/e;->l:Z

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/e;->m:Z

    .line 95
    return-void
.end method

.method a(Lcom/bumptech/glide/load/b/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/b/s;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/bumptech/glide/load/g;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/e;->k()Ljava/util/List;

    move-result-object v3

    .line 172
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 173
    :goto_0
    if-ge v2, v4, :cond_1

    .line 174
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/m$a;

    .line 175
    iget-object v0, v0, Lcom/bumptech/glide/load/c/m$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 179
    :goto_1
    return v0

    .line 173
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_1
.end method

.method a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/e;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lcom/bumptech/glide/load/b/b/a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->h:Lcom/bumptech/glide/load/b/f$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/f$d;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;)",
            "Lcom/bumptech/glide/load/b/q",
            "<TData;*TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->g:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/e;->k:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/bumptech/glide/load/b/s;)Lcom/bumptech/glide/load/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/s",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/k",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/load/b/s;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/bumptech/glide/load/b/h;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->p:Lcom/bumptech/glide/load/b/h;

    return-object v0
.end method

.method c(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/l",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/l;

    .line 145
    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->q:Z

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/d/b;->a()Lcom/bumptech/glide/load/d/b;

    move-result-object v0

    .line 154
    :cond_1
    return-object v0
.end method

.method d()Lcom/bumptech/glide/f;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->o:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/i;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->i:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method f()Lcom/bumptech/glide/load/g;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->n:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/bumptech/glide/load/b/e;->e:I

    return v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/bumptech/glide/load/b/e;->f:I

    return v0
.end method

.method i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->d:Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/e;->g:Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/e;->k:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->r:Z

    return v0
.end method

.method k()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c/m$a",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->l:Z

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->l:Z

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->c:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 188
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/m;

    .line 190
    iget-object v4, p0, Lcom/bumptech/glide/load/b/e;->d:Ljava/lang/Object;

    iget v5, p0, Lcom/bumptech/glide/load/b/e;->e:I

    iget v6, p0, Lcom/bumptech/glide/load/b/e;->f:I

    iget-object v7, p0, Lcom/bumptech/glide/load/b/e;->i:Lcom/bumptech/glide/load/i;

    .line 191
    invoke-interface {v0, v4, v5, v6, v7}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v4, p0, Lcom/bumptech/glide/load/b/e;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->a:Ljava/util/List;

    return-object v0
.end method

.method l()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->m:Z

    if-nez v0, :cond_3

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/e;->m:Z

    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/e;->k()Ljava/util/List;

    move-result-object v4

    .line 205
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 206
    :goto_0
    if-ge v3, v5, :cond_3

    .line 207
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/m$a;

    .line 208
    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/c/m$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/c/m$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    .line 211
    :goto_1
    iget-object v6, v0, Lcom/bumptech/glide/load/c/m$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 212
    iget-object v6, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    iget-object v7, v0, Lcom/bumptech/glide/load/c/m$a;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    iget-object v7, v0, Lcom/bumptech/glide/load/c/m$a;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/b/e;->b:Ljava/util/List;

    return-object v0
.end method
