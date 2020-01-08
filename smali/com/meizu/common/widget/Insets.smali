.class Lcom/meizu/common/widget/Insets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Lcom/meizu/common/widget/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1423
    new-instance v0, Lcom/meizu/common/widget/Insets;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    sput-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1431
    iput p1, p0, Lcom/meizu/common/widget/Insets;->left:I

    .line 1432
    iput p2, p0, Lcom/meizu/common/widget/Insets;->top:I

    .line 1433
    iput p3, p0, Lcom/meizu/common/widget/Insets;->right:I

    .line 1434
    iput p4, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    .line 1435
    return-void
.end method

.method public static of(IIII)Lcom/meizu/common/widget/Insets;
    .locals 1

    .prologue
    .line 1449
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1450
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1452
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/meizu/common/widget/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    goto :goto_0
.end method

.method public static of(Landroid/graphics/Rect;)Lcom/meizu/common/widget/Insets;
    .locals 4

    .prologue
    .line 1462
    if-nez p0, :cond_0

    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1474
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 1482
    :cond_0
    :goto_0
    return v1

    .line 1475
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1477
    check-cast p1, Lcom/meizu/common/widget/Insets;

    .line 1479
    iget v2, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->bottom:I

    if-ne v2, v3, :cond_0

    .line 1480
    iget v2, p0, Lcom/meizu/common/widget/Insets;->left:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->left:I

    if-ne v2, v3, :cond_0

    .line 1481
    iget v2, p0, Lcom/meizu/common/widget/Insets;->right:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->right:I

    if-ne v2, v3, :cond_0

    .line 1482
    iget v2, p0, Lcom/meizu/common/widget/Insets;->top:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->top:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1487
    iget v0, p0, Lcom/meizu/common/widget/Insets;->left:I

    .line 1488
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    add-int/2addr v0, v1

    .line 1489
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    add-int/2addr v0, v1

    .line 1490
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    add-int/2addr v0, v1

    .line 1491
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
