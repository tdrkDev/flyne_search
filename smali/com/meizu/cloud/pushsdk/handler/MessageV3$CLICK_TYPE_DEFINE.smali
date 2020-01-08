.class public final enum Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/handler/MessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CLICK_TYPE_DEFINE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const-string v1, "CLICK_TYPE_LAUNCHER_ACTIVITY"

    invoke-direct {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 144
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const-string v1, "CLICK_TYPE_ACTIVITY"

    invoke-direct {v0, v1, v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 145
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const-string v1, "CLICK_TYPE_WEB"

    invoke-direct {v0, v1, v4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    sget-object v1, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->$VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    return-object v0
.end method

.method public static values()[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->$VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    invoke-virtual {v0}, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    return-object v0
.end method
