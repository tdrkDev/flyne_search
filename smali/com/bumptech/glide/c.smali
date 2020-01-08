.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static volatile a:Lcom/bumptech/glide/c;

.field private static volatile b:Z


# instance fields
.field private final c:Lcom/bumptech/glide/load/b/i;

.field private final d:Lcom/bumptech/glide/load/b/a/e;

.field private final e:Lcom/bumptech/glide/load/b/b/h;

.field private final f:Lcom/bumptech/glide/load/b/d/a;

.field private final g:Lcom/bumptech/glide/GlideContext;

.field private final h:Lcom/bumptech/glide/g;

.field private final i:Lcom/bumptech/glide/load/b/a/b;

.field private final j:Lcom/bumptech/glide/manager/k;

.field private final k:Lcom/bumptech/glide/manager/d;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/i;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/d/d;Ljava/util/Map;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/i;",
            "Lcom/bumptech/glide/load/b/b/h;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/manager/k;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/d/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/j",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/bumptech/glide/e;->NORMAL:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/e;

    .line 281
    iput-object p2, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/b/i;

    .line 282
    iput-object p4, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/b/a/e;

    .line 283
    iput-object p5, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/a/b;

    .line 284
    iput-object p3, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/b/b/h;

    .line 285
    iput-object p6, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/manager/k;

    .line 286
    iput-object p7, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    .line 288
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/d/d;->n()Lcom/bumptech/glide/load/i;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/d/a/l;->a:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b;

    .line 289
    new-instance v1, Lcom/bumptech/glide/load/b/d/a;

    invoke-direct {v1, p3, p4, v0}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b;)V

    iput-object v1, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/b/d/a;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/bumptech/glide/g;

    invoke-direct {v1}, Lcom/bumptech/glide/g;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    .line 294
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    new-instance v2, Lcom/bumptech/glide/load/d/a/j;

    invoke-direct {v2}, Lcom/bumptech/glide/load/d/a/j;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/g;

    .line 296
    new-instance v1, Lcom/bumptech/glide/load/d/a/l;

    iget-object v2, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->a()Ljava/util/List;

    move-result-object v2

    .line 297
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {v1, v2, v3, p4, p5}, Lcom/bumptech/glide/load/d/a/l;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    .line 298
    new-instance v2, Lcom/bumptech/glide/load/d/e/a;

    iget-object v3, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    .line 299
    invoke-virtual {v3}, Lcom/bumptech/glide/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p1, v3, p4, p5}, Lcom/bumptech/glide/load/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    .line 301
    iget-object v3, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/c/c;

    invoke-direct {v5}, Lcom/bumptech/glide/load/c/c;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/c/s;

    invoke-direct {v5, p5}, Lcom/bumptech/glide/load/c/s;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    .line 302
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/d/a/g;

    invoke-direct {v6, v1}, Lcom/bumptech/glide/load/d/a/g;-><init>(Lcom/bumptech/glide/load/d/a/l;)V

    .line 304
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Ljava/io/InputStream;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/d/a/q;

    invoke-direct {v6, v1, p5}, Lcom/bumptech/glide/load/d/a/q;-><init>(Lcom/bumptech/glide/load/d/a/l;Lcom/bumptech/glide/load/b/a/b;)V

    .line 306
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/d/a/s;

    invoke-direct {v6, p4}, Lcom/bumptech/glide/load/d/a/s;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    .line 308
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/bumptech/glide/load/d/a/d;

    invoke-direct {v5}, Lcom/bumptech/glide/load/d/a/d;-><init>()V

    .line 309
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/d/a/a;

    new-instance v7, Lcom/bumptech/glide/load/d/a/g;

    invoke-direct {v7, v1}, Lcom/bumptech/glide/load/d/a/g;-><init>(Lcom/bumptech/glide/load/d/a/l;)V

    invoke-direct {v6, v0, p4, v7}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/j;)V

    .line 311
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v3

    const-class v4, Ljava/io/InputStream;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/d/a/a;

    new-instance v7, Lcom/bumptech/glide/load/d/a/q;

    invoke-direct {v7, v1, p5}, Lcom/bumptech/glide/load/d/a/q;-><init>(Lcom/bumptech/glide/load/d/a/l;Lcom/bumptech/glide/load/b/a/b;)V

    invoke-direct {v6, v0, p4, v7}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/j;)V

    .line 314
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/d/a/a;

    new-instance v6, Lcom/bumptech/glide/load/d/a/s;

    invoke-direct {v6, p4}, Lcom/bumptech/glide/load/d/a/s;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    invoke-direct {v5, v0, p4, v6}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/j;)V

    .line 317
    invoke-virtual {v1, v3, v4, v5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/d/a/b;

    new-instance v5, Lcom/bumptech/glide/load/d/a/d;

    invoke-direct {v5}, Lcom/bumptech/glide/load/d/a/d;-><init>()V

    invoke-direct {v4, p4, v5}, Lcom/bumptech/glide/load/d/a/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/k;)V

    .line 319
    invoke-virtual {v1, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/d/e/c;

    new-instance v5, Lcom/bumptech/glide/load/d/e/i;

    iget-object v6, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    .line 322
    invoke-virtual {v6}, Lcom/bumptech/glide/g;->a()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6, v2, p5}, Lcom/bumptech/glide/load/d/e/i;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/b/a/b;)V

    .line 321
    invoke-virtual {v1, v3, v4, v5}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v4, Lcom/bumptech/glide/load/d/e/c;

    .line 323
    invoke-virtual {v1, v3, v4, v2}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/d/e/c;

    new-instance v3, Lcom/bumptech/glide/load/d/e/d;

    invoke-direct {v3}, Lcom/bumptech/glide/load/d/e/d;-><init>()V

    .line 324
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    new-instance v4, Lcom/bumptech/glide/load/c/u$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/u$a;-><init>()V

    .line 326
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/bumptech/glide/load/d/e/h;

    invoke-direct {v4, p4}, Lcom/bumptech/glide/load/d/e/h;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    .line 327
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/d/b/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/d/b/a$a;-><init>()V

    .line 329
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/a/c$a;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/io/File;

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/c/d$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/d$b;-><init>()V

    .line 330
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/io/File;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/f$e;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/f$e;-><init>()V

    .line 331
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/io/File;

    const-class v3, Ljava/io/File;

    new-instance v4, Lcom/bumptech/glide/load/d/d/a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/d/d/a;-><init>()V

    .line 332
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/io/File;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/f$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/f$b;-><init>()V

    .line 333
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/io/File;

    const-class v3, Ljava/io/File;

    new-instance v4, Lcom/bumptech/glide/load/c/u$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/u$a;-><init>()V

    .line 334
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/a/i$a;

    invoke-direct {v2, p5}, Lcom/bumptech/glide/load/a/i$a;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/a/c$a;)Lcom/bumptech/glide/g;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/r$b;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/c/r$b;-><init>(Landroid/content/res/Resources;)V

    .line 337
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/r$a;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/c/r$a;-><init>(Landroid/content/res/Resources;)V

    .line 338
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/r$b;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/c/r$b;-><init>(Landroid/content/res/Resources;)V

    .line 342
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/r$a;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/c/r$a;-><init>(Landroid/content/res/Resources;)V

    .line 343
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/e$c;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/e$c;-><init>()V

    .line 347
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/t$b;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/t$b;-><init>()V

    .line 348
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/t$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/t$a;-><init>()V

    .line 349
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a/b$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/a/b$a;-><init>()V

    .line 350
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a$c;

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/a$b;

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 352
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a/c$a;

    invoke-direct {v4, p1}, Lcom/bumptech/glide/load/c/a/c$a;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a/d$a;

    invoke-direct {v4, p1}, Lcom/bumptech/glide/load/c/a/d$a;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/v$c;

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/c/v$c;-><init>(Landroid/content/ContentResolver;)V

    .line 358
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/c/v$a;

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/c/v$a;-><init>(Landroid/content/ContentResolver;)V

    .line 362
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/w$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/w$a;-><init>()V

    .line 364
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Ljava/net/URL;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a/e$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/a/e$a;-><init>()V

    .line 365
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/File;

    new-instance v4, Lcom/bumptech/glide/load/c/k$a;

    invoke-direct {v4, p1}, Lcom/bumptech/glide/load/c/k$a;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/c/g;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/a/a$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/a/a$a;-><init>()V

    .line 367
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, [B

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/c/b$a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/b$a;-><init>()V

    .line 368
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, [B

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/c/b$d;

    invoke-direct {v4}, Lcom/bumptech/glide/load/c/b$d;-><init>()V

    .line 369
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/d/f/b;

    invoke-direct {v4, v0, p4}, Lcom/bumptech/glide/load/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;)V

    .line 371
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/d;)Lcom/bumptech/glide/g;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, [B

    new-instance v3, Lcom/bumptech/glide/load/d/f/a;

    invoke-direct {v3}, Lcom/bumptech/glide/load/d/f/a;-><init>()V

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/d;)Lcom/bumptech/glide/g;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/d/e/c;

    const-class v2, [B

    new-instance v3, Lcom/bumptech/glide/load/d/f/c;

    invoke-direct {v3}, Lcom/bumptech/glide/load/d/f/c;-><init>()V

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/d;)Lcom/bumptech/glide/g;

    .line 376
    new-instance v3, Lcom/bumptech/glide/d/a/e;

    invoke-direct {v3}, Lcom/bumptech/glide/d/a/e;-><init>()V

    .line 377
    new-instance v0, Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    move-object v1, p1

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object v6, p2

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/a/e;Lcom/bumptech/glide/d/d;Ljava/util/Map;Lcom/bumptech/glide/load/b/i;I)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/GlideContext;

    .line 381
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    if-nez v0, :cond_1

    .line 154
    const-class v1, Lcom/bumptech/glide/c;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)V

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 561
    invoke-static {p0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/bumptech/glide/c;->b:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/c;->b:Z

    .line 172
    invoke-static {p0}, Lcom/bumptech/glide/c;->d(Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/c;->b:Z

    .line 174
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    invoke-static {}, Lcom/bumptech/glide/c;->j()Lcom/bumptech/glide/a;

    move-result-object v3

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 192
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bumptech/glide/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    :cond_0
    new-instance v0, Lcom/bumptech/glide/b/e;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/b/e;->a()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 196
    :goto_0
    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {v3}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    invoke-virtual {v3}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v4

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    const-string v6, "Glide"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    const-string v6, "Glide"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 212
    :cond_3
    const-string v0, "Glide"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    .line 214
    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :cond_4
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v3}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/manager/k$a;

    move-result-object v0

    .line 221
    :goto_3
    new-instance v4, Lcom/bumptech/glide/d;

    invoke-direct {v4}, Lcom/bumptech/glide/d;-><init>()V

    .line 222
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/manager/k$a;)Lcom/bumptech/glide/d;

    move-result-object v4

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    .line 224
    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/b/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_4

    .line 220
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 226
    :cond_6
    if-eqz v3, :cond_7

    .line 227
    invoke-virtual {v3, v2, v4}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 229
    :cond_7
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v4

    .line 230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    .line 231
    iget-object v5, v4, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    invoke-interface {v0, v2, v4, v5}, Lcom/bumptech/glide/b/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V

    goto :goto_5

    .line 233
    :cond_8
    if-eqz v3, :cond_9

    .line 234
    iget-object v0, v4, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    invoke-virtual {v3, v2, v4, v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V

    .line 236
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 237
    sput-object v4, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    .line 238
    return-void

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 530
    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/manager/k;

    move-result-object v0

    return-object v0
.end method

.method private static j()Lcom/bumptech/glide/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 266
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v0, "Glide"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "Glide"

    const-string v2, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 265
    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/b/a/e;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/b/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/h;->a(I)V

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->a(I)V

    .line 480
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->a(I)V

    .line 481
    return-void
.end method

.method a(Lcom/bumptech/glide/d/a/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    .line 641
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Lcom/bumptech/glide/d/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    monitor-exit v1

    return-void

    .line 645
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove target from managers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lcom/bumptech/glide/i;)V
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 654
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    return-void
.end method

.method public b()Lcom/bumptech/glide/load/b/a/b;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/a/b;

    return-object v0
.end method

.method b(Lcom/bumptech/glide/i;)V
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 663
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 664
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/bumptech/glide/manager/d;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/GlideContext;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    .line 464
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/h;->a()V

    .line 465
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/e;->a()V

    .line 466
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/b;->a()V

    .line 467
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/bumptech/glide/util/i;->b()V

    .line 493
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/i;->a()V

    .line 494
    return-void
.end method

.method public h()Lcom/bumptech/glide/manager/k;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/g;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->f()V

    .line 680
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)V

    .line 670
    return-void
.end method
