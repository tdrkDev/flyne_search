.class public Lcom/meizu/common/widget/CompleteToast;
.super Landroid/widget/Toast;
.source "SourceFile"


# instance fields
.field private mToastImage:Landroid/widget/ImageView;

.field private mToastText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p2, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 57
    sget v0, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 59
    iget-object v3, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v0}, Lcom/meizu/common/widget/CompleteToast;->isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Lcom/meizu/common/R$layout;->mz_long_text_toast_layout:I

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 64
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    .line 66
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v4, v4}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 42
    sget v0, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/common/widget/CompleteToast;->isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget v0, Lcom/meizu/common/R$layout;->mz_long_text_toast_layout:I

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 49
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    .line 51
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3, v3}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 72
    sget v0, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/common/widget/CompleteToast;->isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget v0, Lcom/meizu/common/R$layout;->mz_long_text_toast_layout:I

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 79
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    .line 82
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3, v3}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method private isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/meizu/common/widget/CompleteToast;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_complete_toast_text_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    if-le v1, v2, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/meizu/common/widget/CompleteToast;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 123
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/common/widget/CompleteToast;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 117
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Lcom/meizu/common/widget/CompleteToast;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v0, p3}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 129
    return-object v0
.end method
