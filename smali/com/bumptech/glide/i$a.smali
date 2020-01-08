.class Lcom/bumptech/glide/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/m;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/m;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/bumptech/glide/i$a;->a:Lcom/bumptech/glide/manager/m;

    .line 477
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/bumptech/glide/i$a;->a:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/m;->d()V

    .line 484
    :cond_0
    return-void
.end method
