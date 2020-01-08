.class public Lcom/meizu/common/util/PopupWindowUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowUtils"

.field private static adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

.field private static clazz:Ljava/lang/Class;

.field private static popLayoutModeClazz:Ljava/lang/Class;

.field private static popUpClazz:Ljava/lang/Class;

.field private static popupLayoutModeClazz:Ljava/lang/Class;

.field private static setContentHeightMethod:Ljava/lang/reflect/Method;

.field private static setLayoutModeMethod:Ljava/lang/reflect/Method;

.field private static setPopupLayoutModeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    .line 18
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    .line 20
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    .line 21
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 24
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->popupLayoutModeClazz:Ljava/lang/Class;

    .line 27
    sput-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustWindowPositionForMz(Ljava/lang/Object;Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popUpClazz:Ljava/lang/Class;

    .line 71
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string v3, "adjustWindowPositionForMz"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    .line 72
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    return v0

    .line 75
    :cond_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 76
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->adjustWindowPositionForMzMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v2, "PopupWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#adjustWindowPositionForMz fail to be invoked.Caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public static setContentHeight(Landroid/widget/ListPopupWindow;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 39
    const-class v2, Landroid/widget/ListPopupWindow;

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    .line 40
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string v3, "setContentHeight"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    .line 41
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setContentHeightMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v2, "PopupWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentHeight fail to be invoked.Caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    goto :goto_0
.end method

.method public static setLayoutMode(Ljava/lang/Object;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 106
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string v3, "setLayoutMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 107
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return v0

    .line 110
    :cond_0
    sget-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sget-object v0, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v2, "PopupWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#setLayoutMode fail to be invoked.Caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setPopupLayoutMode(Ljava/lang/Object;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 135
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->popLayoutModeClazz:Ljava/lang/Class;

    .line 139
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->clazz:Ljava/lang/Class;

    const-string v3, "setPopupLayoutMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    .line 140
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 141
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return v0

    .line 143
    :cond_0
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setLayoutModeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 144
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    sget-object v2, Lcom/meizu/common/util/PopupWindowUtils;->setPopupLayoutModeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v2, "PopupWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popupObject#setPopupLayoutMode fail to be invoked.Caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 153
    goto :goto_0
.end method
