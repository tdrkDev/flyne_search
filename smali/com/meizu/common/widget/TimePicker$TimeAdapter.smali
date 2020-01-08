.class Lcom/meizu/common/widget/TimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# static fields
.field static final SET_AMPM:I = 0x3

.field static final SET_HOUR:I = 0x1

.field static final SET_MIN:I = 0x2


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePicker;I)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 117
    iput p2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 118
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 149
    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 157
    :pswitch_2
    if-nez p1, :cond_3

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$600(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 121
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$002(Lcom/meizu/common/widget/TimePicker;I)I

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    .line 137
    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 136
    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/TimePicker;->access$400(Lcom/meizu/common/widget/TimePicker;I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$102(Lcom/meizu/common/widget/TimePicker;I)I

    goto :goto_1

    .line 129
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/meizu/common/widget/TimePicker;->access$202(Lcom/meizu/common/widget/TimePicker;Z)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
