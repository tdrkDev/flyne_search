.class abstract Lcom/inveno/reportsdk/l$b;
.super Lcom/inveno/reportsdk/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/reportsdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/reportsdk/l;-><init>(IJ)V

    iput-object p4, p0, Lcom/inveno/reportsdk/l$b;->c:Ljava/lang/String;

    return-void
.end method
