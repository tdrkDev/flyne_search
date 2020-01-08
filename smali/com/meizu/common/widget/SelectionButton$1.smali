.class Lcom/meizu/common/widget/SelectionButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SelectionButton;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SelectionButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SelectionButton;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 314
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SelectionButton;->access$000(Lcom/meizu/common/widget/SelectionButton;)I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$100()[F

    move-result-object v0

    .line 320
    :goto_0
    aget v0, v0, v1

    return v0

    .line 319
    :cond_0
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$200()[F

    move-result-object v0

    goto :goto_0
.end method
