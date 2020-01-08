.class public Lcom/bumptech/glide/load/c/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n",
        "<",
        "Lcom/bumptech/glide/load/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/l",
            "<",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/c/l;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/l;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/a/a$a;->a:Lcom/bumptech/glide/load/c/l;

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
            "<",
            "Lcom/bumptech/glide/load/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/bumptech/glide/load/c/a/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/a$a;->a:Lcom/bumptech/glide/load/c/l;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/a/a;-><init>(Lcom/bumptech/glide/load/c/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
