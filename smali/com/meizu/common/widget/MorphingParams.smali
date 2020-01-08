.class Lcom/meizu/common/widget/MorphingParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duration:I

.field public fromAlpha:F

.field public fromColor:I

.field public fromCornerRadius:F

.field public fromDarkColor:I

.field public fromHeight:I

.field public fromStrokeColor:I

.field public fromStrokeWidth:I

.field public fromWidth:I

.field public mDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

.field public toAlpha:F

.field public toColor:I

.field public toCornerRadius:F

.field public toDarkColor:I

.field public toHeight:I

.field public toStrokeColor:I

.field public toStrokeWidth:I

.field public toWidth:I


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/StrokeGradientDrawable;)V
    .locals 0
    .param p1    # Lcom/meizu/common/widget/StrokeGradientDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput-object p1, p0, Lcom/meizu/common/widget/MorphingParams;->mDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    .line 1694
    return-void
.end method

.method public static create(Lcom/meizu/common/widget/StrokeGradientDrawable;)Lcom/meizu/common/widget/MorphingParams;
    .locals 1
    .param p0    # Lcom/meizu/common/widget/StrokeGradientDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1697
    new-instance v0, Lcom/meizu/common/widget/MorphingParams;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/MorphingParams;-><init>(Lcom/meizu/common/widget/StrokeGradientDrawable;)V

    return-object v0
.end method


# virtual methods
.method public alpha(FF)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1748
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    .line 1749
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    .line 1750
    return-object p0
.end method

.method public color(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1706
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromColor:I

    .line 1707
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toColor:I

    .line 1708
    return-object p0
.end method

.method public cornerRadius(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 1

    .prologue
    .line 1718
    int-to-float v0, p1

    iput v0, p0, Lcom/meizu/common/widget/MorphingParams;->fromCornerRadius:F

    .line 1719
    int-to-float v0, p2

    iput v0, p0, Lcom/meizu/common/widget/MorphingParams;->toCornerRadius:F

    .line 1720
    return-object p0
.end method

.method public darkColor(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1712
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromDarkColor:I

    .line 1713
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toDarkColor:I

    .line 1714
    return-object p0
.end method

.method public duration(I)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1701
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->duration:I

    .line 1702
    return-object p0
.end method

.method public height(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1724
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromHeight:I

    .line 1725
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toHeight:I

    .line 1726
    return-object p0
.end method

.method public strokeColor(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1742
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromStrokeColor:I

    .line 1743
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toStrokeColor:I

    .line 1744
    return-object p0
.end method

.method public strokeWidth(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1736
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromStrokeWidth:I

    .line 1737
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toStrokeWidth:I

    .line 1738
    return-object p0
.end method

.method public width(II)Lcom/meizu/common/widget/MorphingParams;
    .locals 0

    .prologue
    .line 1730
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    .line 1731
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    .line 1732
    return-object p0
.end method
