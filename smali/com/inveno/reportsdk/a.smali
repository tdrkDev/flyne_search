.class public Lcom/inveno/reportsdk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inveno/reportsdk/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/inveno/reportsdk/a;->d:I

    iput v0, p0, Lcom/inveno/reportsdk/a;->e:I

    iput v0, p0, Lcom/inveno/reportsdk/a;->f:I

    iput-object p1, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inveno/reportsdk/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->d:I

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/a;->a:Lcom/inveno/reportsdk/a;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/reportsdk/a;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/reportsdk/a;->a:Lcom/inveno/reportsdk/a;

    :cond_0
    :goto_0
    sget-object v0, Lcom/inveno/reportsdk/a;->a:Lcom/inveno/reportsdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/inveno/reportsdk/a;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/reportsdk/a;->a:Lcom/inveno/reportsdk/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->e:I

    return v0
.end method

.method static synthetic c(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->f:I

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inveno/reportsdk/a;->c()V

    const-string v0, "context is null , relase itself !!!"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/inveno/reportsdk/b;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/b;-><init>(Lcom/inveno/reportsdk/a;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->e:I

    return v0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/inveno/reportsdk/a;->d:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app is Exit !!! inResumCycleActivityNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/reportsdk/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/inveno/reportsdk/a;->e:I

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The app is background !!! inLifeCycleActivityNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/reportsdk/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/i;->d()V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/inveno/reportsdk/a;->e:I

    if-nez v1, :cond_3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app is background !!! inLifeCycleActivityNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/reportsdk/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    sget-boolean v1, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/i;->d()V

    goto :goto_0

    :cond_3
    const-string v1, "The app is alive !!!"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/inveno/reportsdk/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/inveno/reportsdk/a;->e()V

    return-void
.end method

.method static synthetic g(Lcom/inveno/reportsdk/a;)I
    .locals 2

    iget v0, p0, Lcom/inveno/reportsdk/a;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inveno/reportsdk/a;->d:I

    return v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/a;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/inveno/reportsdk/a;->e:I

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_1
    iput-object v2, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    sput-object v2, Lcom/inveno/reportsdk/a;->a:Lcom/inveno/reportsdk/a;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/reportsdk/a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
