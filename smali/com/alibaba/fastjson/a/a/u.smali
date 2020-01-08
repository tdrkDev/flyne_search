.class public abstract Lcom/alibaba/fastjson/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/alibaba/fastjson/c/c;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson/a/a/u;->b:Ljava/lang/Class;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 2

    .prologue
    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public b()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/u;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
