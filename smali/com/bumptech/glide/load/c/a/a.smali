.class public Lcom/bumptech/glide/load/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a/a$a;
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


# static fields
.field public static final a:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/load/c/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    const/16 v1, 0x9c4

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/a;->a:Lcom/bumptech/glide/load/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/c/a/a;-><init>(Lcom/bumptech/glide/load/c/l;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/l",
            "<",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/l;

    .line 36
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
    const/4 v1, 0x0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/l;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/l;

    invoke-virtual {v0, p1, v1, v1}, Lcom/bumptech/glide/load/c/l;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/g;

    .line 46
    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/a;->b:Lcom/bumptech/glide/load/c/l;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/bumptech/glide/load/c/l;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 51
    :cond_0
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/c/a/a;->a:Lcom/bumptech/glide/load/h;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    new-instance v1, Lcom/bumptech/glide/load/c/m$a;

    new-instance v2, Lcom/bumptech/glide/load/a/h;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/load/a/h;-><init>(Lcom/bumptech/glide/load/c/g;I)V

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/c/m$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/b;)V

    return-object v1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/bumptech/glide/load/c/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/a;->a(Lcom/bumptech/glide/load/c/g;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/c/g;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/bumptech/glide/load/c/g;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/c/a/a;->a(Lcom/bumptech/glide/load/c/g;)Z

    move-result v0

    return v0
.end method
