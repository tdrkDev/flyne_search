.class public final enum Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/LabelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MiniLabelColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum BLUE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum CORAL:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum NONE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum PURPLE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum RED:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

.field public static final enum TOMATO:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;


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
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 92
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v1, "NONE"

    const/high16 v3, 0x33000000

    const v4, -0xa0a0b

    const v5, -0x1a1a1b

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 93
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "RED"

    const v7, -0x18c5c4

    const v8, -0x28cece

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->RED:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 94
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "TOMATO"

    const v7, -0x282d4

    const v8, -0xa8cde

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->TOMATO:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 95
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "CORAL"

    const v7, -0x43efa

    const v8, -0x649fb

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->CORAL:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 96
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "LIME_GREEN"

    const/4 v5, 0x4

    const v7, -0xd643ae

    const v8, -0xdc4fb6

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 97
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "SEA_GREEN"

    const/4 v5, 0x5

    const v7, -0xff3b3f

    const v8, -0xff464b

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 98
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "BLUE"

    const/4 v5, 0x6

    const v7, -0xe08005

    const v8, -0xe18910

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->BLUE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 99
    new-instance v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    const-string v4, "PURPLE"

    const/4 v5, 0x7

    const v7, -0x8abd12

    const v8, -0x94c11c

    invoke-direct/range {v3 .. v8}, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->PURPLE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->NONE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->RED:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v1, v0, v9

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->TOMATO:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v1, v0, v10

    sget-object v1, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->CORAL:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->LIME_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->SEA_GREEN:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->BLUE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->PURPLE:Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->$VALUES:[Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mTextColor:I

    .line 110
    iput p4, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgNormalColor:I

    .line 111
    iput p5, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgPressColor:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mTextColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgNormalColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgPressColor:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->$VALUES:[Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    invoke-virtual {v0}, [Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;

    return-object v0
.end method


# virtual methods
.method public getBgNormalColor()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgNormalColor:I

    return v0
.end method

.method public getBgPressColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mBgPressColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout$MiniLabelColor;->mTextColor:I

    return v0
.end method
