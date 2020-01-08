.class public final Lcom/google/gson/a/a/l;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/a/a/l$a;
    }
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
.field private final a:Lcom/google/gson/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/e;

.field private final d:Lcom/google/gson/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/u;

.field private final f:Lcom/google/gson/a/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/a/a/l",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private g:Lcom/google/gson/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/q;Lcom/google/gson/i;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/q",
            "<TT;>;",
            "Lcom/google/gson/i",
            "<TT;>;",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a",
            "<TT;>;",
            "Lcom/google/gson/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    .line 47
    new-instance v0, Lcom/google/gson/a/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/a/a/l$a;-><init>(Lcom/google/gson/a/a/l;Lcom/google/gson/a/a/l$1;)V

    iput-object v0, p0, Lcom/google/gson/a/a/l;->f:Lcom/google/gson/a/a/l$a;

    .line 54
    iput-object p1, p0, Lcom/google/gson/a/a/l;->a:Lcom/google/gson/q;

    .line 55
    iput-object p2, p0, Lcom/google/gson/a/a/l;->b:Lcom/google/gson/i;

    .line 56
    iput-object p3, p0, Lcom/google/gson/a/a/l;->c:Lcom/google/gson/e;

    .line 57
    iput-object p4, p0, Lcom/google/gson/a/a/l;->d:Lcom/google/gson/b/a;

    .line 58
    iput-object p5, p0, Lcom/google/gson/a/a/l;->e:Lcom/google/gson/u;

    .line 59
    return-void
.end method

.method private b()Lcom/google/gson/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/gson/a/a/l;->g:Lcom/google/gson/t;

    .line 87
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/a/a/l;->c:Lcom/google/gson/e;

    iget-object v1, p0, Lcom/google/gson/a/a/l;->e:Lcom/google/gson/u;

    iget-object v2, p0, Lcom/google/gson/a/a/l;->d:Lcom/google/gson/b/a;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Lcom/google/gson/u;Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/a/a/l;->g:Lcom/google/gson/t;

    goto :goto_0
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
    .line 73
    iget-object v0, p0, Lcom/google/gson/a/a/l;->a:Lcom/google/gson/q;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/google/gson/a/a/l;->b()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/t;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/c/c;->f()Lcom/google/gson/c/c;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/gson/a/a/l;->a:Lcom/google/gson/q;

    iget-object v1, p0, Lcom/google/gson/a/a/l;->d:Lcom/google/gson/b/a;

    invoke-virtual {v1}, Lcom/google/gson/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/a/a/l;->f:Lcom/google/gson/a/a/l$a;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/q;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/p;)Lcom/google/gson/j;

    move-result-object v0

    .line 82
    invoke-static {v0, p1}, Lcom/google/gson/a/j;->a(Lcom/google/gson/j;Lcom/google/gson/c/c;)V

    goto :goto_0
.end method

.method public b(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 4
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
    .line 62
    iget-object v0, p0, Lcom/google/gson/a/a/l;->b:Lcom/google/gson/i;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/gson/a/a/l;->b()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/t;->b(Lcom/google/gson/c/a;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/gson/a/j;->a(Lcom/google/gson/c/a;)Lcom/google/gson/j;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/gson/j;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/gson/a/a/l;->b:Lcom/google/gson/i;

    iget-object v2, p0, Lcom/google/gson/a/a/l;->d:Lcom/google/gson/b/a;

    invoke-virtual {v2}, Lcom/google/gson/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/a/a/l;->f:Lcom/google/gson/a/a/l$a;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/gson/i;->a(Lcom/google/gson/j;Ljava/lang/reflect/Type;Lcom/google/gson/h;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
