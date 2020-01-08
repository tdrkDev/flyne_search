.class public Lcom/meizu/common/widget/PasswordInputView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mClearImage:Landroid/widget/ImageView;

.field private mClearLayout:Landroid/widget/LinearLayout;

.field private mInputText:Landroid/widget/EditText;

.field private mPasswordBtn:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/meizu/common/widget/PasswordInputView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mClearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getInflateLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/PasswordInputView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInflateLayoutResource()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/meizu/common/R$layout;->mc_layout_password_input:I

    return v0
.end method

.method protected handleCheckChange(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 115
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getChildCount()I

    move-result v3

    .line 51
    if-lez v3, :cond_2

    .line 52
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 53
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PasswordInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 56
    :cond_1
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 57
    sget v1, Lcom/meizu/common/R$id;->mz_password_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    .line 58
    sget v1, Lcom/meizu/common/R$id;->mz_input_clear_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mClearLayout:Landroid/widget/LinearLayout;

    .line 59
    sget v1, Lcom/meizu/common/R$id;->mz_icon_input_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mClearImage:Landroid/widget/ImageView;

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/meizu/common/widget/PasswordInputView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PasswordInputView$1;-><init>(Lcom/meizu/common/widget/PasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/common/widget/PasswordInputView$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PasswordInputView$2;-><init>(Lcom/meizu/common/widget/PasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mClearImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/common/widget/PasswordInputView$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PasswordInputView$3;-><init>(Lcom/meizu/common/widget/PasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_5
    return-void
.end method
