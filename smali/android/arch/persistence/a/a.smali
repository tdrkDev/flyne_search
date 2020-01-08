.class public final Landroid/arch/persistence/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/a/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/arch/persistence/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/arch/persistence/a/a;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/arch/persistence/a/a;->b:[Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private static a(Landroid/arch/persistence/a/d;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    invoke-interface {p0, p1}, Landroid/arch/persistence/a/d;->a(I)V

    .line 109
    :goto_0
    return-void

    .line 86
    :cond_0
    instance-of v0, p2, [B

    if-eqz v0, :cond_1

    .line 87
    check-cast p2, [B

    check-cast p2, [B

    invoke-interface {p0, p1, p2}, Landroid/arch/persistence/a/d;->a(I[B)V

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 89
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(ID)V

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 91
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(ID)V

    goto :goto_0

    .line 92
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 93
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(IJ)V

    goto :goto_0

    .line 94
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 95
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(IJ)V

    goto :goto_0

    .line 96
    :cond_5
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 97
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(IJ)V

    goto :goto_0

    .line 98
    :cond_6
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    .line 99
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(IJ)V

    goto :goto_0

    .line 100
    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 101
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/arch/persistence/a/d;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x1

    :goto_1
    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/a/d;->a(IJ)V

    goto :goto_0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 105
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Supported types: null, byte[], float, double, long, int, short, byte,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/arch/persistence/a/d;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 80
    :cond_0
    return-void

    .line 75
    :cond_1
    array-length v1, p1

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    aget-object v2, p1, v0

    .line 78
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, v2}, Landroid/arch/persistence/a/a;->a(Landroid/arch/persistence/a/d;ILjava/lang/Object;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/arch/persistence/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/arch/persistence/a/d;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/arch/persistence/a/a;->b:[Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/arch/persistence/a/a;->a(Landroid/arch/persistence/a/d;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method
