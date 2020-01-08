.class public Landroid/arch/persistence/room/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I
    .annotation build Landroid/arch/persistence/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation
.end field

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Landroid/arch/persistence/room/b/a$a;->a:Ljava/lang/String;

    .line 348
    iput-object p2, p0, Landroid/arch/persistence/room/b/a$a;->b:Ljava/lang/String;

    .line 349
    iput-boolean p3, p0, Landroid/arch/persistence/room/b/a$a;->d:Z

    .line 350
    iput p4, p0, Landroid/arch/persistence/room/b/a$a;->e:I

    .line 351
    invoke-static {p2}, Landroid/arch/persistence/room/b/a$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/arch/persistence/room/b/a$a;->c:I

    .line 352
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/arch/persistence/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    .prologue
    const/4 v0, 0x5

    .line 362
    if-nez p0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 366
    const-string v2, "INT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const/4 v0, 0x3

    goto :goto_0

    .line 369
    :cond_2
    const-string v2, "CHAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CLOB"

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TEXT"

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 374
    :cond_4
    const-string v2, "BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    const-string v0, "REAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FLOA"

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DOUB"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 384
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/arch/persistence/room/b/a$a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 392
    check-cast p1, Landroid/arch/persistence/room/b/a$a;

    .line 393
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_3

    .line 394
    iget v2, p0, Landroid/arch/persistence/room/b/a$a;->e:I

    iget v3, p1, Landroid/arch/persistence/room/b/a$a;->e:I

    if-ne v2, v3, :cond_0

    .line 399
    :cond_2
    iget-object v2, p0, Landroid/arch/persistence/room/b/a$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroid/arch/persistence/room/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    iget-boolean v2, p0, Landroid/arch/persistence/room/b/a$a;->d:Z

    iget-boolean v3, p1, Landroid/arch/persistence/room/b/a$a;->d:Z

    if-ne v2, v3, :cond_0

    .line 402
    iget v2, p0, Landroid/arch/persistence/room/b/a$a;->c:I

    iget v3, p1, Landroid/arch/persistence/room/b/a$a;->c:I

    if-ne v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0}, Landroid/arch/persistence/room/b/a$a;->a()Z

    move-result v2

    invoke-virtual {p1}, Landroid/arch/persistence/room/b/a$a;->a()Z

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 402
    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/arch/persistence/room/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 417
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/arch/persistence/room/b/a$a;->c:I

    add-int/2addr v0, v1

    .line 418
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Landroid/arch/persistence/room/b/a$a;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 419
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/arch/persistence/room/b/a$a;->e:I

    add-int/2addr v0, v1

    .line 420
    return v0

    .line 418
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/persistence/room/b/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/persistence/room/b/a$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/persistence/room/b/a$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
