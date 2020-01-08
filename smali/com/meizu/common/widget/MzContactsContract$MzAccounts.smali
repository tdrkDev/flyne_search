.class public final Lcom/meizu/common/widget/MzContactsContract$MzAccounts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzAccounts"
.end annotation


# static fields
.field public static final DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

.field private static final DEVICES_ONLY_ACCOUNT_NAME:Ljava/lang/String; = "DeviceOnly"

.field private static final DEVICES_ONLY_ACCOUNT_TYPE:Ljava/lang/String; = "DeviceOnly"

.field public static final FLYME_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.account"

.field public static final SINA_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.sns.sina"

.field public static final VENDER_ACCOUNT:Landroid/accounts/Account;

.field private static final VENDER_ACCOUNT_NAME:Ljava/lang/String; = "account.vender"

.field public static final VENDER_ACCOUNT_TYPE:Ljava/lang/String; = "account.vender"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 910
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "DeviceOnly"

    const-string v2, "DeviceOnly"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    .line 915
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "account.vender"

    const-string v2, "account.vender"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzAccounts;->VENDER_ACCOUNT:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    return-void
.end method

.method public static addDeviceOnlyAccount([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 919
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Landroid/accounts/Account;

    .line 920
    sget-object v1, Lcom/meizu/common/widget/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    aput-object v1, v3, v0

    .line 921
    const/4 v1, 0x1

    .line 922
    array-length v4, p0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p0, v0

    .line 923
    add-int/lit8 v2, v1, 0x1

    aput-object v5, v3, v1

    .line 922
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 925
    :cond_0
    return-object v3
.end method

.method public static isFlymeAccount(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 929
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.meizu.account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
