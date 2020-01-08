.class public final Lcom/bumptech/glide/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/a;
.implements Lcom/bumptech/glide/d/a/g;
.implements Lcom/bumptech/glide/d/e;
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/d/a;",
        "Lcom/bumptech/glide/d/a/g;",
        "Lcom/bumptech/glide/d/e;",
        "Lcom/bumptech/glide/util/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/d/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static y:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/bumptech/glide/util/a/b;

.field private d:Lcom/bumptech/glide/d/b;

.field private e:Lcom/bumptech/glide/GlideContext;

.field private f:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private h:Lcom/bumptech/glide/d/d;

.field private i:I

.field private j:I

.field private k:Lcom/bumptech/glide/f;

.field private l:Lcom/bumptech/glide/d/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/d/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/d/c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private n:Lcom/bumptech/glide/load/b/i;

.field private o:Lcom/bumptech/glide/d/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/d/b/c",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private p:Lcom/bumptech/glide/load/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;"
        }
    .end annotation
.end field

.field private q:Lcom/bumptech/glide/load/b/i$d;

.field private r:J

.field private s:Lcom/bumptech/glide/d/f$a;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/d/f$1;

    invoke-direct {v1}, Lcom/bumptech/glide/d/f$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/a/a;->a(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/d/f;->a:Landroid/support/v4/util/Pools$Pool;

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/d/f;->y:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->b:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/bumptech/glide/util/a/b;->a()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    .line 148
    return-void
.end method

.method private static a(IF)I
    .locals 1

    .prologue
    .line 460
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 370
    sget-boolean v0, Lcom/bumptech/glide/d/f;->y:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/f;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/f;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/d/d;IILcom/bumptech/glide/f;Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/c;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/d/b/c;)Lcom/bumptech/glide/d/f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/d/d;",
            "II",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/d/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/d/c",
            "<TR;>;",
            "Lcom/bumptech/glide/d/b;",
            "Lcom/bumptech/glide/load/b/i;",
            "Lcom/bumptech/glide/d/b/c",
            "<-TR;>;)",
            "Lcom/bumptech/glide/d/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/bumptech/glide/d/f;->a:Landroid/support/v4/util/Pools$Pool;

    .line 125
    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/f;

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/bumptech/glide/d/f;

    invoke-direct {v0}, Lcom/bumptech/glide/d/f;-><init>()V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 129
    invoke-direct/range {v0 .. v12}, Lcom/bumptech/glide/d/f;->b(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/d/d;IILcom/bumptech/glide/f;Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/c;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/d/b/c;)V

    .line 142
    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b/o;I)V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 558
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->d()I

    move-result v0

    .line 559
    if-gt v0, p2, :cond_0

    .line 560
    const-string v1, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/d/f;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/d/f;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 562
    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/o;->a(Ljava/lang/String;)V

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    .line 567
    sget-object v0, Lcom/bumptech/glide/d/f$a;->FAILED:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 569
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    iget-object v1, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    .line 570
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->q()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/d/c;->a(Lcom/bumptech/glide/load/b/o;Ljava/lang/Object;Lcom/bumptech/glide/d/a/h;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->n()V

    .line 573
    :cond_2
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->n:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/i;->a(Lcom/bumptech/glide/load/b/s;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->p:Lcom/bumptech/glide/load/b/s;

    .line 312
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/s;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->q()Z

    move-result v5

    .line 529
    sget-object v0, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 530
    iput-object p1, p0, Lcom/bumptech/glide/d/f;->p:Lcom/bumptech/glide/load/b/s;

    .line 532
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->d()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 533
    const-string v0, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/d/f;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/d/f;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/d/f;->r:J

    .line 535
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    iget-object v2, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    move-object v1, p2

    move-object v4, p3

    .line 539
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/d/c;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->o:Lcom/bumptech/glide/d/b/c;

    .line 541
    invoke-interface {v0, p3, v5}, Lcom/bumptech/glide/d/b/c;->a(Lcom/bumptech/glide/load/a;Z)Lcom/bumptech/glide/d/b/b;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/d/a/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/d/b/b;)V

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->r()V

    .line 546
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 590
    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/d/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/d/f;->y:Z

    .line 386
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/f;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/d/d;IILcom/bumptech/glide/f;Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/c;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/d/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/d/d;",
            "II",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/d/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/d/c",
            "<TR;>;",
            "Lcom/bumptech/glide/d/b;",
            "Lcom/bumptech/glide/load/b/i;",
            "Lcom/bumptech/glide/d/b/c",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    .line 164
    iput-object p2, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    .line 165
    iput-object p3, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    .line 166
    iput-object p4, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 167
    iput p5, p0, Lcom/bumptech/glide/d/f;->i:I

    .line 168
    iput p6, p0, Lcom/bumptech/glide/d/f;->j:I

    .line 169
    iput-object p7, p0, Lcom/bumptech/glide/d/f;->k:Lcom/bumptech/glide/f;

    .line 170
    iput-object p8, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    .line 171
    iput-object p9, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    .line 172
    iput-object p10, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    .line 173
    iput-object p11, p0, Lcom/bumptech/glide/d/f;->n:Lcom/bumptech/glide/load/b/i;

    .line 174
    iput-object p12, p0, Lcom/bumptech/glide/d/f;->o:Lcom/bumptech/glide/d/b/c;

    .line 175
    sget-object v0, Lcom/bumptech/glide/d/f$a;->PENDING:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 176
    return-void
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->w()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    .line 342
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->r()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->s()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->v()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    .line 362
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->u()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->u()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    :cond_1
    if-nez v0, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    :cond_2
    if-nez v0, :cond_3

    .line 410
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/d/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/b;->b(Lcom/bumptech/glide/d/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/b;->c(Lcom/bumptech/glide/d/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    invoke-interface {v0}, Lcom/bumptech/glide/d/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/b;->d(Lcom/bumptech/glide/d/a;)V

    .line 479
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 207
    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/d/f;->r:J

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 209
    iget v0, p0, Lcom/bumptech/glide/d/f;->i:I

    iget v1, p0, Lcom/bumptech/glide/d/f;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p0, Lcom/bumptech/glide/d/f;->i:I

    iput v0, p0, Lcom/bumptech/glide/d/f;->w:I

    .line 211
    iget v0, p0, Lcom/bumptech/glide/d/f;->j:I

    iput v0, p0, Lcom/bumptech/glide/d/f;->x:I

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 216
    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/b/o;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/o;I)V

    .line 252
    :cond_1
    :goto_1
    return-void

    .line 215
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_4

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_5

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->p:Lcom/bumptech/glide/load/b/s;

    sget-object v1, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V

    goto :goto_1

    .line 238
    :cond_5
    sget-object v0, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 239
    iget v0, p0, Lcom/bumptech/glide/d/f;->i:I

    iget v1, p0, Lcom/bumptech/glide/d/f;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    iget v0, p0, Lcom/bumptech/glide/d/f;->i:I

    iget v1, p0, Lcom/bumptech/glide/d/f;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/d/f;->a(II)V

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_7

    .line 246
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_7
    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/d/f;->r:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/a/h;->a(Lcom/bumptech/glide/d/a/g;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 20

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 421
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/d/f;->r:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/String;)V

    .line 424
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v3, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    if-eq v2, v3, :cond_2

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    sget-object v2, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    invoke-virtual {v2}, Lcom/bumptech/glide/d/d;->E()F

    move-result v2

    .line 430
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/bumptech/glide/d/f;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/bumptech/glide/d/f;->w:I

    .line 431
    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/bumptech/glide/d/f;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/d/f;->x:I

    .line 433
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/d/f;->r:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/String;)V

    .line 436
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/d/f;->n:Lcom/bumptech/glide/load/b/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 439
    invoke-virtual {v5}, Lcom/bumptech/glide/d/d;->y()Lcom/bumptech/glide/load/g;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/d/f;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/d/f;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 442
    invoke-virtual {v8}, Lcom/bumptech/glide/d/d;->o()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/d/f;->k:Lcom/bumptech/glide/f;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 445
    invoke-virtual {v11}, Lcom/bumptech/glide/d/d;->p()Lcom/bumptech/glide/load/b/h;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 446
    invoke-virtual {v12}, Lcom/bumptech/glide/d/d;->l()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 447
    invoke-virtual {v13}, Lcom/bumptech/glide/d/d;->m()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 448
    invoke-virtual {v14}, Lcom/bumptech/glide/d/d;->F()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 449
    invoke-virtual {v15}, Lcom/bumptech/glide/d/d;->n()Lcom/bumptech/glide/load/i;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    move-object/from16 v16, v0

    .line 450
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/d/d;->x()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    move-object/from16 v17, v0

    .line 451
    invoke-virtual/range {v17 .. v17}, Lcom/bumptech/glide/d/d;->G()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    move-object/from16 v18, v0

    .line 452
    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/d/d;->H()Z

    move-result v18

    move-object/from16 v19, p0

    .line 436
    invoke-virtual/range {v2 .. v19}, Lcom/bumptech/glide/load/b/i;->a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/b/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZLcom/bumptech/glide/d/e;)Lcom/bumptech/glide/load/b/i$d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    .line 454
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/d/f;->r:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/b/o;)V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/o;I)V

    .line 554
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/o;)V

    .line 517
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/s;->c()Ljava/lang/Object;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 498
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/s;)V

    .line 499
    new-instance v2, Lcom/bumptech/glide/load/b/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/o;)V

    goto :goto_0

    .line 501
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 509
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 510
    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/s;)V

    .line 512
    sget-object v0, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    goto :goto_0

    .line 516
    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/s;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/d/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 577
    instance-of v1, p1, Lcom/bumptech/glide/d/f;

    if-eqz v1, :cond_0

    .line 578
    check-cast p1, Lcom/bumptech/glide/d/f;

    .line 579
    iget v1, p0, Lcom/bumptech/glide/d/f;->i:I

    iget v2, p1, Lcom/bumptech/glide/d/f;->i:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/d/f;->j:I

    iget v2, p1, Lcom/bumptech/glide/d/f;->j:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    .line 581
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    iget-object v2, p1, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 583
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/d/f;->k:Lcom/bumptech/glide/f;

    iget-object v2, p1, Lcom/bumptech/glide/d/f;->k:Lcom/bumptech/glide/f;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 586
    :cond_0
    return v0
