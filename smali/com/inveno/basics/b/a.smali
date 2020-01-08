.class public final enum Lcom/inveno/basics/b/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inveno/basics/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAIL_DOWNLOAD:Lcom/inveno/basics/b/a;

.field public static final enum FINISH_DOWNLOAD:Lcom/inveno/basics/b/a;

.field public static final enum HAS_INSTALL:Lcom/inveno/basics/b/a;

.field public static final enum NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

.field public static final enum NOT_NEW_DOWNLOAD:Lcom/inveno/basics/b/a;

.field private static final synthetic a:[Lcom/inveno/basics/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/inveno/basics/b/a;

    const-string v1, "NOT_DOWNLOADED"

    invoke-direct {v0, v1, v2}, Lcom/inveno/basics/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/basics/b/a;->NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

    .line 13
    new-instance v0, Lcom/inveno/basics/b/a;

    const-string v1, "HAS_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/inveno/basics/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/basics/b/a;->HAS_INSTALL:Lcom/inveno/basics/b/a;

    .line 14
    new-instance v0, Lcom/inveno/basics/b/a;

    const-string v1, "FINISH_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/inveno/basics/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/basics/b/a;->FINISH_DOWNLOAD:Lcom/inveno/basics/b/a;

    .line 15
    new-instance v0, Lcom/inveno/basics/b/a;

    const-string v1, "NOT_NEW_DOWNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/inveno/basics/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/basics/b/a;->NOT_NEW_DOWNLOAD:Lcom/inveno/basics/b/a;

    .line 16
    new-instance v0, Lcom/inveno/basics/b/a;

    const-string v1, "FAIL_DOWNLOAD"

    invoke-direct {v0, v1, v6}, Lcom/inveno/basics/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/basics/b/a;->FAIL_DOWNLOAD:Lcom/inveno/basics/b/a;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inveno/basics/b/a;

    sget-object v1, Lcom/inveno/basics/b/a;->NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inveno/basics/b/a;->HAS_INSTALL:Lcom/inveno/basics/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inveno/basics/b/a;->FINISH_DOWNLOAD:Lcom/inveno/basics/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inveno/basics/b/a;->NOT_NEW_DOWNLOAD:Lcom/inveno/basics/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inveno/basics/b/a;->FAIL_DOWNLOAD:Lcom/inveno/basics/b/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inveno/basics/b/a;->a:[Lcom/inveno/basics/b/a;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inveno/basics/b/a;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/inveno/basics/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/b/a;

    return-object v0
.end method

.method public static values()[Lcom/inveno/basics/b/a;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/inveno/basics/b/a;->a:[Lcom/inveno/basics/b/a;

    invoke-virtual {v0}, [Lcom/inveno/basics/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inveno/basics/b/a;

    return-object v0
.end method
