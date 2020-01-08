.class public Lcom/meizu/flyme/media/news/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/flyme/media/news/a/j;->a:Z

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/flyme/media/news/a/j;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    const v0, 0x1060016

    invoke-static {p0, v0}, Lcom/meizu/flyme/media/news/a/j;->a(Landroid/app/Activity;I)V

    .line 30
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 7

    .prologue
    const v6, 0x1020002

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-boolean v0, Lcom/meizu/flyme/media/news/a/j;->a:Z

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Lcom/meizu/flyme/media/news/a/j;->a()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/flyme/media/news/a/j;->b:Z

    .line 38
    sput-boolean v4, Lcom/meizu/flyme/media/news/a/j;->a:Z

    .line 40
    :cond_2
    const-string v0, "NewsStatusBarUtils"

    const-string v1, "IsDisableTintStatusBar=%b"

    new-array v2, v5, [Ljava/lang/Object;

    sget-boolean v3, Lcom/meizu/flyme/media/news/a/j;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-boolean v0, Lcom/meizu/flyme/media/news/a/j;->b:Z

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    .line 49
    const/high16 v0, 0xc000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 51
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 53
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 55
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 61
    :cond_4
    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 62
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 65
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 66
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    if-eqz v1, :cond_6

    .line 71
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 74
    :cond_6
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/j;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private static a()Z
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_0
    const-string v1, "flyme.config.FlymeFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    const-string v2, "DISABLE_TINT_STATUA_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
