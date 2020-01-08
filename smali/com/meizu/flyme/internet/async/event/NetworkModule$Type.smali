.class public final enum Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/internet/async/event/NetworkModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum BLUETOOTH:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum ETHERNET:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum MOBILE_2G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum MOBILE_3G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum MOBILE_4G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum MOBILE_XG:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum NULL:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum OTHER:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

.field public static final enum WIFI:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "NULL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->NULL:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 54
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v8}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->WIFI:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 55
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "BLUETOOTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->BLUETOOTH:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 56
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v7, v5}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_2G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 57
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "MOBILE_3G"

    invoke-direct {v0, v1, v8, v6}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_3G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 58
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_4G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 59
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "MOBILE_XG"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_XG:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 60
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "ETHERNET"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->ETHERNET:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 61
    new-instance v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->OTHER:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    sget-object v1, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->NULL:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->WIFI:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->BLUETOOTH:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_2G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_3G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_4G:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->MOBILE_XG:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->ETHERNET:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->OTHER:Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->$VALUES:[Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->mValue:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    return-object v0
.end method

.method public static values()[Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->$VALUES:[Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    invoke-virtual {v0}, [Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/meizu/flyme/internet/async/event/NetworkModule$Type;->mValue:I

    return v0
.end method
