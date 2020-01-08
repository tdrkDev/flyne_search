.class Lcom/meizu/common/widget/DatePickerNativeDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;->initView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$5;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$5;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$5;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->showLunar(Z)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
