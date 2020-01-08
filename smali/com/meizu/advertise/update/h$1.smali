.class final Lcom/meizu/advertise/update/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/update/h;->c(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meizu/advertise/update/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/meizu/advertise/update/b;Lcom/meizu/advertise/update/b;)I
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/meizu/advertise/update/b;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/meizu/advertise/update/b;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    check-cast p1, Lcom/meizu/advertise/update/b;

    check-cast p2, Lcom/meizu/advertise/update/b;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/advertise/update/h$1;->a(Lcom/meizu/advertise/update/b;Lcom/meizu/advertise/update/b;)I

    move-result v0

    return v0
.end method
