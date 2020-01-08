.class public final enum Lcom/meizu/common/widget/LabelLayout$LabelColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/LabelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/LabelLayout$LabelColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum BLUE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum CORAL:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum PURPLE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum RED:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

.field public static final enum TOMATO:Lcom/meizu/common/widget/LabelLayout$LabelColor;


# instance fields
.field private mBgNormalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mBgPressColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v1, "NONE"

    const/high16 v3, -0x5a000000

    const v4, -0xa0a0b

    const v5, -0x1a1a1b

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 56
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "RED"

    const v6, -0x18c5c4

    const/16 v7, -0x1511

    const v8, -0x53835

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->RED:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 57
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "TOMATO"

    const v6, -0x282d4

    const/16 v7, -0xc1b

    const/16 v8, -0x2440

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->TOMATO:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 58
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "CORAL"

    const v6, -0x43efa

    const/16 v7, -0x71f

    const v8, -0x1124b

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->CORAL:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 59
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "LIME_GREEN"

    const v6, -0xd643ae

    const v7, -0x190817

    const v8, -0x3f1435

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 60
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "SEA_GREEN"

    const/4 v5, 0x5

    const v6, -0xff3b3f

    const v7, -0x230b0b

    const v8, -0x4f1515

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 61
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "BLUE"

    const/4 v5, 0x6

    const v6, -0xe08005

    const v7, -0x1e0e01

    const v8, -0x442502

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->BLUE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 62
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    const-string v4, "PURPLE"

    const/4 v5, 0x7

    const v6, -0x8abd12

    const v7, -0x101a04

    const v8, -0x283b07

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$LabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$LabelColor;->PURPLE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/meizu/common/widget/LabelLayout$LabelColor;

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->RED:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v1, v0, v9

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->TOMATO:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v1, v0, v10

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->CORAL:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v1, v0, v11

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$LabelColor;->LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$LabelColor;->SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$LabelColor;->BLUE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$LabelColor;->PURPLE:Lcom/meizu/common/widget/LabelLayout$LabelColor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->$VALUES:[Lcom/meizu/common/widget/LabelLayout$LabelColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mTextColor:I

    .line 73
    iput p4, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgNormalColor:I

    .line 74
    iput p5, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgPressColor:I

    .line 75
    return-void
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgNormalColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/LabelLayout$LabelColor;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgPressColor:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/LabelLayout$LabelColor;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/LabelLayout$LabelColor;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->$VALUES:[Lcom/meizu/common/widget/LabelLayout$LabelColor;

    invoke-virtual {v0}, [Lcom/meizu/common/widget/LabelLayout$LabelColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/LabelLayout$LabelColor;

    return-object v0
.end method


# virtual methods
.method public getBgNormalColor()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgNormalColor:I

    return v0
.end method

.method public getBgPressColor()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mBgPressColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$LabelColor;->mTextColor:I

    return v0
.end method
