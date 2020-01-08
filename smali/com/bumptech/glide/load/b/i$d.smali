.class public Lcom/bumptech/glide/load/b/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/j",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/d/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/d/e;Lcom/bumptech/glide/load/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/e;",
            "Lcom/bumptech/glide/load/b/j",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/bumptech/glide/load/b/i$d;->b:Lcom/bumptech/glide/d/e;

    .line 57
    iput-object p2, p0, Lcom/bumptech/glide/load/b/i$d;->a:Lcom/bumptech/glide/load/b/j;

    .line 58
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/b/i$d;->a:Lcom/bumptech/glide/load/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/i$d;->b:Lcom/bumptech/glide/d/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/j;->b(Lcom/bumptech/glide/d/e;)V

    .line 62
    return-void
.end method
