.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/d/d;


# instance fields
.field protected b:Lcom/bumptech/glide/d/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/GlideContext;

.field private final d:Lcom/bumptech/glide/i;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/d/d;

.field private final g:Lcom/bumptech/glide/c;

.field private h:Lcom/bumptech/glide/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/d/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/d/c",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h;

    .line 37
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->b(Lcom/bumptech/glide/load/b/h;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/f;->LOW:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/d;->a(Z)Lcom/bumptech/glide/d/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/d/d;

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/i;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->m:Z

    .line 64
    iput-object p1, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/c;

    .line 65
    iput-object p2, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/GlideContext;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/GlideContext;

    .line 67
    iput-object p3, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    .line 68
    invoke-virtual {p2}, Lcom/bumptech/glide/i;->h()Lcom/bumptech/glide/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/d;

    .line 69
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/j;

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/d;

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 71
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/d;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/d/d;",
            "Lcom/bumptech/glide/d/b;",
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II)",
            "Lcom/bumptech/glide/d/a;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p2}, Lcom/bumptech/glide/d/d;->j()Lcom/bumptech/glide/d/d;

    .line 657
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/GlideContext;

    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    iget-object v8, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/d/c;

    iget-object v3, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/GlideContext;

    .line 668
    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/load/b/i;

    move-result-object v10

    .line 669
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/j;->b()Lcom/bumptech/glide/d/b/c;

    move-result-object v11

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p1

    move-object v9, p3

    .line 657
    invoke-static/range {v0 .. v11}, Lcom/bumptech/glide/d/f;->a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/d/d;IILcom/bumptech/glide/f;Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/c;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/d/b/c;)Lcom/bumptech/glide/d/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;
    .locals 13
    .param p2    # Lcom/bumptech/glide/d/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/d/g;",
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II)",
            "Lcom/bumptech/glide/d/a;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    if-eqz v1, :cond_2

    .line 596
    iget-boolean v1, p0, Lcom/bumptech/glide/h;->o:Z

    if-eqz v1, :cond_0

    .line 597
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/j;

    .line 606
    iget-object v2, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-boolean v2, v2, Lcom/bumptech/glide/h;->m:Z

    if-eqz v2, :cond_5

    move-object/from16 v9, p3

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 611
    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->A()Lcom/bumptech/glide/f;

    move-result-object v1

    move-object v10, v1

    .line 613
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->B()I

    move-result v2

    .line 614
    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->D()I

    move-result v1

    .line 615
    invoke-static/range {p5 .. p6}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    iget-object v3, v3, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 616
    invoke-virtual {v3}, Lcom/bumptech/glide/d/d;->C()Z

    move-result v3

    if-nez v3, :cond_4

    .line 617
    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->B()I

    move-result v2

    .line 618
    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->D()I

    move-result v1

    move v11, v1

    move v12, v2

    .line 621
    :goto_2
    new-instance v4, Lcom/bumptech/glide/d/g;

    invoke-direct {v4, p2}, Lcom/bumptech/glide/d/g;-><init>(Lcom/bumptech/glide/d/b;)V

    .line 622
    iget-object v3, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/d;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v1

    .line 624
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/h;->o:Z

    .line 626
    iget-object v2, p0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/h;

    move-object v3, p1

    move-object v5, v9

    move-object v6, v10

    move v7, v12

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v2

    .line 628
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/h;->o:Z

    .line 629
    invoke-virtual {v4, v1, v2}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/a;Lcom/bumptech/glide/d/a;)V

    .line 646
    :goto_3
    return-object v4

    .line 611
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 633
    new-instance v4, Lcom/bumptech/glide/d/g;

    invoke-direct {v4, p2}, Lcom/bumptech/glide/d/g;-><init>(Lcom/bumptech/glide/d/b;)V

    .line 634
    iget-object v3, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/d;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v9

    .line 636
    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/h;->l:Ljava/lang/Float;

    .line 637
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d/d;->a(F)Lcom/bumptech/glide/d/d;

    move-result-object v3

    .line 640
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 639
    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/d;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v1

    .line 642
    invoke-virtual {v4, v9, v1}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/a;Lcom/bumptech/glide/d/a;)V

    goto :goto_3

    .line 646
    :cond_3
    iget-object v3, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/d;Lcom/bumptech/glide/d/b;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v4

    goto :goto_3

    :cond_4
    move v11, v1

    move v12, v2

    goto/16 :goto_2

    :cond_5
    move-object v9, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;
    .locals 3

    .prologue
    .line 572
    sget-object v0, Lcom/bumptech/glide/h$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v2}, Lcom/bumptech/glide/d/d;->A()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    .line 579
    :goto_0
    return-object v0

    .line 576
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    goto :goto_0

    .line 579
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/f;->IMMEDIATE:Lcom/bumptech/glide/f;

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/bumptech/glide/d/a/h;)Lcom/bumptech/glide/d/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/a/h",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/d/a;"
        }
    .end annotation

    .prologue
    .line 586
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/j;

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->A()Lcom/bumptech/glide/f;

    move-result-object v4

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 587
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->B()I

    move-result v5

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->D()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 586
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;II)Lcom/bumptech/glide/d/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lcom/bumptech/glide/h;->i:Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->n:Z

    .line 202
    return-object p0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/d/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/d/a/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    .line 398
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 401
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 406
    :cond_0
    sget-object v0, Lcom/bumptech/glide/h$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/GlideContext;

    iget-object v1, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/GlideContext;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/d/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/d/a/h;)Lcom/bumptech/glide/d/a/h;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->e()Lcom/bumptech/glide/d/d;

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->i()Lcom/bumptech/glide/d/d;

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->g()Lcom/bumptech/glide/d/d;

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->i()Lcom/bumptech/glide/d/d;

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/bumptech/glide/d/a/h;)Lcom/bumptech/glide/d/a/h;
    .locals 3
    .param p1    # Lcom/bumptech/glide/d/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/d/a/h",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    .line 353
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-boolean v0, p0, Lcom/bumptech/glide/h;->n:Z

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->j()Lcom/bumptech/glide/d/d;

    .line 359
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/d/a/h;)Lcom/bumptech/glide/d/a;

    move-result-object v1

    .line 361
    invoke-interface {p1}, Lcom/bumptech/glide/d/a/h;->b()Lcom/bumptech/glide/d/a;

    move-result-object v2

    .line 365
    invoke-interface {v1, v2}, Lcom/bumptech/glide/d/a;->a(Lcom/bumptech/glide/d/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-static {v2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/a;

    invoke-interface {v0}, Lcom/bumptech/glide/d/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-static {v2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/a;

    invoke-interface {v0}, Lcom/bumptech/glide/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    :cond_1
    invoke-interface {v1}, Lcom/bumptech/glide/d/a;->i()V

    .line 372
    invoke-static {v2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/a;

    invoke-interface {v0}, Lcom/bumptech/glide/d/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    invoke-interface {v2}, Lcom/bumptech/glide/d/a;->a()V

    .line 382
    :cond_2
    :goto_0
    return-object p1

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/d/a/h;)V

    .line 379
    invoke-interface {p1, v1}, Lcom/bumptech/glide/d/a/h;->a(Lcom/bumptech/glide/d/a;)V

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/d/a/h;Lcom/bumptech/glide/d/a;)V

    goto :goto_0
.end method

.method protected a()Lcom/bumptech/glide/d/d;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/d;

    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 95
    invoke-virtual {v0}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/d/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d/d;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/d;->a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 90
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    .line 336
    iget-object v1, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->a()Lcom/bumptech/glide/d/d;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/d/d;

    .line 337
    iget-object v1, v0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method
