.class Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .locals 0

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1340
    check-cast p2, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 1341
    check-cast p3, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 1342
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 1343
    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V

    .line 1342
    return-object v0
.end method
