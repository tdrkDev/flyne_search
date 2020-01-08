.class public abstract enum Lcom/google/gson/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/google/gson/s;

.field public static final enum STRING:Lcom/google/gson/s;

.field private static final synthetic a:[Lcom/google/gson/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/gson/s$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/gson/s$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/s;->DEFAULT:Lcom/google/gson/s;

    .line 45
    new-instance v0, Lcom/google/gson/s$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/gson/s$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/s;->STRING:Lcom/google/gson/s;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/s;

    sget-object v1, Lcom/google/gson/s;->DEFAULT:Lcom/google/gson/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gson/s;->STRING:Lcom/google/gson/s;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gson/s;->a:[Lcom/google/gson/s;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/s$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/gson/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/s;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/gson/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/s;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/s;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/gson/s;->a:[Lcom/google/gson/s;

    invoke-virtual {v0}, [Lcom/google/gson/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/s;

    return-object v0
.end method
