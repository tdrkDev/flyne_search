.class public final Lcom/google/gson/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/gson/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b/a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Lcom/google/gson/e$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/b/a",
            "<*>;",
            "Lcom/google/gson/t",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/a/c;

.field private final f:Lcom/google/gson/a/d;

.field private final g:Lcom/google/gson/d;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/google/gson/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/gson/e$1;

    invoke-direct {v0}, Lcom/google/gson/e$1;-><init>()V

    sput-object v0, Lcom/google/gson/e;->a:Lcom/google/gson/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/google/gson/a/d;->a:Lcom/google/gson/a/d;

    sget-object v2, Lcom/google/gson/c;->IDENTITY:Lcom/google/gson/c;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/google/gson/s;->DEFAULT:Lcom/google/gson/s;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    .line 174
    invoke-direct/range {v0 .. v12}, Lcom/google/gson/e;-><init>(Lcom/google/gson/a/d;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/s;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/google/gson/a/d;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/s;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/a/d;",
            "Lcom/google/gson/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/f",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/gson/s;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/gson/e;->b:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/gson/e;->c:Ljava/util/Map;

    .line 187
    new-instance v1, Lcom/google/gson/a/c;

    invoke-direct {v1, p3}, Lcom/google/gson/a/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    .line 188
    iput-object p1, p0, Lcom/google/gson/e;->f:Lcom/google/gson/a/d;

    .line 189
    iput-object p2, p0, Lcom/google/gson/e;->g:Lcom/google/gson/d;

    .line 190
    iput-boolean p4, p0, Lcom/google/gson/e;->h:Z

    .line 191
    iput-boolean p6, p0, Lcom/google/gson/e;->j:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/gson/e;->i:Z

    .line 193
    iput-boolean p8, p0, Lcom/google/gson/e;->k:Z

    .line 194
    iput-boolean p9, p0, Lcom/google/gson/e;->l:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    sget-object v2, Lcom/google/gson/a/a/n;->Y:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v2, Lcom/google/gson/a/a/h;->a:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v2, Lcom/google/gson/a/a/n;->D:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/google/gson/a/a/n;->m:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v2, Lcom/google/gson/a/a/n;->g:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Lcom/google/gson/a/a/n;->i:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Lcom/google/gson/a/a/n;->k:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Lcom/google/gson/e;->a(Lcom/google/gson/s;)Lcom/google/gson/t;

    move-result-object v2

    .line 215
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    .line 217
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/e;->a(Z)Lcom/google/gson/t;

    move-result-object v5

    .line 216
    invoke-static {v3, v4, v5}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    .line 219
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/e;->b(Z)Lcom/google/gson/t;

    move-result-object v5

    .line 218
    invoke-static {v3, v4, v5}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lcom/google/gson/a/a/n;->x:Lcom/google/gson/u;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/google/gson/a/a/n;->o:Lcom/google/gson/u;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/google/gson/a/a/n;->q:Lcom/google/gson/u;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/google/gson/e;->a(Lcom/google/gson/t;)Lcom/google/gson/t;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/gson/e;->b(Lcom/google/gson/t;)Lcom/google/gson/t;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Lcom/google/gson/a/a/n;->s:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v2, Lcom/google/gson/a/a/n;->z:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v2, Lcom/google/gson/a/a/n;->F:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v2, Lcom/google/gson/a/a/n;->H:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/google/gson/a/a/n;->B:Lcom/google/gson/t;

    invoke-static {v2, v3}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lcom/google/gson/a/a/n;->C:Lcom/google/gson/t;

    invoke-static {v2, v3}, Lcom/google/gson/a/a/n;->a(Ljava/lang/Class;Lcom/google/gson/t;)Lcom/google/gson/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v2, Lcom/google/gson/a/a/n;->J:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v2, Lcom/google/gson/a/a/n;->L:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lcom/google/gson/a/a/n;->P:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v2, Lcom/google/gson/a/a/n;->R:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v2, Lcom/google/gson/a/a/n;->W:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v2, Lcom/google/gson/a/a/n;->N:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v2, Lcom/google/gson/a/a/n;->d:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v2, Lcom/google/gson/a/a/c;->a:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v2, Lcom/google/gson/a/a/n;->U:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v2, Lcom/google/gson/a/a/k;->a:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v2, Lcom/google/gson/a/a/j;->a:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v2, Lcom/google/gson/a/a/n;->S:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/google/gson/a/a/a;->a:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v2, Lcom/google/gson/a/a/n;->b:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lcom/google/gson/a/a/b;

    iget-object v3, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    invoke-direct {v2, v3}, Lcom/google/gson/a/a/b;-><init>(Lcom/google/gson/a/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lcom/google/gson/a/a/g;

    iget-object v3, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    invoke-direct {v2, v3, p5}, Lcom/google/gson/a/a/g;-><init>(Lcom/google/gson/a/c;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lcom/google/gson/a/a/d;

    iget-object v3, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    invoke-direct {v2, v3}, Lcom/google/gson/a/a/d;-><init>(Lcom/google/gson/a/c;)V

    iput-object v2, p0, Lcom/google/gson/e;->m:Lcom/google/gson/a/a/d;

    .line 250
    iget-object v2, p0, Lcom/google/gson/e;->m:Lcom/google/gson/a/a/d;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v2, Lcom/google/gson/a/a/n;->Z:Lcom/google/gson/u;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lcom/google/gson/a/a/i;

    iget-object v3, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    iget-object v4, p0, Lcom/google/gson/e;->m:Lcom/google/gson/a/a/d;

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/google/gson/a/a/i;-><init>(Lcom/google/gson/a/c;Lcom/google/gson/d;Lcom/google/gson/a/d;Lcom/google/gson/a/a/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/e;->d:Ljava/util/List;

    .line 256
    return-void
.end method

.method private static a(Lcom/google/gson/s;)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/s;",
            ")",
            "Lcom/google/gson/t",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/google/gson/s;->DEFAULT:Lcom/google/gson/s;

    if-ne p0, v0, :cond_0

    .line 332
    sget-object v0, Lcom/google/gson/a/a/n;->t:Lcom/google/gson/t;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$4;

    invoke-direct {v0}, Lcom/google/gson/e$4;-><init>()V

    goto :goto_0
.end method

.method private static a(Lcom/google/gson/t;)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/t",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/t",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/google/gson/e$5;

    invoke-direct {v0, p0}, Lcom/google/gson/e$5;-><init>(Lcom/google/gson/t;)V

    .line 361
    invoke-virtual {v0}, Lcom/google/gson/e$5;->a()Lcom/google/gson/t;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method private a(Z)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/t",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/google/gson/a/a/n;->v:Lcom/google/gson/t;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$2;

    invoke-direct {v0, p0}, Lcom/google/gson/e$2;-><init>(Lcom/google/gson/e;)V

    goto :goto_0
.end method

.method static a(D)V
    .locals 4

    .prologue
    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/gson/c/a;)V
    .locals 2

    .prologue
    .line 859
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/c/b;->END_DOCUMENT:Lcom/google/gson/c/b;

    if-eq v0, v1, :cond_0

    .line 860
    new-instance v0, Lcom/google/gson/k;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/k;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gson/c/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 864
    :catch_1
    move-exception v0

    .line 865
    new-instance v1, Lcom/google/gson/k;

    invoke-direct {v1, v0}, Lcom/google/gson/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    :cond_0
    return-void
.end method

.method private static b(Lcom/google/gson/t;)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/t",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/t",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/google/gson/e$6;

    invoke-direct {v0, p0}, Lcom/google/gson/e$6;-><init>(Lcom/google/gson/t;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/gson/e$6;->a()Lcom/google/gson/t;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method private b(Z)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/t",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    sget-object v0, Lcom/google/gson/a/a/n;->u:Lcom/google/gson/t;

    .line 302
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/e$3;

    invoke-direct {v0, p0}, Lcom/google/gson/e$3;-><init>(Lcom/google/gson/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/google/gson/c/a;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Lcom/google/gson/c/a;

    invoke-direct {v0, p1}, Lcom/google/gson/c/a;-><init>(Ljava/io/Reader;)V

    .line 729
    iget-boolean v1, p0, Lcom/google/gson/e;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/c/a;->a(Z)V

    .line 730
    return-object v0
.end method

.method public a(Lcom/google/gson/b/a;)Lcom/google/gson/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/google/gson/e;->c:Ljava/util/Map;

    if-nez p1, :cond_1

    sget-object v0, Lcom/google/gson/e;->a:Lcom/google/gson/b/a;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/t;

    .line 400
    if-eqz v0, :cond_2

    .line 427
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    .line 399
    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/google/gson/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 405
    const/4 v1, 0x0

    .line 406
    if-nez v0, :cond_6

    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    iget-object v0, p0, Lcom/google/gson/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 413
    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/e$a;

    .line 414
    if-nez v0, :cond_0

    .line 419
    :try_start_0
    new-instance v3, Lcom/google/gson/e$a;

    invoke-direct {v3}, Lcom/google/gson/e$a;-><init>()V

    .line 420
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/u;

    .line 423
    invoke-interface {v0, p0, p1}, Lcom/google/gson/u;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {v3, v0}, Lcom/google/gson/e$a;->a(Lcom/google/gson/t;)V

    .line 426
    iget-object v3, p0, Lcom/google/gson/e;->c:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/google/gson/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 430
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/google/gson/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    throw v0

    :cond_6
    move-object v2, v0

    goto :goto_2
.end method

.method public a(Lcom/google/gson/u;Lcom/google/gson/b/a;)Lcom/google/gson/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/u;",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/gson/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object p1, p0, Lcom/google/gson/e;->m:Lcom/google/gson/a/a/d;

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 498
    iget-object v1, p0, Lcom/google/gson/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/u;

    .line 499
    if-nez v1, :cond_2

    .line 500
    if-ne v0, p1, :cond_1

    .line 501
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 506
    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/gson/u;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    .line 508
    return-object v0

    .line 511
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {p1}, Lcom/google/gson/b/a;->b(Ljava/lang/Class;)Lcom/google/gson/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/gson/c/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/c/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/k;,
            Lcom/google/gson/r;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 879
    .line 880
    invoke-virtual {p1}, Lcom/google/gson/c/a;->q()Z

    move-result v2

    .line 881
    invoke-virtual {p1, v1}, Lcom/google/gson/c/a;->a(Z)V

    .line 883
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->f()Lcom/google/gson/c/b;

    .line 884
    const/4 v1, 0x0

    .line 885
    invoke-static {p2}, Lcom/google/gson/b/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v0

    .line 886
    invoke-virtual {p0, v0}, Lcom/google/gson/e;->a(Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    .line 887
    invoke-virtual {v0, p1}, Lcom/google/gson/t;->b(Lcom/google/gson/c/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 904
    invoke-virtual {p1, v2}, Lcom/google/gson/c/a;->a(Z)V

    .line 895
    :goto_0
    return-object v0

    .line 889
    :catch_0
    move-exception v0

    .line 894
    if-eqz v1, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p1, v2}, Lcom/google/gson/c/a;->a(Z)V

    goto :goto_0

    .line 897
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/gson/c/a;->a(Z)V

    throw v0

    .line 898
    :catch_1
    move-exception v0

    .line 899
    :try_start_2
    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 900
    :catch_2
    move-exception v0

    .line 902
    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/k;,
            Lcom/google/gson/r;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/google/gson/e;->a(Ljava/io/Reader;)Lcom/google/gson/c/a;

    move-result-object v0

    .line 852
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/e;->a(Lcom/google/gson/c/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 853
    invoke-static {v1, v0}, Lcom/google/gson/e;->a(Ljava/lang/Object;Lcom/google/gson/c/a;)V

    .line 854
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/r;
        }
    .end annotation

    .prologue
    .line 797
    if-nez p1, :cond_0

    .line 798
    const/4 v0, 0x0

    .line 802
    :goto_0
    return-object v0

    .line 800
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/e;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/e;->h:Z

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/e;->e:Lcom/google/gson/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    return-object v0
.end method
