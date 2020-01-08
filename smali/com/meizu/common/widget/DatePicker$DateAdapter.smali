.class Lcom/meizu/common/widget/DatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# static fields
.field static final SET_DAY:I = 0x3

.field static final SET_MONTH:I = 0x2

.field static final SET_YEAR:I = 0x1


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 168
    iput p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 169
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 173
    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/DatePicker;->access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    .line 215
    iget v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$402(Lcom/meizu/common/widget/DatePicker;I)I

    .line 219
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    .line 228
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 229
    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 230
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-static {v3}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v5

    invoke-static {v4, v1, v3, v5}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;III)I

    move-result v1

    .line 233
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3, v2}, Lcom/meizu/common/widget/DatePicker;->access$1202(Lcom/meizu/common/widget/DatePicker;I)I

    .line 234
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(II)V

    .line 235
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    invoke-static {v1, v3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 242
    :goto_1
    add-int/lit8 v1, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 243
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 244
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 245
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePicker;->access$1502(Lcom/meizu/common/widget/DatePicker;I)I

    .line 254
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 255
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 293
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;I)V

    .line 294
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1700(Lcom/meizu/common/widget/DatePicker;I)V

    .line 296
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    .line 298
    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v4

    .line 297
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V

    .line 300
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    if-ne v0, v7, :cond_5

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1900(Lcom/meizu/common/widget/DatePicker;I)V

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 304
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$2000(Lcom/meizu/common/widget/DatePicker;I)V

    goto/16 :goto_0

    .line 238
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DatePicker;->access$1202(Lcom/meizu/common/widget/DatePicker;I)I

    .line 239
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    goto/16 :goto_1

    .line 264
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, p3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 265
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 266
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 268
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePicker;->access$1502(Lcom/meizu/common/widget/DatePicker;I)I

    .line 272
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 273
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 275
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto/16 :goto_2

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    goto/16 :goto_2

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
