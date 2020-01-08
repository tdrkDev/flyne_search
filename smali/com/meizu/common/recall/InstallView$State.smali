.class public final enum Lcom/meizu/common/recall/InstallView$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/recall/InstallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/recall/InstallView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/recall/InstallView$State;

.field public static final enum COMPLETE:Lcom/meizu/common/recall/InstallView$State;

.field public static final enum IDLE:Lcom/meizu/common/recall/InstallView$State;

.field public static final enum INSTALLING:Lcom/meizu/common/recall/InstallView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/meizu/common/recall/InstallView$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/recall/InstallView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    new-instance v0, Lcom/meizu/common/recall/InstallView$State;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/recall/InstallView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/recall/InstallView$State;->INSTALLING:Lcom/meizu/common/recall/InstallView$State;

    new-instance v0, Lcom/meizu/common/recall/InstallView$State;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/common/recall/InstallView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/recall/InstallView$State;->COMPLETE:Lcom/meizu/common/recall/InstallView$State;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/common/recall/InstallView$State;

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->INSTALLING:Lcom/meizu/common/recall/InstallView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->COMPLETE:Lcom/meizu/common/recall/InstallView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/common/recall/InstallView$State;->$VALUES:[Lcom/meizu/common/recall/InstallView$State;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/recall/InstallView$State;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/meizu/common/recall/InstallView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/recall/InstallView$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/recall/InstallView$State;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/meizu/common/recall/InstallView$State;->$VALUES:[Lcom/meizu/common/recall/InstallView$State;

    invoke-virtual {v0}, [Lcom/meizu/common/recall/InstallView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/recall/InstallView$State;

    return-object v0
.end method
