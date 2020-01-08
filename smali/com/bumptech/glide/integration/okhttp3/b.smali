.class public Lcom/bumptech/glide/integration/okhttp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/okhttp3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/m",
        "<",
        "Lcom/bumptech/glide/load/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/e$a;


# direct methods
.method public constructor <init>(Lokhttp3/e$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->a:Lokhttp3/e$a;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c/g;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/g;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/c/m$a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/load/c/m$a;

    new-instance v1, Lcom/bumptech/glide/integration/okhttp3/a;

    iget-object v2, p0, Lcom/bumptech/glide/integration/okhttp3/b;->a:Lokhttp3/e$a;

    invoke-direct {v1, v2, p1}, Lcom/bumptech/glide/integration/okhttp3/a;-><init>(Lokhttp3/e$a;Lcom/bumptech/glide/load/c/g;)V

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/c/m$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/c/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/okhttp3/b;->a(Lcom/bumptech/glide/load/c/g;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/c/g;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/c/g;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/okhttp3/b;->a(Lcom/bumptech/glide/load/c/g;)Z

    move-result v0

    return v0
.end method
