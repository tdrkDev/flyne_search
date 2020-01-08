.class public Lcom/inveno/basics/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/widget/RelativeLayout;

.field private static b:Landroid/widget/Toast;


# direct methods
.method private static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/inveno/basics/c/e;->b:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 46
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/inveno/se/tools/Tools;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 49
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/basics/c/e;->b:Landroid/widget/Toast;

    .line 51
    :cond_1
    sget-object v0, Lcom/inveno/basics/c/e;->b:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 52
    sget-object v0, Lcom/inveno/basics/c/e;->b:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 53
    sget-object v0, Lcom/inveno/basics/c/e;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/inveno/basics/c/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 36
    sget v0, Lcom/inveno/basics/R$id;->toast_tv:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    sget v1, Lcom/inveno/basics/R$id;->rl_toast_layout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/inveno/basics/c/e;->a:Landroid/widget/RelativeLayout;

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {p0, v2}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    return-void
.end method
