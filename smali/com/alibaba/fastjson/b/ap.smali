.class public final enum Lcom/alibaba/fastjson/b/ap;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/fastjson/b/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson/b/ap;

.field public static final enum DisableCheckSpecialChar:Lcom/alibaba/fastjson/b/ap;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

.field public static final enum NonDefault:Lcom/alibaba/fastjson/b/ap;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson/b/ap;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson/b/ap;

.field public static final enum QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

.field public static final enum SkipTransientField:Lcom/alibaba/fastjson/b/ap;

.field public static final enum SortField:Lcom/alibaba/fastjson/b/ap;

.field public static final enum UseISO8601DateFormat:Lcom/alibaba/fastjson/b/ap;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteDateUseDateFormat:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

.field public static final enum WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

.field private static final synthetic b:[Lcom/alibaba/fastjson/b/ap;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "QuoteFieldNames"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "UseSingleQuotes"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteMapNullValue"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

    .line 35
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteEnumUsingToString"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteEnumUsingToString:Lcom/alibaba/fastjson/b/ap;

    .line 39
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "UseISO8601DateFormat"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->UseISO8601DateFormat:Lcom/alibaba/fastjson/b/ap;

    .line 43
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteNullListAsEmpty"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteNullStringAsEmpty"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/b/ap;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteNullNumberAsZero"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    .line 55
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteNullBooleanAsFalse"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/b/ap;

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "SkipTransientField"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->SkipTransientField:Lcom/alibaba/fastjson/b/ap;

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "SortField"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->SortField:Lcom/alibaba/fastjson/b/ap;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteTabAsSpecial"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    .line 71
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "PrettyFormat"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    .line 75
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteClassName"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "DisableCircularReferenceDetect"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

    .line 85
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteSlashAsSpecial"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    .line 90
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "BrowserCompatible"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->BrowserCompatible:Lcom/alibaba/fastjson/b/ap;

    .line 95
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "WriteDateUseDateFormat"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/b/ap;

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "NotWriteRootClassName"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->NotWriteRootClassName:Lcom/alibaba/fastjson/b/ap;

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "DisableCheckSpecialChar"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/b/ap;

    .line 110
    new-instance v0, Lcom/alibaba/fastjson/b/ap;

    const-string v1, "NonDefault"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/b/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->NonDefault:Lcom/alibaba/fastjson/b/ap;

    .line 22
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/alibaba/fastjson/b/ap;

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteEnumUsingToString:Lcom/alibaba/fastjson/b/ap;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->UseISO8601DateFormat:Lcom/alibaba/fastjson/b/ap;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->SkipTransientField:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->SortField:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->BrowserCompatible:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->NotWriteRootClassName:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->NonDefault:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/fastjson/b/ap;->b:[Lcom/alibaba/fastjson/b/ap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/ap;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/b/ap;->a:I

    .line 115
    return-void
.end method

.method public static a(ILcom/alibaba/fastjson/b/ap;)Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/b/ap;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/fastjson/b/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/ap;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/b/ap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->b:[Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/b/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/b/ap;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/fastjson/b/ap;->a:I

    return v0
.end method
