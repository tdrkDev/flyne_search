.class public Lcom/meizu/common/widget/LoadingAlertDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private mApplyContentLayout:Landroid/widget/LinearLayout;

.field private mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimationView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->create()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelDialog()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->cancel()V

    .line 70
    return-void
.end method

.method public hideDialog()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->hide()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 36
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 37
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_loading_alert:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    sget v0, Lcom/meizu/common/R$layout;->loading_alert_dialog:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->setContentView(I)V

    .line 40
    sget v0, Lcom/meizu/common/R$id;->rootLayout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/meizu/common/R$id;->applyAnimView:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LoadingAnimationView;

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimationView;

    .line 43
    sget v0, Lcom/meizu/common/R$id;->applyAnimTitle:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->setCancelable(Z)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LoadingAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->show()V

    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    return-void
.end method
