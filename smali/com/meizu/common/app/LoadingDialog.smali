.class public Lcom/meizu/common/app/LoadingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private isCancelable:Z

.field private mAnimationViewVisibility:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDimAmount:F

.field private mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/meizu/common/R$style;->LoadingDialogTheme:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    .line 32
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mAnimationViewVisibility:I

    .line 46
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_loading_alert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/meizu/common/R$id;->rootLayout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/meizu/common/R$id;->applyAnimView:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/SwimmingAnimationView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

    .line 107
    sget v0, Lcom/meizu/common/R$id;->applyAnimTitle:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->updateMessageView()V

    .line 109
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->updateAnimationView()V

    .line 110
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/LoadingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/LoadingDialog;->setCancelable(Z)V

    .line 63
    invoke-virtual {v0, p4}, Lcom/meizu/common/app/LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    invoke-virtual {v0}, Lcom/meizu/common/app/LoadingDialog;->show()V

    .line 65
    return-object v0
.end method

.method private updateAnimationView()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mAnimationViewVisibility:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SwimmingAnimationView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMessageView()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public isCancelable()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    .line 72
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/Object;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v1

    const-string v2, "statusBarColor"

    invoke-interface {v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->field(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectField;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectField;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    sget v0, Lcom/meizu/common/R$layout;->loading_alert_dialog:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->initView()V

    .line 88
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "LoadingDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusBarColor set failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 93
    const-string v0, "LoadingDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SwimmingAnimationView;->startAnimator()V

    .line 95
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 100
    const-string v0, "LoadingDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SwimmingAnimationView;->stopAnimator()V

    .line 102
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setBarBackground(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public setBarForeground(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    iput-boolean p1, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    .line 154
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1

    .prologue
    .line 164
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    .line 165
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    .line 168
    :cond_0
    return-void
.end method

.method public setLoadingAnimationViewVisibility(I)V
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mAnimationViewVisibility:I

    .line 196
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->updateAnimationView()V

    .line 197
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    .line 138
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->updateMessageView()V

    .line 139
    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 142
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    .line 143
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->updateMessageView()V

    .line 144
    return-void
.end method

.method public setMessageTextColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessageTextColor(I)V

    .line 148
    return-void
.end method
