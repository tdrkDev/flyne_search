.class public Lcom/inveno/se/adapi/config/URLS;
.super Ljava/lang/Object;


# static fields
.field public static API_VERSION:Ljava/lang/String;

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2.0"

    sput-object v0, Lcom/inveno/se/adapi/config/URLS;->API_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/se/adapi/config/URLS;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPI_VERSION()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/adapi/config/URLS;->API_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/inveno/se/adapi/config/URLS;->debug:Z

    return v0
.end method

.method public static setAPI_VERSION(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/adapi/config/URLS;->API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/inveno/se/adapi/config/URLS;->debug:Z

    return-void
.end method
