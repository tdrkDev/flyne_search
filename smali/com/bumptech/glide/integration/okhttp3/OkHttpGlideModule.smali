.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/b/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/bumptech/glide/load/c/g;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-direct {v2}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>()V

    invoke-virtual {p3, v0, v1, v2}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    .line 32
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
