.class public final enum Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FastScrollLetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CircleColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

.field public static final enum COLORFUL:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

.field public static final enum CUSTOM:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

.field public static final enum GRAY_SINGLE:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    new-instance v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    const-string v1, "GRAY_SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->GRAY_SINGLE:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    .line 305
    new-instance v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    const-string v1, "COLORFUL"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->COLORFUL:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    .line 306
    new-instance v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->CUSTOM:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    .line 303
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->GRAY_SINGLE:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->COLORFUL:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->CUSTOM:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->$VALUES:[Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->$VALUES:[Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    invoke-virtual {v0}, [Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    return-object v0
.end method
