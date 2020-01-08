.class final enum Lcom/bumptech/glide/load/b/f$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/b/f$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/b/f$f;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/b/f$f;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/f$f;

.field private static final synthetic a:[Lcom/bumptech/glide/load/b/f$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    new-instance v0, Lcom/bumptech/glide/load/b/f$f;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/f$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/f$f;->INITIALIZE:Lcom/bumptech/glide/load/b/f$f;

    .line 668
    new-instance v0, Lcom/bumptech/glide/load/b/f$f;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/b/f$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/f$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/f$f;

    .line 673
    new-instance v0, Lcom/bumptech/glide/load/b/f$f;

    const-string v1, "DECODE_DATA"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/b/f$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/f$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/f$f;

    .line 662
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/b/f$f;

    sget-object v1, Lcom/bumptech/glide/load/b/f$f;->INITIALIZE:Lcom/bumptech/glide/load/b/f$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/b/f$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/f$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/b/f$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/f$f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/b/f$f;->a:[Lcom/bumptech/glide/load/b/f$f;

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
    .line 662
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/b/f$f;
    .locals 1

    .prologue
    .line 662
    const-class v0, Lcom/bumptech/glide/load/b/f$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/f$f;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/b/f$f;
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/bumptech/glide/load/b/f$f;->a:[Lcom/bumptech/glide/load/b/f$f;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/b/f$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/b/f$f;

    return-object v0
.end method
