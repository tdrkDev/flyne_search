.class public final Lcom/bumptech/glide/g$b;
.super Lcom/bumptech/glide/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 428
    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lcom/bumptech/glide/g$a;-><init>(Ljava/lang/String;)V

    .line 429
    return-void
.end method
