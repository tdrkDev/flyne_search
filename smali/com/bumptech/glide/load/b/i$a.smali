.class Lcom/bumptech/glide/load/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/b/f$d;

.field final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/b/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/f$d;)V
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/load/b/i$a$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/b/i$a$1;-><init>(Lcom/bumptech/glide/load/b/i$a;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/a/a;->a(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    .line 409
    iput-object p1, p0, Lcom/bumptech/glide/load/b/i$a;->a:Lcom/bumptech/glide/load/b/f$d;

    .line 410
    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/b/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/b/f$a;)Lcom/bumptech/glide/load/b/f;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/b/l;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/b/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/b/f$a",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/b/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/b/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/f;

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/load/b/i$a;->c:I

    move/from16 v18, v0

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/load/b/i$a;->c:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/b/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/b/f$a;I)Lcom/bumptech/glide/load/b/f;

    move-result-object v1

    return-object v1
.end method
