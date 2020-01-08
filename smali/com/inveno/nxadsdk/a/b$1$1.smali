.class Lcom/inveno/nxadsdk/a/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/b$1;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/nxadsdk/a/b$1;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/b$1$1;->a:Lcom/inveno/nxadsdk/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inveno/nxadsdk/model/NativeRegularAd;Lcom/inveno/nxadsdk/model/NativeRegularAd;)I
    .locals 2

    invoke-virtual {p1}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/inveno/nxadsdk/model/NativeRegularAd;

    check-cast p2, Lcom/inveno/nxadsdk/model/NativeRegularAd;

    invoke-virtual {p0, p1, p2}, Lcom/inveno/nxadsdk/a/b$1$1;->a(Lcom/inveno/nxadsdk/model/NativeRegularAd;Lcom/inveno/nxadsdk/model/NativeRegularAd;)I

    move-result v0

    return v0
.end method
