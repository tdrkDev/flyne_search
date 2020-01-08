.class public Lcom/meizu/common/widget/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;,
        Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 108
    iput-object p3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    .line 109
    iput p4, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    .line 110
    iput p5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    .line 111
    iput-boolean p6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    .line 113
    const/4 v0, -0x1

    sget v2, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;

    invoke-direct {v3, p0, v1}, Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;-><init>(Lcom/meizu/common/widget/TimePickerDialog;Lcom/meizu/common/widget/TimePickerDialog$1;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    const/4 v2, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    const-string v0, "layout_inflater"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    sget v2, Lcom/meizu/common/R$layout;->mc_time_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    .line 123
    new-instance v1, Lcom/meizu/common/widget/TimePickerDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/widget/TimePickerDialog$1;-><init>(Lcom/meizu/common/widget/TimePickerDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 136
    :cond_0
    sget v1, Lcom/meizu/common/R$id;->timePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/TimePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget-boolean v1, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v1, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v1, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/TimePicker;->setOnTimeChangedListener(Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;)V

    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setIsDrawLine(Z)V

    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_time_picker_line_one_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_time_picker_line_two_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->setLineHeight(II)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    .prologue
    .line 92
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePicker;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    return-object v0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 194
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 195
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 196
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    const-string v1, "hour"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "minute"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-object v0
.end method

.method public onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setTextColor(III)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/TimePicker;->setTextColor(III)V

    .line 207
    return-void
.end method

.method public updateTime(II)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 173
    return-void
.end method
