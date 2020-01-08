.class Lcom/meizu/common/preference/EditTextPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/EditTextPreference;->initEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/EditTextPreference;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    .line 164
    invoke-static {v0}, Lcom/meizu/common/preference/EditTextPreference;->access$000(Lcom/meizu/common/preference/EditTextPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    .line 165
    invoke-static {v0}, Lcom/meizu/common/preference/EditTextPreference;->access$100(Lcom/meizu/common/preference/EditTextPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/EditTextPreference;->access$100(Lcom/meizu/common/preference/EditTextPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
