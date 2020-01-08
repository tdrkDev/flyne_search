.class Lcom/meizu/common/widget/DatePickerNativeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$1;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    iput-object p2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$1;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_0
    return-void
.end method
