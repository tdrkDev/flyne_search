.class final enum Lcom/bumptech/glide/d/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/d/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lcom/bumptech/glide/d/f$a;

.field public static final enum CLEARED:Lcom/bumptech/glide/d/f$a;

.field public static final enum COMPLETE:Lcom/bumptech/glide/d/f$a;

.field public static final enum FAILED:Lcom/bumptech/glide/d/f$a;

.field public static final enum PAUSED:Lcom/bumptech/glide/d/f$a;

.field public static final enum PENDING:Lcom/bumptech/glide/d/f$a;

.field public static final enum RUNNING:Lcom/bumptech/glide/d/f$a;

.field public static final enum WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

.field private static final synthetic a:[Lcom/bumptech/glide/d/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->PENDING:Lcom/bumptech/glide/d/f$a;

    .line 57
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    .line 61
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "WAITING_FOR_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    .line 65
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    .line 69
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->FAILED:Lcom/bumptech/glide/d/f$a;

    .line 73
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->CANCELLED:Lcom/bumptech/glide/d/f$a;

    .line 77
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->CLEARED:Lcom/bumptech/glide/d/f$a;

    .line 81
    new-instance v0, Lcom/bumptech/glide/d/f$a;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/d/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/d/f$a;->PAUSED:Lcom/bumptech/glide/d/f$a;

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bumptech/glide/d/f$a;

    sget-object v1, Lcom/bumptech/glide/d/f$a;->PENDING:Lcom/bumptech/glide/d/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/d/f$a;->RUNNING:Lcom/bumptech/glide/d/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/d/f$a;->WAITING_FOR_SIZE:Lcom/bumptech/glide/d/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/d/f$a;->COMPLETE:Lcom/bumptech/glide/d/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/d/f$a;->FAILED:Lcom/bumptech/glide/d/f$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bumptech/glide/d/f$a;->CANCELLED:Lcom/bumptech/glide/d/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bumptech/glide/d/f$a;->CLEARED:Lcom/bumptech/glide/d/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bumptech/glide/d/f$a;->PAUSED:Lcom/bumptech/glide/d/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/d/f$a;->a:[Lcom/bumptech/glide/d/f$a;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/d/f$a;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/bumptech/glide/d/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/f$a;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/d/f$a;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/bumptech/glide/d/f$a;->a:[Lcom/bumptech/glide/d/f$a;

    invoke-virtual {v0}, [Lcom/bumptech/glide/d/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/d/f$a;

    return-object v0
.end method
