.class public Lcom/meizu/common/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mIsShowDay:Z

.field private mTimerPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V
    .locals 8

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    .line 175
    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    .line 177
    const/4 v0, -0x1

    sget v1, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    const/4 v1, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    const-string v0, "layout_inflater"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 182
    sget v1, Lcom/meizu/common/R$layout;->mc_date_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 183
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 187
    new-instance v0, Lcom/meizu/common/widget/DatePickerDialog$1;

    invoke-direct {v0, p0, v7}, Lcom/meizu/common/widget/DatePickerDialog$1;-><init>(Lcom/meizu/common/widget/DatePickerDialog;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 201
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->datePicker:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p0

    move v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2, v0, v1, v0}, Lcom/meizu/common/widget/DatePicker;->setTextColor(ILjava/util/List;I)V

    .line 213
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_one_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_two_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 217
    sget v0, Lcom/meizu/common/R$id;->time_preview:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    .line 218
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    .prologue
    .line 137
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 138
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 225
    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 224
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    .line 227
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 7

    .prologue
    .line 230
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 277
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 278
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 279
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 280
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    return-object v0
.end method

.method public setMaxYear(I)V
    .locals 4

    .prologue
    const/16 v0, 0x833

    .line 309
    if-le p1, v0, :cond_0

    move p1, v0

    .line 312
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 313
    const/16 v1, 0xb

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 314
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 315
    return-void
.end method

.method public setMinYear(I)V
    .locals 4

    .prologue
    const/16 v0, 0x76c

    .line 297
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 300
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 301
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 302
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 303
    return-void
.end method

.method public setShowDayColumn(Z)V
    .locals 7

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/DatePicker;->setShowDayColumn(Z)V

    .line 323
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public setTextColor(III)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->setTextColor(III)V

    .line 291
    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePickerDialog;->updateDate(IIIZ)V

    .line 251
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 262
    return-void
.end method
