.class public Lcom/inveno/se/config/ZZConfig;
.super Ljava/lang/Object;


# static fields
.field public static APP_KEY:Ljava/lang/String;

.field public static APP_SECRET:Ljava/lang/String;

.field public static PIKEY:Ljava/lang/String;

.field public static PRODUCT_ID:Ljava/lang/String;

.field public static PROMOTION:Ljava/lang/String;

.field public static ZZ_HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "meizusearch"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->PRODUCT_ID:Ljava/lang/String;

    const-string v0, "meizu"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->PROMOTION:Ljava/lang/String;

    const-string v0, "2864f44b6b67be71aa87451a318c3c0a"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->APP_KEY:Ljava/lang/String;

    const-string v0, "5a9dc5700977632da4bed56f6cc8a5b805c5d72b"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->APP_SECRET:Ljava/lang/String;

    const-string v0, "https://meizu.inveno.com/"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->ZZ_HOST:Ljava/lang/String;

    const-string v0, "meizusearch"

    sput-object v0, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
