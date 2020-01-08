.class Lcom/meizu/common/widget/PasswordInputView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PasswordInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PasswordInputView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PasswordInputView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {v0}, Lcom/meizu/common/widget/PasswordInputView;->access$000(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {v0}, Lcom/meizu/common/widget/PasswordInputView;->access$100(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {v0}, Lcom/meizu/common/widget/PasswordInputView;->access$100(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
