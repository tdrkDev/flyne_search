.class public Lcom/meizu/common/fastscrollletter/NavigationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;
    }
.end annotation


# static fields
.field public static DEFAULT_LETTERS:[Ljava/lang/String;


# instance fields
.field final ENTRY_HIGHLIGHT_DURATION:I

.field final EXIT_HIGHLIGHT_DURATION:I

.field private activeHideNavigationLetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bottomPassHide:I

.field private callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

.field private context:Landroid/content/Context;

.field private customActiveHideNavigationLetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private customNormalHideNavigationLetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private intervalHide:I

.field private isActive:Z

.field private isAuto:Z

.field private letterRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentColor:I

.field final mInterpolator:Landroid/view/animation/Interpolator;

.field private navigationLetterActiveBackgroundColor:I

.field private navigationLetterActiveTextColor:I

.field private navigationLetterLeftPadding:I

.field private navigationLetterNormalBackgroundColor:I

.field private navigationLetterNormalTextColor:I

.field private navigationLetterRightMargin:I

.field private navigationLetterTextPaint:Landroid/graphics/Paint;

.field private navigationLetterTextSize:I

.field private navigationLetterVerticalSpace:I

.field private navigationLetterWidth:I

.field private navigationLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needDisposeData:Z

.field private normalHideNavigationLetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private originalNavigationLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private topPassHide:I

.field private virtualFocusLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/fastscrollletter/NavigationView;->DEFAULT_LETTERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 612
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 613
    const/16 v0, 0x96

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->ENTRY_HIGHLIGHT_DURATION:I

    .line 614
    const/16 v0, 0xfa

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->EXIT_HIGHLIGHT_DURATION:I

    .line 84
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->initializeDefault()V

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/fastscrollletter/NavigationView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mCurrentColor:I

    return p1
.end method

.method private analyLocationIndex(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_1
    return v1

    .line 459
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 465
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private analyseLocationLetter(F)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 429
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 431
    if-gez v0, :cond_0

    move v0, v1

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 435
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 437
    :goto_0
    if-gez v2, :cond_1

    .line 438
    const/4 v0, 0x0

    .line 455
    :goto_1
    return-object v0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ">>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v0, v3

    mul-int v3, v0, v2

    .line 443
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v0, v4

    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v4, v0

    .line 444
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 445
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 446
    sub-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v6, v5

    div-float/2addr v4, v6

    .line 448
    :goto_2
    if-ge v1, v5, :cond_3

    .line 449
    int-to-float v6, v3

    int-to-float v7, v1

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_2

    int-to-float v6, v3

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    cmpl-float v6, v6, p1

    if-ltz v6, :cond_2

    .line 450
    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1

    .line 448
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method private disposeLayoutParams()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 351
    move v1, v0

    move v2, v0

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->needHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    add-int/lit8 v0, v1, 0x1

    move v3, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->needHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 354
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v3, v1

    .line 362
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 352
    add-int/lit8 v0, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 366
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 367
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 368
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterRightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 369
    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 560
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    invoke-direct {p0, p3}, Lcom/meizu/common/fastscrollletter/NavigationView;->needHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 563
    :goto_0
    if-nez v0, :cond_1

    .line 564
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 573
    :goto_1
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 566
    :cond_1
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 570
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 571
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getColor(I)I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getPxSize(I)I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initializeDefault()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->originalNavigationLetters:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customActiveHideNavigationLetters:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customNormalHideNavigationLetters:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->letterRect:Ljava/util/ArrayList;

    .line 99
    sget-object v2, Lcom/meizu/common/fastscrollletter/NavigationView;->DEFAULT_LETTERS:[Ljava/lang/String;

    move v0, v1

    .line 100
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->originalNavigationLetters:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iput v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->bottomPassHide:I

    iput v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->topPassHide:I

    .line 105
    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    .line 106
    iput-boolean v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isAuto:Z

    .line 107
    iput-boolean v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 109
    sget v0, Lcom/meizu/common/R$color;->mc_fastscroll_navigation_letter_normal_background_color:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    .line 110
    sget v0, Lcom/meizu/common/R$color;->mc_fastscroll_navigation_letter_active_background_color:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    .line 111
    sget v0, Lcom/meizu/common/R$color;->mc_fastscroll_letter_text_color:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    .line 112
    sget v0, Lcom/meizu/common/R$color;->mc_fastscroll_letter_active_text_color:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    .line 114
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    sget v1, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_text_size:I

    invoke-direct {p0, v1}, Lcom/meizu/common/fastscrollletter/NavigationView;->getPxSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/util/ScreenUtil;->sp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    .line 116
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_navigation_letter_vertical_space:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getPxSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    .line 117
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_padding_left:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getPxSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    .line 118
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_right:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getPxSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterRightMargin:I

    .line 119
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_wdith:I

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getPxSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mCurrentColor:I

    .line 125
    return-void
.end method

.method private needHide(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 582
    goto :goto_0

    :cond_2
    move v0, v1

    .line 584
    goto :goto_0
.end method


# virtual methods
.method public disposeIntervalHide()V
    .locals 14

    .prologue
    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3fd999999999999aL    # 0.4

    .line 311
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isAuto:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->getListViewHeightNow()I

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    const-wide/high16 v4, 0x4046000000000000L    # 44.0

    invoke-static {v2, v4, v5}, Lcom/meizu/common/util/ScreenUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    sub-int v2, v0, v2

    .line 316
    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    move v0, v1

    .line 317
    :goto_0
    const/16 v3, 0x32

    if-ge v0, v3, :cond_0

    .line 318
    iget v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    if-gt v3, v2, :cond_c

    .line 319
    if-nez v0, :cond_1

    .line 320
    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    .line 348
    :cond_0
    :goto_1
    return-void

    .line 321
    :cond_1
    if-lez v0, :cond_2

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto :goto_1

    .line 323
    :cond_2
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v12

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 324
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto :goto_1

    .line 325
    :cond_3
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v12

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 326
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto :goto_1

    .line 327
    :cond_4
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_5

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    .line 328
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto :goto_1

    .line 329
    :cond_5
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_6

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    .line 330
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 331
    :cond_6
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_7

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 332
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 333
    :cond_7
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_8

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_8

    .line 334
    const/4 v0, 0x7

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 335
    :cond_8
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_9

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_9

    .line 336
    const/16 v0, 0x8

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 337
    :cond_9
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a

    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_a

    .line 338
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 339
    :cond_a
    int-to-double v2, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_b

    int-to-double v0, v0

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 340
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 342
    :cond_b
    const/16 v0, 0xb

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    goto/16 :goto_1

    .line 317
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public initializeFromAttrs(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->context:Landroid/content/Context;

    sget-object v1, Lcom/meizu/common/R$styleable;->FastScrollLetter:[I

    sget v2, Lcom/meizu/common/R$attr;->MeizuCommon_FastScrollLetter:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterNormalBackgroundColor:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    .line 131
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterActiveBackgroundColor:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    .line 132
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterNormalTextColor:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    .line 133
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterActiveTextColor:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    .line 135
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterTextSize:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    .line 137
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterVerticalSpace:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    .line 138
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterLeftPadding:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterLeftPadding:I

    .line 139
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterRightMargin:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterRightMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterRightMargin:I

    .line 140
    sget v1, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcNavigationLetterWidth:I

    iget v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    .line 142
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mCurrentColor:I

    .line 143
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    .line 144
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 146
    return-void
.end method

.method public initialized()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->initialized:Z

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setVisibility(I)V

    .line 151
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->requestLayout()V

    .line 152
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 470
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 471
    iget-boolean v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->initialized:Z

    if-nez v1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-boolean v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    if-eqz v1, :cond_8

    .line 477
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v1}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->getListViewLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 478
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v3}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->getListViewItemCount()I

    move-result v3

    .line 479
    iget-object v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v4}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->getListViewFirstVisiblePosition()I

    move-result v4

    .line 480
    if-eqz v1, :cond_2

    if-lt v1, v3, :cond_2

    if-gtz v4, :cond_2

    .line 481
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setVisibility(I)V

    .line 487
    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 488
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeIntervalHide()V

    .line 489
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->topPassHide:I

    :goto_1
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    move v1, v2

    .line 490
    :goto_2
    iget v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_4

    .line 491
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->bottomPassHide:I

    if-le v3, v4, :cond_3

    .line 492
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    iget-object v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    iget-object v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 489
    :cond_4
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    .line 499
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->bottomPassHide:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 500
    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    if-lez v1, :cond_6

    if-ltz v0, :cond_6

    .line 501
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customActiveHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customActiveHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customNormalHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 514
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    goto/16 :goto_0

    .line 516
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 519
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    move v3, v0

    .line 521
    :goto_4
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->needHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    add-int/lit8 v0, v1, 0x1

    move v5, v2

    move v6, v1

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 526
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->needHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 527
    add-int/lit8 v5, v5, 0x1

    .line 528
    add-int/lit8 v6, v6, 0x1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 534
    :cond_9
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>,"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :goto_6
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->letterRect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_a

    .line 540
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->letterRect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->letterRect:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    int-to-float v5, v5

    add-int/lit8 v7, v3, 0x1

    iget v8, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    iget v9, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->letterRect:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationView;->drawText(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 550
    add-int/lit8 v1, v3, 0x1

    .line 521
    add-int/lit8 v0, v6, 0x1

    move v3, v1

    move v1, v0

    goto/16 :goto_4

    .line 536
    :cond_b
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->virtualFocusLetters:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v1

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x96

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 425
    :goto_0
    return v4

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->showOverlay()V

    .line 377
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->stopListViewScroll()V

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->analyseLocationLetter(F)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->analyLocationIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->location(Ljava/lang/String;I)V

    .line 380
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->touchY(F)V

    .line 382
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    if-nez v0, :cond_0

    .line 383
    iput-boolean v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    .line 384
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    invoke-virtual {p0, v0, v1, v5}, Lcom/meizu/common/fastscrollletter/NavigationView;->startAnimation(III)V

    .line 385
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 388
    :cond_0
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setBackgroundColor(I)V

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 392
    cmpg-float v2, v1, v0

    if-gez v2, :cond_4

    .line 395
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 398
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->analyseLocationLetter(F)Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-direct {p0, v1}, Lcom/meizu/common/fastscrollletter/NavigationView;->analyLocationIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->location(Ljava/lang/String;I)V

    .line 400
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v1, v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->touchY(F)V

    .line 402
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    if-nez v0, :cond_2

    .line 403
    iput-boolean v4, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    .line 404
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    invoke-virtual {p0, v0, v1, v5}, Lcom/meizu/common/fastscrollletter/NavigationView;->startAnimation(III)V

    .line 405
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 408
    :cond_2
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setBackgroundColor(I)V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->hideOverlay()V

    .line 413
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    if-eqz v0, :cond_3

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isActive:Z

    .line 415
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    iget v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    const/16 v2, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/fastscrollletter/NavigationView;->startAnimation(III)V

    .line 416
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 419
    :cond_3
    iget v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 422
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;->hideOverlay()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAutoHideLetter(Z)V
    .locals 1

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isAuto:Z

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    .line 307
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->originalNavigationLetters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/NavigationView;->setNavigationLetters(Ljava/util/ArrayList;)V

    .line 308
    return-void
.end method

.method public setCallBack(Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->callBack:Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;

    .line 590
    return-void
.end method

.method public setHideBottomPassCount(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->bottomPassHide:I

    .line 287
    return-void
.end method

.method public setHideNavigationLetter(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customActiveHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->customNormalHideNavigationLetters:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public varargs setHideNavigationLetter([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->activeHideNavigationLetters:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->normalHideNavigationLetters:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public setHideTopPassCount(I)V
    .locals 0

    .prologue
    .line 277
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->topPassHide:I

    .line 278
    return-void
.end method

.method public setIntervalHide(I)V
    .locals 1

    .prologue
    .line 295
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->intervalHide:I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->isAuto:Z

    .line 297
    return-void
.end method

.method public setNavigationLetterActiveBackgroundColor(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveBackgroundColor:I

    .line 200
    return-void
.end method

.method public setNavigationLetterActiveTextColor(I)V
    .locals 1

    .prologue
    .line 220
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterActiveTextColor:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 222
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 223
    return-void
.end method

.method public setNavigationLetterNormalBackgroundColor(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalBackgroundColor:I

    .line 190
    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationView;->setBackgroundColor(I)V

    .line 191
    return-void
.end method

.method public setNavigationLetterNormalTextColor(I)V
    .locals 1

    .prologue
    .line 208
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterNormalTextColor:I

    .line 209
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mCurrentColor:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 211
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 212
    return-void
.end method

.method public setNavigationLetterRightMargin(I)V
    .locals 1

    .prologue
    .line 255
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterRightMargin:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 257
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    .line 258
    return-void
.end method

.method public setNavigationLetterTextSize(I)V
    .locals 1

    .prologue
    .line 231
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterTextSize:I

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 233
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 235
    return-void
.end method

.method public setNavigationLetterVerticalSpace(I)V
    .locals 1

    .prologue
    .line 243
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterVerticalSpace:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 245
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 247
    return-void
.end method

.method public setNavigationLetterWidth(I)V
    .locals 1

    .prologue
    .line 266
    iput p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetterWidth:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 268
    invoke-direct {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->disposeLayoutParams()V

    .line 269
    return-void
.end method

.method public setNavigationLetters(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->originalNavigationLetters:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->navigationLetters:Ljava/util/ArrayList;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->needDisposeData:Z

    .line 179
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/NavigationView;->invalidate()V

    .line 181
    :cond_0
    return-void
.end method

.method public startAnimation(III)V
    .locals 4

    .prologue
    .line 620
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 621
    new-instance v1, Lcom/meizu/common/fastscrollletter/NavigationView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/fastscrollletter/NavigationView$1;-><init>(Lcom/meizu/common/fastscrollletter/NavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 628
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 630
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    return-void
.end method
