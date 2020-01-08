.class public Lcom/bumptech/glide/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/bumptech/glide/load/b/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/bumptech/glide/load/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Lcom/bumptech/glide/load/i;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/d/d;->b:F

    .line 82
    sget-object v0, Lcom/bumptech/glide/load/b/h;->e:Lcom/bumptech/glide/load/b/h;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    .line 84
    sget-object v0, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    .line 92
    iput-boolean v1, p0, Lcom/bumptech/glide/d/d;->i:Z

    .line 93
    iput v2, p0, Lcom/bumptech/glide/d/d;->j:I

    .line 94
    iput v2, p0, Lcom/bumptech/glide/d/d;->k:I

    .line 96
    invoke-static {}, Lcom/bumptech/glide/e/a;->a()Lcom/bumptech/glide/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    .line 98
    iput-boolean v1, p0, Lcom/bumptech/glide/d/d;->n:Z

    .line 102
    new-instance v0, Lcom/bumptech/glide/load/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    .line 106
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    .line 114
    iput-boolean v1, p0, Lcom/bumptech/glide/d/d;->y:Z

    return-void
.end method

.method private I()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->t:Z

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/k;",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 965
    if-eqz p3, :cond_0

    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 967
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/d/d;->y:Z

    .line 968
    return-object v0

    .line 966
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/d;->b(Ljava/lang/Class;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    return v0
.end method

.method private static b(II)Z
    .locals 1

    .prologue
    .line 359
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/k;",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/k;",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/bumptech/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public final B()I
    .locals 1

    .prologue
    .line 1399
    iget v0, p0, Lcom/bumptech/glide/d/d;->k:I

    return v0
.end method

.method public final C()Z
    .locals 2

    .prologue
    .line 1403
    iget v0, p0, Lcom/bumptech/glide/d/d;->k:I

    iget v1, p0, Lcom/bumptech/glide/d/d;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    return v0
.end method

.method public final D()I
    .locals 1

    .prologue
    .line 1407
    iget v0, p0, Lcom/bumptech/glide/d/d;->j:I

    return v0
.end method

.method public final E()F
    .locals 1

    .prologue
    .line 1411
    iget v0, p0, Lcom/bumptech/glide/d/d;->b:F

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->y:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 1423
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->w:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->x:Z

    return v0
.end method

.method public a()Lcom/bumptech/glide/d/d;
    .locals 3

    .prologue
    .line 676
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/d;

    .line 677
    new-instance v1, Lcom/bumptech/glide/load/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    .line 678
    iget-object v1, v0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    iget-object v2, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    .line 679
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    .line 680
    iget-object v1, v0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 681
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/d/d;->t:Z

    .line 682
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/d/d;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    return-object v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(F)Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(F)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/d/d;->b:F

    .line 381
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 383
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/bumptech/glide/d/d;
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(I)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    .line 481
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/d/d;->h:I

    .line 482
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 484
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(II)Lcom/bumptech/glide/d/d;
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/d;->a(II)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    .line 621
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/d/d;->k:I

    .line 622
    iput p2, p0, Lcom/bumptech/glide/d/d;->j:I

    .line 623
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 625
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 1216
    :goto_0
    return-object v0

    .line 1144
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget v0, p1, Lcom/bumptech/glide/d/d;->b:F

    iput v0, p0, Lcom/bumptech/glide/d/d;->b:F

    .line 1147
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->w:Z

    .line 1150
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    .line 1153
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    .line 1156
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1157
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    .line 1159
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1160
    iget v0, p1, Lcom/bumptech/glide/d/d;->f:I

    iput v0, p0, Lcom/bumptech/glide/d/d;->f:I

    .line 1162
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1163
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    .line 1165
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1166
    iget v0, p1, Lcom/bumptech/glide/d/d;->h:I

    iput v0, p0, Lcom/bumptech/glide/d/d;->h:I

    .line 1168
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1169
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->i:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->i:Z

    .line 1171
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1172
    iget v0, p1, Lcom/bumptech/glide/d/d;->k:I

    iput v0, p0, Lcom/bumptech/glide/d/d;->k:I

    .line 1173
    iget v0, p1, Lcom/bumptech/glide/d/d;->j:I

    iput v0, p0, Lcom/bumptech/glide/d/d;->j:I

    .line 1175
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1176
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    .line 1178
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1179
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    .line 1181
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1182
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    .line 1184
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1185
    iget v0, p1, Lcom/bumptech/glide/d/d;->p:I

    iput v0, p0, Lcom/bumptech/glide/d/d;->p:I

    .line 1187
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1188
    iget-object v0, p1, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    .line 1190
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1191
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->n:Z

    .line 1193
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1194
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->m:Z

    .line 1196
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1197
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1198
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->y:Z

    .line 1200
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/d/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1201
    iget-boolean v0, p1, Lcom/bumptech/glide/d/d;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->x:Z

    .line 1205
    :cond_13
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->n:Z

    if-nez v0, :cond_14

    .line 1206
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1207
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->m:Z

    .line 1209
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->y:Z

    .line 1213
    :cond_14
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    iget v1, p1, Lcom/bumptech/glide/d/d;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 1214
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    iget-object v1, p1, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    .line 1216
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    .line 446
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    .line 447
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 449
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/d/a/k;)Lcom/bumptech/glide/d/d;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/d/a/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 800
    sget-object v0, Lcom/bumptech/glide/load/d/a/l;->b:Lcom/bumptech/glide/load/h;

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/k;",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 935
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;)Lcom/bumptech/glide/d/d;

    .line 936
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 697
    :goto_0
    return-object v0

    .line 694
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    .line 697
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    .line 989
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->m:Z

    .line 991
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 992
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/l",
            "<TT;>;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 1077
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->n:Z

    .line 1073
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->y:Z

    .line 1077
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 597
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d/d;->a(Z)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 601
    :cond_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->i:Z

    .line 602
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 604
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 429
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/h;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    .line 430
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 432
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method final b(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/k;",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 948
    :goto_0
    return-object v0

    .line 947
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;)Lcom/bumptech/glide/d/d;

    .line 948
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    .line 656
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    .line 657
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 658
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 1042
    :goto_0
    return-object v0

    .line 1037
    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/d/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    .line 1039
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lcom/bumptech/glide/load/d/a/c;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/d/a/c;-><init>(Lcom/bumptech/glide/load/l;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    .line 1041
    const-class v0, Lcom/bumptech/glide/load/d/e/c;

    new-instance v1, Lcom/bumptech/glide/load/d/e/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/d/e/f;-><init>(Lcom/bumptech/glide/load/l;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    .line 1042
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/d/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/d/d;"
        }
    .end annotation

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->b(Ljava/lang/Class;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    .line 705
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    .line 706
    iget v0, p0, Lcom/bumptech/glide/d/d;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/d/d;->a:I

    .line 707
    invoke-direct {p0}, Lcom/bumptech/glide/d/d;->I()Lcom/bumptech/glide/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->n:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 715
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->t:Z

    return v0
.end method

.method public e()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 828
    sget-object v0, Lcom/bumptech/glide/load/d/a/k;->b:Lcom/bumptech/glide/load/d/a/k;

    new-instance v1, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1222
    instance-of v1, p1, Lcom/bumptech/glide/d/d;

    if-eqz v1, :cond_0

    .line 1223
    check-cast p1, Lcom/bumptech/glide/d/d;

    .line 1224
    iget v1, p1, Lcom/bumptech/glide/d/d;->b:F

    iget v2, p0, Lcom/bumptech/glide/d/d;->b:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/d;->f:I

    iget v2, p1, Lcom/bumptech/glide/d/d;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    .line 1226
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/d;->h:I

    iget v2, p1, Lcom/bumptech/glide/d/d;->h:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    .line 1228
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/d;->p:I

    iget v2, p1, Lcom/bumptech/glide/d/d;->p:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    .line 1230
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->i:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/d/d;->i:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/d;->j:I

    iget v2, p1, Lcom/bumptech/glide/d/d;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/d;->k:I

    iget v2, p1, Lcom/bumptech/glide/d/d;->k:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/d/d;->m:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/d/d;->n:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->w:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/d/d;->w:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/d/d;->x:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    .line 1238
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    .line 1240
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    .line 1241
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    .line 1242
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    .line 1243
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    iget-object v2, p1, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    .line 1244
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1246
    :cond_0
    return v0
.end method

.method public f()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 841
    sget-object v0, Lcom/bumptech/glide/load/d/a/k;->b:Lcom/bumptech/glide/load/d/a/k;

    new-instance v1, Lcom/bumptech/glide/load/d/a/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 856
    sget-object v0, Lcom/bumptech/glide/load/d/a/k;->a:Lcom/bumptech/glide/load/d/a/k;

    new-instance v1, Lcom/bumptech/glide/load/d/a/m;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/m;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/d/d;->d(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 871
    sget-object v0, Lcom/bumptech/glide/load/d/a/k;->a:Lcom/bumptech/glide/load/d/a/k;

    new-instance v1, Lcom/bumptech/glide/load/d/a/m;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/m;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/d/d;->c(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1251
    iget v0, p0, Lcom/bumptech/glide/d/d;->b:F

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->a(F)I

    move-result v0

    .line 1252
    iget v1, p0, Lcom/bumptech/glide/d/d;->f:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    .line 1253
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1254
    iget v1, p0, Lcom/bumptech/glide/d/d;->h:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    .line 1255
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1256
    iget v1, p0, Lcom/bumptech/glide/d/d;->p:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    .line 1257
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1258
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->i:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    .line 1259
    iget v1, p0, Lcom/bumptech/glide/d/d;->j:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    .line 1260
    iget v1, p0, Lcom/bumptech/glide/d/d;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    .line 1261
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->m:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    .line 1262
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    .line 1263
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->w:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    .line 1264
    iget-boolean v1, p0, Lcom/bumptech/glide/d/d;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1266
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->d:Lcom/bumptech/glide/f;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1267
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1268
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1269
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1270
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1271
    iget-object v1, p0, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1272
    return v0
.end method

.method public i()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 885
    sget-object v0, Lcom/bumptech/glide/load/d/a/k;->e:Lcom/bumptech/glide/load/d/a/k;

    new-instance v1, Lcom/bumptech/glide/load/d/a/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/d/d;->d(Lcom/bumptech/glide/load/d/a/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/d/d;
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->t:Z

    .line 1284
    return-object p0
.end method

.method public k()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    if-nez v0, :cond_0

    .line 1297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/d;->v:Z

    .line 1301
    invoke-virtual {p0}, Lcom/bumptech/glide/d/d;->j()Lcom/bumptech/glide/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->m:Z

    return v0
.end method

.method public final n()Lcom/bumptech/glide/load/i;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->q:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method public final o()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final p()Lcom/bumptech/glide/load/b/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->c:Lcom/bumptech/glide/load/b/h;

    return-object v0
.end method

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Lcom/bumptech/glide/d/d;->f:I

    return v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Lcom/bumptech/glide/d/d;->h:I

    return v0
.end method

.method public final t()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/bumptech/glide/d/d;->p:I

    return v0
.end method

.method public final v()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final w()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/bumptech/glide/d/d;->i:Z

    return v0
.end method

.method public final y()Lcom/bumptech/glide/load/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/bumptech/glide/d/d;->l:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 1390
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/d;->b(I)Z

    move-result v0

    return v0
.end method
