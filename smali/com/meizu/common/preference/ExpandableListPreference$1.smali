.class Lcom/meizu/common/preference/ExpandableListPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/ExpandableListPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->iSAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$000(Lcom/meizu/common/preference/ExpandableListPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$100(Lcom/meizu/common/preference/ExpandableListPreference;)Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->setSelectedPosition(I)V

    .line 113
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$100(Lcom/meizu/common/preference/ExpandableListPreference;)Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->notifyDataSetChanged()V

    .line 114
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$200(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$200(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference;->access$400(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v2}, Lcom/meizu/common/preference/ExpandableListPreference;->access$300(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v2}, Lcom/meizu/common/preference/ExpandableListPreference;->access$300(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v1, v2}, Lcom/meizu/common/preference/ExpandableListPreference;->access$500(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v1, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$600(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-virtual {v1, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->access$800(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$1;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference;->access$700(Lcom/meizu/common/preference/ExpandableListPreference;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
