.class public Lcom/meizu/commonwidget/avastar/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/commonwidget/avastar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(DLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    .line 90
    iput-object p3, p0, Lcom/meizu/commonwidget/avastar/b$a;->b:Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 95
    iget-wide v0, p0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/meizu/commonwidget/avastar/b$a;

    iget-wide v0, v0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-wide v0, p0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/meizu/commonwidget/avastar/b$a;

    iget-wide v0, v0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 98
    const/4 v0, -0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-wide v0, p0, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast p1, Lcom/meizu/commonwidget/avastar/b$a;

    iget-wide v2, p1, Lcom/meizu/commonwidget/avastar/b$a;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    goto :goto_0
.end method