.end method

.method public a_()Lcom/bumptech/glide/util/a/b;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/bumptech/glide/d/f;->c()V

    .line 306
    sget-object v0, Lcom/bumptech/glide/d/f$a;->PAUSED:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 307
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->CLEARED:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/d/f;->j()V

    .line 288
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->p:Lcom/bumptech/glide/load/b/s;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->p:Lcom/bumptech/glide/load/b/s;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/load/b/s;)V

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/d/f;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_2
    sget-object v0, Lcom/bumptech/glide/d/f$a;->CLEARED:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/bumptech/glide/d/f;->f()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->CANCELLED:Lcom/bumptech/glide/d/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->CLEARED:Lcom/bumptech/glide/d/f$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->e:Lcom/bumptech/glide/GlideContext;

    .line 186
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->f:Ljava/lang/Object;

    .line 187
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->g:Ljava/lang/Class;

    .line 188
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->h:Lcom/bumptech/glide/d/d;

    .line 189
    iput v1, p0, Lcom/bumptech/glide/d/f;->i:I

    .line 190
    iput v1, p0, Lcom/bumptech/glide/d/f;->j:I

    .line 191
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    .line 192
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->m:Lcom/bumptech/glide/d/c;

    .line 193
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->d:Lcom/bumptech/glide/d/b;

    .line 194
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->o:Lcom/bumptech/glide/d/b/c;

    .line 195
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    .line 196
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->t:Landroid/graphics/drawable/Drawable;

    .line 197
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->u:Landroid/graphics/drawable/Drawable;

    .line 198
    iput-object v0, p0, Lcom/bumptech/glide/d/f;->v:Landroid/graphics/drawable/Drawable;

    .line 199
    iput v1, p0, Lcom/bumptech/glide/d/f;->w:I

    .line 200
    iput v1, p0, Lcom/bumptech/glide/d/f;->x:I

    .line 201
    sget-object v0, Lcom/bumptech/glide/d/f;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->c:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->l:Lcom/bumptech/glide/d/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/a/h;->b(Lcom/bumptech/glide/d/a/g;)V

    .line 265
    sget-object v0, Lcom/bumptech/glide/d/f$a;->CANCELLED:Lcom/bumptech/glide/d/f$a;

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->s:Lcom/bumptech/glide/d/f$a;

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/i$d;->a()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/f;->q:Lcom/bumptech/glide/load/b/i$d;

    .line 270
    :cond_0
    return-void
.end method
