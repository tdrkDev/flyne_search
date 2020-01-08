.class public Lcom/bumptech/glide/load/c/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n",
        "<[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c/q;)Lcom/bumptech/glide/load/c/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/q;",
            ")",
            "Lcom/bumptech/glide/load/c/m",
            "<[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/bumptech/glide/load/c/b;

    new-instance v1, Lcom/bumptech/glide/load/c/b$d$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/c/b$d$1;-><init>(Lcom/bumptech/glide/load/c/b$d;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/b;-><init>(Lcom/bumptech/glide/load/c/b$b;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
