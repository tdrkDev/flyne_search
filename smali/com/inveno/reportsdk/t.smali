.class abstract Lcom/inveno/reportsdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/inveno/reportsdk/t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inveno/reportsdk/t;)I
    .locals 2
    .param p1    # Lcom/inveno/reportsdk/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/inveno/reportsdk/t;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/inveno/reportsdk/t;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/t;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/inveno/reportsdk/t;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/inveno/reportsdk/t;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/inveno/reportsdk/t;->b()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method abstract a()V
.end method

.method public final a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/t;->a:Ljava/lang/Integer;

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/inveno/reportsdk/t;

    invoke-virtual {p0, p1}, Lcom/inveno/reportsdk/t;->a(Lcom/inveno/reportsdk/t;)I

    move-result v0

    return v0
.end method
