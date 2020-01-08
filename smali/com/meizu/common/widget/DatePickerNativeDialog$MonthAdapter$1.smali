.class Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/datetimepicker/date/MonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Lcom/meizu/common/datetimepicker/date/MonthView;Lcom/meizu/common/datetimepicker/date/CalendarDay;)V
    .locals 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-virtual {p2}, Lcom/meizu/common/datetimepicker/date/CalendarDay;->getYear()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1402(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I

    .line 745
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-virtual {p2}, Lcom/meizu/common/datetimepicker/date/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1502(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I

    .line 746
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-virtual {p2}, Lcom/meizu/common/datetimepicker/date/CalendarDay;->getDay()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1602(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I

    .line 747
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v1, v1, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1400(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v2, v2, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1500(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v3, v3, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1600(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1800(Lcom/meizu/common/widget/DatePickerNativeDialog;III)V

    .line 748
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;->this$1:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->notifyDataSetChanged()V

    .line 749
    return-void
.end method
