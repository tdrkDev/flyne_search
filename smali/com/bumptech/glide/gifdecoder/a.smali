.class public Lcom/bumptech/glide/gifdecoder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field b:I

.field c:I

.field d:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/a;->a:[I

    .line 24
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/a;->b:I

    .line 26
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/a;->c:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/a;->e:Ljava/util/List;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/a;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/a;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/a;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/a;->b:I

    return v0
.end method
