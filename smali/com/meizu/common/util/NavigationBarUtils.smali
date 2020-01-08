.class public Lcom/meizu/common/util/NavigationBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DecorViewClsName:Ljava/lang/String;

.field public static MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON:I

.field private static mFiledMeizuFlags:Ljava/lang/reflect/Field;

.field private static mLastBottomInset:Ljava/lang/reflect/Field;

.field private static mLastLeftInset:Ljava/lang/reflect/Field;

.field private static mLastRightInset:Ljava/lang/reflect/Field;

.field private static setForcedNavigationBarColor:Ljava/lang/reflect/Method;

.field private static setNavigationBarIconColor:Ljava/lang/reflect/Method;

.field private static setNavigationBarIconColorExt:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    const/16 v0, 0x100

    sput v0, Lcom/meizu/common/util/NavigationBarUtils;->MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON:I

    .line 25
    const-string v0, "com.android.internal.policy.DecorView"

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->DecorViewClsName:Ljava/lang/String;

    .line 32
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setNavigationBarIconColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColor:Ljava/lang/reflect/Method;

    .line 33
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "meizuFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mFiledMeizuFlags:Ljava/lang/reflect/Field;

    .line 34
    const-class v0, Landroid/view/Window;

    const-string v1, "setForcedNavigationBarColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setForcedNavigationBarColor:Ljava/lang/reflect/Method;

    .line 35
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/meizu/common/util/NavigationBarUtils;->MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON:I

    .line 37
    const-class v0, Landroid/view/Window;

    const-string v1, "setNavigationBarIconColor"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColorExt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->DecorViewClsName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "mLastBottomInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    .line 48
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 51
    :cond_0
    const-string v1, "mLastRightInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    .line 52
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    :cond_1
    const-string v1, "mLastLeftInset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    .line 56
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_2
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1

    .line 42
    :catch_2
    move-exception v0

    goto :goto_0

    .line 40
    :catch_3
    move-exception v0

    goto :goto_0

    .line 38
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBottomNavigationBarWidth(Landroid/app/Activity;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBottomNavigationBarWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 181
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->getBottomNavigationBarWidth(Landroid/app/Activity;)I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLeftNavigationBarWidth(Landroid/app/Activity;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 135
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 136
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeftNavigationBarWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 148
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->getLeftNavigationBarWidth(Landroid/app/Activity;)I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavigationBarColor(Landroid/view/Window;)I
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_2

    .line 233
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 234
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastBottomInset:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 236
    :goto_0
    if-nez v0, :cond_0

    sget-object v3, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 237
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 239
    :cond_0
    if-nez v0, :cond_1

    sget-object v3, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 240
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->mLastLeftInset:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :cond_1
    :goto_1
    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 248
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 253
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 254
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRightNavigationBarHeight(Landroid/app/Activity;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 201
    sget-object v2, Lcom/meizu/common/util/NavigationBarUtils;->mLastRightInset:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRightNavigationBarHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 214
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 215
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->getRightNavigationBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static isDarkIconColor(Landroid/view/Window;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mFiledMeizuFlags:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/NavigationBarUtils;->mFiledMeizuFlags:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 116
    sget v2, Lcom/meizu/common/util/NavigationBarUtils;->MEIZU_FLAG_DARK_NAVIGATION_BAR_ICON:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHaveNavigationBar(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 273
    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHaveNavigationBar(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 282
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 283
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/meizu/common/util/NavigationBarUtils;->isHaveNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDarkIconColor(Landroid/view/Window;Z)V
    .locals 4

    .prologue
    .line 73
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColor:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColor:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDarkIconColor(Landroid/view/Window;ZZ)V
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColorExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarIconColorExt:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lcom/meizu/common/util/NavigationBarUtils;->setDarkIconColor(Landroid/view/Window;Z)V

    goto :goto_0
.end method

.method public static setForcedNavigationBarColor(Landroid/view/Window;Z)V
    .locals 4

    .prologue
    .line 310
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setForcedNavigationBarColor:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/NavigationBarUtils;->setForcedNavigationBarColor:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setNavigationBarColor(Landroid/view/Window;I)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 307
    return-void
.end method

.method public static setNavigationBarColor(Landroid/view/Window;IZ)V
    .locals 0

    .prologue
    .line 297
    invoke-static {p0, p2}, Lcom/meizu/common/util/NavigationBarUtils;->setForcedNavigationBarColor(Landroid/view/Window;Z)V

    .line 298
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 299
    return-void
.end method
