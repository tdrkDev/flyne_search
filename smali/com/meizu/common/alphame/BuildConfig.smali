.class public final Lcom/meizu/common/alphame/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.meizu.common.alphame"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CARRIER:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0xf4628

.field public static final VERSION_NAME:Ljava/lang/String; = "1.1.0"

.field public static final isChinaMobile:Z

.field public static final isChinaTelecom:Z

.field public static final isChinaUnicom:Z

.field public static final isInternational:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/alphame/BuildConfig;->CARRIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
