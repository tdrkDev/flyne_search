.class public Lcom/meizu/common/util/CommonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME_BUILD_EXT:Ljava/lang/String; = "android.os.BuildExt"

.field private static final CLASS_NAME_FLYME_FEATURE:Ljava/lang/String; = "flyme.config.FlymeFeature"

.field private static final FIELD_FINGERPRINT_KEY:Ljava/lang/String; = "SHELL_FINGERPRINT_KEY"

.field private static final METHOD_PRODUCT_INTERNATIONAL:Ljava/lang/String; = "isProductInternational"

.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static isFlymeOS:Ljava/lang/Boolean;

.field private static isFlymeOS4:Ljava/lang/Boolean;

.field private static mMethodGetString:Ljava/lang/reflect/Method;

.field private static sBuildExtCls:Ljava/lang/Class;

.field private static sFlymeFeatureCls:Ljava/lang/Class;

.field private static sIsFlymeRom:Ljava/lang/Boolean;

.field private static sIsProductInternationalMethod:Ljava/lang/reflect/Method;

.field private static sShellFingerprintKeyField:Ljava/lang/reflect/Field;

.field private static scrollBarDrawableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static scrollBarField:Ljava/lang/reflect/Field;

.field private static scrollCacheField:Ljava/lang/reflect/Field;

.field private static scrollCacheFieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static setVerticalThumbDrawableMethod:Ljava/lang/reflect/Method;

.field private static shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

.field private static viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    .line 34
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    .line 35
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    .line 45
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    .line 46
    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PreferenceActivity_setActionBarToTop(Landroid/preference/PreferenceActivity;Z)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public static TextView_setEmojiAlphaEnabled(Landroid/widget/TextView;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :try_start_0
    const-string v2, "android.widget.TextView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setEmojiAlphaEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 159
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v0, "CommonUtils"

    const-string v2, "TextView.setEmojiAlphaEnabled fail to be invoked!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public static TextView_startSelectionActionMode(Landroid/widget/TextView;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    const-string v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "startSelectionActionMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 178
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 179
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v0, "CommonUtils"

    const-string v2, "TextView.startSelectionActionMode fail to be invoked!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public static getShowNavigationBarValue(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_show_navigation_bar"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    return v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    :try_start_0
    const-class v0, Landroid/os/Build;

    .line 111
    sget-object v2, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 112
    const-string v2, "getString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    .line 113
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    :cond_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 118
    goto :goto_0
.end method

.method private static hasFlymeFeature()Z
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 319
    const-string v1, "flyme.config.FlymeFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    const-string v2, "SHELL_HAPTICFEEDBACK_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 322
    :cond_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 326
    :goto_0
    return v0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasFullDisplay()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 261
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 262
    const-string v1, "flyme.config.FlymeFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    .line 264
    :cond_0
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 265
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    const-string v2, "SHELL_FINGERPRINT_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    .line 267
    :cond_1
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 276
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v1, v0

    .line 274
    goto :goto_0

    .line 270
    :catch_1
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    move v1, v0

    .line 274
    goto :goto_0

    .line 272
    :catch_2
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v1, v0

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isFlymeOS()Z
    .locals 1

    .prologue
    .line 65
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4()Z

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    .line 73
    :goto_1
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlymeOS4()Z
    .locals 3

    .prologue
    .line 86
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 88
    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 89
    const-string v1, "ro.build.description"

    invoke-static {v1}, Lcom/meizu/common/util/CommonUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "Flyme OS 4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    const-string v0, ".*"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    .line 96
    :goto_1
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlymeRom()Z
    .locals 6

    .prologue
    .line 212
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "ro.meizu.rom.config"

    .line 215
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 216
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "unknown"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 220
    :cond_1
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "CommonUtils"

    const-string v2, "CommonUtil.isFlymeRom() fail to be invoked!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isProductInternational()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "android.os.BuildExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    .line 241
    :cond_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    const-string v2, "isProductInternational"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 245
    :cond_1
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public static isShowNavigationBar(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 298
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 299
    :goto_0
    invoke-static {p0, v0}, Lcom/meizu/common/util/CommonUtils;->getShowNavigationBarValue(Landroid/content/Context;I)I

    move-result v0

    .line 300
    if-ne v0, v2, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0

    :cond_2
    move v2, v1

    .line 300
    goto :goto_1
.end method

.method public static setDarkStatusBarIcon(Landroid/view/Window;Z)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public static setScrollBarThumbVertical(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 331
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->viewClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 332
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->viewClass:Ljava/lang/Class;

    .line 334
    :cond_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 335
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->viewClass:Ljava/lang/Class;

    const-string v1, "mScrollCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    .line 336
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 339
    :cond_1
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheFieldClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 340
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheFieldClass:Ljava/lang/Class;

    .line 342
    :cond_2
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    .line 343
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollCacheFieldClass:Ljava/lang/Class;

    const-string v1, "scrollBar"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarField:Ljava/lang/reflect/Field;

    .line 344
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 347
    :cond_3
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarDrawableClass:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 348
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarDrawableClass:Ljava/lang/Class;

    .line 350
    :cond_4
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->setVerticalThumbDrawableMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    .line 351
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->scrollBarDrawableClass:Ljava/lang/Class;

    const-string v1, "setVerticalThumbDrawable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->setVerticalThumbDrawableMethod:Ljava/lang/reflect/Method;

    .line 354
    :cond_5
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->setVerticalThumbDrawableMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/common/util/CommonUtils;->scrollBarField:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/meizu/common/util/CommonUtils;->scrollCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static shakeForFlymeFeature(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFlymeFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/16 v0, 0x4e98

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method public createSpannableStringBuilder(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x0

    .line 196
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 197
    if-eqz p1, :cond_0

    .line 198
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 199
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 198
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 200
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 203
    :cond_0
    return-object v0
.end method
