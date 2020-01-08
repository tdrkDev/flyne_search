.class public Lcom/meizu/common/widget/CustomDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "CustomDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private isShowLunar:Z

.field private final mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mDuration:J

.field private mIsLayoutRtl:Z

.field private mIsShowDay:Z

.field private mShowGregorianStr:Ljava/lang/String;

.field private mShowLunarStr:Ljava/lang/String;

.field private mSwitchLunarShow:Landroid/widget/TextView;

.field private mTimerPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    .line 102
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    .line 105
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->isShowLunar:Z

    .line 149
    iput-object p3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    .line 151
    const/4 v0, -0x1

    sget v2, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    const/4 v2, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    const-string v0, "layout_inflater"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 158
    sget v2, Lcom/meizu/common/R$layout;->mc_custom_date_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 160
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setView(Landroid/view/View;)V

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 164
    new-instance v0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;

    invoke-direct {v0, p0, v6}, Lcom/meizu/common/widget/CustomDatePickerDialog$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 178
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->datePicker:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 182
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_one_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_two_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_custom_date_time_show_lunar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mShowLunarStr:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_custom_date_time_show_gregorian:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mShowGregorianStr:Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1, v6}, Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 7

    .prologue
    .line 133
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->isShowLunar:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->isShowLunar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->updateTxtSwitchLunar()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    return-wide v0
.end method

.method private initTabView(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 209
    sget v0, Lcom/meizu/common/R$id;->switchshowlunar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mSwitchLunarShow:Landroid/widget/TextView;

    .line 210
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->updateTxtSwitchLunar()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_picker_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 223
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3, v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setTextColor(ILjava/util/List;I)V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mSwitchLunarShow:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$2;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/meizu/common/R$id;->time_preview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    .line 245
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method private updateTxtSwitchLunar()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->isShowLunar:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mSwitchLunarShow:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mShowGregorianStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mSwitchLunarShow:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mShowLunarStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 267
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 268
    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 267
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 7

    .prologue
    .line 273
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 309
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 310
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 312
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    return-object v0
.end method

.method public setLunar(ZZ)V
    .locals 7

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 200
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->isShowLunar:Z

    .line 201
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/DatePicker;->setLunar(ZZ)V

    .line 202
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->updateTxtSwitchLunar()V

    .line 203
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setMaxYear(I)V
    .locals 4

    .prologue
    const/16 v0, 0x833

    .line 330
    if-le p1, v0, :cond_0

    move p1, v0

    .line 333
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 334
    const/16 v1, 0xb

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 335
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 336
    return-void
.end method

.method public setMinYear(I)V
    .locals 4

    .prologue
    const/16 v0, 0x76c

    .line 318
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 321
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 323
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 324
    return-void
.end method

.method public setShowDayColumn(Z)V
    .locals 7

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    .line 343
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setShowDayColumn(Z)V

    .line 344
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->updateDate(III)V

    .line 294
    return-void
.end method
